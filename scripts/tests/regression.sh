#!/usr/bin/env bash
set -euo pipefail

repo_root=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd -P)
tmp=$(mktemp -d "${TMPDIR:-/tmp}/marketplace-script-tests.XXXXXXXX")
trap 'rm -rf -- "$tmp"' EXIT
mkdir -p "$tmp/scripts" "$tmp/bin"
cp "$repo_root/scripts/archive-old-posts.sh" "$repo_root/scripts/build-hugo-with-recovery.sh" "$tmp/scripts/"

# The fake clock makes archive boundaries deterministic without modifying production code.
cat > "$tmp/bin/python3" <<'EOF'
#!/usr/bin/env bash
set -eu
case "$2" in
    *"relativedelta(months=$EXPECTED_MONTHS)"*) printf '%s\n' "$CUTOFF_DATE" ;;
    *) echo "Unexpected archive interval" >&2; exit 1 ;;
esac
EOF

cat > "$tmp/bin/hugo" <<'EOF'
#!/usr/bin/env bash
set -eu
count=0
[[ ! -f hugo-calls ]] || read -r count < hugo-calls
count=$((count + 1))
echo "$count" > hugo-calls
case "$HUGO_MODE" in
    clean) exit 0 ;;
    recover)
        file="$PWD/content/posts/broken.md"
        [[ -f "$file" ]] || exit 0
        ;;
    missing) file="$PWD/content/posts/missing.md" ;;
    exhausted) file="$PWD/content/posts/broken-$count.md" ;;
    unrecognized) echo 'Error: configuration failed'; exit 1 ;;
    *) echo "Unknown fake Hugo mode" >&2; exit 1 ;;
esac
printf 'Error: error building site: assemble: "%s:78:23": shortcode has no name\n' "$file"
exit 1
EOF

for command in gh git curl wget; do
    cat > "$tmp/bin/$command" <<'EOF'
#!/usr/bin/env bash
echo "Unexpected network or git command: $0" >&2
exit 99
EOF
done
chmod +x "$tmp/bin/"*
export PATH="$tmp/bin:$PATH"

fail() { echo "FAIL: $*" >&2; exit 1; }

run_expect() {
    local expected=$1
    shift
    local status=0
    "$@" > output.log 2>&1 || status=$?
    if [[ $status -ne $expected ]]; then
        cat output.log >&2
        fail "expected exit $expected, got $status: $*"
    fi
}

new_case() {
    mkdir -p "$tmp/$1/content/posts"
    cd "$tmp/$1"
}

new_case archive-invalid
mkdir -p content/posts/2025/01
echo sentinel > content/posts/2025/01/post.md
for value in 0 -1 1.5 invalid; do
    run_expect 1 env ARCHIVE_MONTHS="$value" bash "$tmp/scripts/archive-old-posts.sh"
    grep -q 'must be a positive integer' output.log || fail "missing invalid-input error for $value"
    [[ -f content/posts/2025/01/post.md ]] || fail "invalid input changed fixture: $value"
done

new_case archive-missing
rmdir content/posts
run_expect 1 env ARCHIVE_MONTHS=3 bash "$tmp/scripts/archive-old-posts.sh"
grep -q 'Posts directory not found' output.log || fail 'missing directory error not reported'

new_case archive-boundaries
for directory in 2025/12 2026/08 2026/09 2026/10 2026/not-a-month 2027/01 not-a-year/01; do
    mkdir -p "content/posts/$directory"
    echo fixture > "content/posts/$directory/post.md"
done
run_expect 0 env -u ARCHIVE_MONTHS EXPECTED_MONTHS=3 CUTOFF_DATE=2026-09-15 bash "$tmp/scripts/archive-old-posts.sh"
for directory in 2025 2026/08; do
    [[ ! -e "content/posts/$directory" ]] || fail "old bucket retained: $directory"
done
for directory in 2026/09 2026/10 2026/not-a-month 2027/01 not-a-year/01; do
    [[ -f "content/posts/$directory/post.md" ]] || fail "bucket incorrectly removed: $directory"
done
grep -q 'Total posts removed: 2' output.log || fail 'incorrect archive count'
run_expect 0 env -u ARCHIVE_MONTHS EXPECTED_MONTHS=3 CUTOFF_DATE=2026-09-15 bash "$tmp/scripts/archive-old-posts.sh"
[[ -f content/posts/2026/09/post.md ]] || fail 'repeat run removed cutoff month'
run_expect 0 env ARCHIVE_MONTHS=1 EXPECTED_MONTHS=1 CUTOFF_DATE=2026-10-15 bash "$tmp/scripts/archive-old-posts.sh"
[[ ! -e content/posts/2026/09 && -f content/posts/2026/10/post.md ]] || fail 'custom cutoff boundary'

new_case hugo-clean
echo good > content/posts/good.md
run_expect 0 env HUGO_MODE=clean bash "$tmp/scripts/build-hugo-with-recovery.sh" https://example.invalid/
[[ -f content/posts/good.md && ! -s failed-files.log ]] || fail 'clean build changed fixture'
[[ $(<hugo-calls) == 1 ]] || fail 'clean build retried'

new_case hugo-recovered
echo broken > content/posts/broken.md
echo good > content/posts/good.md
run_expect 2 env HUGO_MODE=recover bash "$tmp/scripts/build-hugo-with-recovery.sh" https://example.invalid/
[[ ! -e content/posts/broken.md && -f failed-posts-backup/broken.md && -f content/posts/good.md ]] || fail 'recovery did not isolate broken post'
grep -Fxq 'content/posts/broken.md|78:23|shortcode has no name' failed-files.log || fail 'recovery log missing error details'
[[ $(<hugo-calls) == 2 ]] || fail 'recovered build did not retry once'

new_case hugo-unrecognized
echo good > content/posts/good.md
run_expect 1 env HUGO_MODE=unrecognized bash "$tmp/scripts/build-hugo-with-recovery.sh" https://example.invalid/
[[ -f content/posts/good.md && ! -s failed-files.log ]] || fail 'unrecognized failure changed fixture'

new_case hugo-missing
run_expect 1 env HUGO_MODE=missing bash "$tmp/scripts/build-hugo-with-recovery.sh" https://example.invalid/
grep -q 'File does not exist' output.log || fail 'missing failed-file error not reported'
[[ ! -s failed-files.log ]] || fail 'missing file was logged as moved'

new_case hugo-exhausted
for n in {1..10}; do echo broken > "content/posts/broken-$n.md"; done
run_expect 1 env HUGO_MODE=exhausted bash "$tmp/scripts/build-hugo-with-recovery.sh" https://example.invalid/
[[ $(<hugo-calls) == 10 && $(wc -l < failed-files.log) -eq 10 ]] || fail 'retry limit or failure log incorrect'
grep -q 'Failed to build after 10 attempts' output.log || fail 'retry exhaustion not reported'

echo 'Offline archive and Hugo recovery regressions passed.'
