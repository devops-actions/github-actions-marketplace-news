#!/bin/bash

# Pre-build fixer for Hugo markdown content.
# Escapes shortcode-like syntax with invalid names so Hugo's parser can proceed.
#
# Hugo shortcode names must start with [a-zA-Z0-9_-]. Content imported from
# external sources sometimes includes patterns like {{< … >}} (documentation
# examples) where the "name" is a non-ASCII character. Hugo attempts to parse
# these and fails with "unrecognized character in shortcode action".
#
# Fix: wrap with Hugo comment markers ({{</* ... */>}}) so Hugo skips parsing
# while still rendering the literal text in the output.
#
# Usage: ./scripts/fix-hugo-content.sh [content-dir]
# Exit:  0 = no changes needed, 2 = one or more files were fixed

CONTENT_DIR="${1:-content}"
fixed_files=0
total_files=0

echo "🔍 Scanning Hugo content for fixable shortcode issues..."

while IFS= read -r -d '' file; do
    total_files=$((total_files + 1))

    cp "$file" "$file.bak"

    # Escape {{< ... >}} and {{% ... %}} patterns whose "shortcode name" is invalid.
    # A valid Hugo shortcode name starts with [a-zA-Z0-9_-].  If the first
    # non-space character after {{< is not in that set, Hugo will reject it.
    # We escape such patterns with comment markers so Hugo skips them.
    #
    # Lookahead (?!\/\*) prevents double-escaping already-fixed content.
    perl -0777 -i -pe '
        # {{< INVALID ... >}} → {{</* INVALID ... */>}}
        s/\{\{<(?!\/\*)(\s*[^\sa-zA-Z0-9_\-](?:(?!>\}\}).)*?)>\}\}/{{<\/* $1 *\/>}}/g;
        # {{% INVALID ... %}} → {{%/* INVALID ... */%}}
        s/\{\{%(?!\/\*)(\s*[^\sa-zA-Z0-9_\-](?:(?!%\}\}).)*?)%\}\}/{{%\/* $1 *\/%}}/g;
    ' "$file"

    if ! diff -q "$file.bak" "$file" > /dev/null 2>&1; then
        changes=$(diff "$file.bak" "$file" | grep -c "^[<>]" || true)
        echo "  ✅ Fixed $changes pattern(s) in: $file"
        fixed_files=$((fixed_files + 1))
    fi
    rm -f "$file.bak"
done < <(find "$CONTENT_DIR" -name "*.md" -print0)

echo ""
if [ "$fixed_files" -eq 0 ]; then
    echo "✅ Scanned $total_files files — no issues found"
    exit 0
else
    echo "✅ Scanned $total_files files — fixed $fixed_files file(s)"
    exit 2
fi
