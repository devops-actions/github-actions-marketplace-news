---
title: compose-lint
date: 2026-08-14 22:19:54 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.18.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The **compose-lint** GitHub Action performs security-focused linting on Docker Compose files to detect and auto-fix dangerous misconfigurations before they reach production. It covers issues such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more. The tool helps ensure better security practices by automating static-analysis checks and providing detailed explanations of findings for quick remediation.
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.18.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

The **compose-lint** GitHub Action performs security-focused linting on Docker Compose files to detect and auto-fix dangerous misconfigurations before they reach production. It covers issues such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more. The tool helps ensure better security practices by automating static-analysis checks and providing detailed explanations of findings for quick remediation.

## What's Changed


### Upgrading

**A file compose-lint cannot fully see is now an error (exit 2), not a pass.**
`include:` and cross-file `extends: {file: ...}` reference services in other
files, and compose-lint reads single files without following them — so those
services were never linted. The gap was reported on stderr for `include:` and
not at all for `extends:`, while the verdict, exit code, JSON `errors` and SARIF
`executionSuccessful` all said the run was clean. A base carrying
`privileged: true` and `network_mode: host` could sit unlinted behind a green
check.

Measured over the 5,417-file corpus: **31 files (0.6%) change exit code — 20
from pass to error, 11 from fail to error.** Findings for the local services are
still reported; the file is graded on what could be seen *and* the gap is
recorded.

```bash
# Cover everything by linting the merged output (compose-lint reads files,
# not stdin, so write it out first):
docker compose config > merged.yml && compose-lint merged.yml

# Or accept the gap and grade only what is visible:
compose-lint --allow-partial-coverage docker-compose.yml
```

`fix` reports gaps but never fails on them — it is not the merge gate.

**Rules now grade `${VAR:-default}` as the value it deploys, so files that
passed may now fail.** With no `.env` and the variable unset, Compose ships the
default — `privileged: ${P:-true}` deploys `privileged: true` — but only bind
sources were being resolved, so every other rule compared its dangerous-value
set against the literal text `"${P:-true}"` and found no match. Writing a
dangerous value in interpolated form was a general-purpose bypass of twelve
rules.

Measured over the 5,417-file corpus: **286 files (5.3%) change findings, and
100 (1.8%) go from pass to fail at the default `--fail-on high`.** One file
goes the other way.

| Trigger | before | after |
|---|---|---|
| `POSTGRES_PASSWORD: ${PW:-hunter2}` | *none* | **CL-0020** high |
| `DATABASE_URL: postgres://${U:-u}:${P:-p}@db` | *none* | **CL-0021** high |
| `image: nginx:${TAG:-latest}` | CL-0019 medium | **CL-0004** medium |
| `ports: ["${BIND:-0.0.0.0}:80:80"]` | *none* | **CL-0005** medium |
| `user: "${UID:-0}:${GID:-0}"` | *none* | **CL-0018** medium |
| `mem_limit: "${MEM:-0}m"` | *none* | **CL-0026** medium |
| `privileged: ${P:-true}` | *none* | **CL-0002** critical |

The `image:` row is a reclassification, not a new failure: CL-0004 replaces
CL-0019 at the same location and severity, because the tag resolves to the
mutable `latest` rather than to an opaque `${TAG}`.

Two changes go the other way and **remove** findings, both fixing false
positives: a port whose default binds loopback (`"${PORT:-127.0.0.1:80}:80"`)
no longer trips CL-0005, and an empty placeholder in a list-form entry
(`- API_KEY=""`) no longer trips CL-0020 — the mapping form `API_KEY: ""` was
already exempt.

If a finding is genuinely parameterized in your deployment, that is what
`.compose-lint.yml` suppressions are for. Writing the reference without a
default (`${PW}` rather than `${PW:-hunter2}`) also stays exempt, because
Compose then ships nothing.

### Changed

- **Coverage gaps are reported on every channel a consumer reads.** An
  unresolved `include:` or cross-file `extends: {file: ...}` now produces a JSON
  `errors[]` entry, a SARIF `toolExecutionNotifications` record with
  `executionSuccessful: false`, and exit 2 — previously a stderr warning for
  `include:` and complete silence for `extends:`. `parser.coverage_gaps(data)`
  exposes the same list to library callers. The text verdict counts them
  separately from parse failures, because those files parsed fine and saying
  otherwise would misdescribe the run. See **Upgrading** above.
- **New `--allow-partial-coverage` flag on `check`** to accept a coverage gap
  and grade what is visible. It waives the gap, not the findings: a local
  CRITICAL still fails the gate.
- **`${VAR:-default}` is resolved document-wide before rules run.** The parser
  normalizes every string leaf to the value Compose ships when the variable is
  unset, so a rule classifies the deployed configuration instead of the source
  text. Substitution had been wired into one call site (bind sources), leaving
  CL-0002, CL-0004, CL-0005, CL-0008, CL-0009, CL-0010, CL-0011, CL-0014,
  CL-0016, CL-0018, CL-0020, CL-0021, CL-0022, CL-0024, CL-0026 and the
  capability rules grading a string that is never deployed. Doing it once in the
  parser is what keeps it from being re-litigated per rule: a rule that adds a
  dangerous literal to its set gets the interpolated spellings for free. See
  **Upgrading** above for the measured impact. A reference with no default is
  still left as written — Compose ships nothing for it, so there is nothing to
  grade.
- **The credential rules' interpolation exemption is stated as what Compose
  does.** CL-0020 and CL-0021 previously skipped any value *containing* a
  reference, so appending one character to a literal (`hunter2$X`) silenced
  them, while Compose ships `hunter2`. The exemption is now "Compose resolves
  this value to nothing", which also correctly exempts a quoted reference in a
  list-form entry (`- SECRET_KEY="${KEY}"`, where the quotes are literal
  characters) that a stricter shape test would have flagged.
- **CL-0021's rule description** now says the password half is skipped when
  Compose resolves it to nothing, and that a defaulted password still fires.
  Visible in `--explain CL-0021`, the docs site and SARIF rule metadata.
- **CL-0026 no longer treats an unparseable dollar-bearing value as a limit.**
  `mem_limit: "${MEM:-0}m"` resolves to `0m`, which Docker reads as unlimited,
  and now fires; a bare `${MEM_LIMIT}` stays exempt as genuinely unknowable.
- Scalars longer than 8 KB are no longer scanned for interpolation. The two
  substitution regexes are quadratic (measured 80 KB → 0.49 s, 160 KB →
  1.94 s), and the pass above runs them over every string rather than bind
  sources alone; past the cap the conservative answer is returned unscanned.
- **A Compose file containing an ambiguous line break is now refused** (exit 2,
  reported per file, with a SARIF `toolExecutionNotifications` entry) instead of
  being linted with line numbers nothing else agrees with. A lone `\r`, U+0085,
  U+2028 or U+2029 is a line break to the YAML parser but not to editors, SARIF
  viewers or CI annotations, so on such a document *any* reported line number is
  wrong for one side or the other — and the fix engine would splice at a line
  the user is not looking at. There is no line numbering to fall back on, so the
  file is refused rather than mislabeled. None of the 5,417 files in the corpus
  contains one, and CRLF and LF are unaffected.
- **The parser now reads files without universal-newline translation**, so
  `check` and `fix` parse the same bytes for the same file. `fix` has always
  read with `newline=""` to preserve line endings, while the parser rewrote a
  lone `\r` to `\n` — a second, quieter version of the same disagreement.
  Verified no behavior change: LF and CRLF documents produce byte-identical
  findings and line numbers, and a full corpus run is unchanged.

### Fixed

- **CL-0021 no longer reports a connection string whose credential is entirely
  a variable reference.** The `user:password@` split ran on the first `:`,
  which for `postgresql://${DB_USER:?error}:${DB_PASSWORD:?error}@db/x` lands
  inside the substitution — leaving a "password" of `?error}:${DB_PASSWORD:?error}`,
  which is not wholly a reference and so read as a shipped literal. The split
  now happens at substitution depth zero, the same thing `parser` already did
  for short-syntax volumes, and each half is length-bounded rather than
  relying on a regex quantifier to bound it.

- **CL-0020 no longer reads a token's *lifetime* as the token.**
  `JWT_ACCESS_TOKEN_EXPIRE_MINUTES: 30` matched on the `TOKEN` substring and
  fired at `high` — a finding with no fix, since the value is a duration.
  A key naming a quantity about the credential (`TTL`, `EXPIRE`, `EXPIRY`,
  `VALIDITY`, `ROTATION`, `INTERVAL`, `RETENTION`, `_MINUTES`/`_DAYS`,
  `MIN_LENGTH`, `MIN_CHAR`, `_LIMIT`, `_SIZE`, `POLICY`, plural `TOKENS`,
  `_PORT`) is now exempt **when its value is also a bare quantity** (`30`,
  `900s`, `30m`).

  Both halves are required, and deliberately so. Exempting on the value alone
  — the shape a bare integer suggests — would have reverted the numeric-secret
  fix: `POSTGRES_PASSWORD: 1234` is a weak credential and must keep firing.
  Exempting on the key alone would skip `AUTH_TOKENS: your_token_here`.

  Measured over the 5,417-file corpus: **30 findings removed across 18 files,
  every one a knob; all 40 numeric-valued credentials kept; no other rule's
  output changes.** Three files stop failing at the default `--fail-on high`,
  having failed only on this. This class grew with the interpolation change
  above — `TOKEN_TTL: ${TTL:-60}` resolves to `60` and began firing where the
  unresolved reference had not.

  Four knob keys holding non-quantity values still fire (a banned-password
  *list filename*, a `5/hour` rate, an arithmetic expression, a placeholder
  token); judging those needs the content scanner this rule declines to be.

- **Nested interpolation defaults resolve the way Compose resolves them.**
  `${A:-x${B:-y}z}` was rewritten by a single regex pass whose default group
  stopped at the *first* `}` — the inner one — so
  `${DB_URL:-postgres://u:${PW:-s3cret}@db/x}` normalized to
  `postgres://u:${PW:-s3cret@db/x}`, a string Compose never ships, with the
  userinfo boundary moved and the brace relocated past the host. Every rule
  reads the normalized document, so the corruption reached bind sources
  (`${GOPATH:-${HOME}/go}/pkg/mod/cache`) as well as the credential rules. 98
  values across 34 corpus files are written this way. Resolution is now
  innermost-first with balanced brace counting, checked against
  `docker compose config` on Compose 5.4.0 with no `.env`:

  | written | shipped | before |
  |---|---|---|
  | `${A:-front-${B:-back}-tail}` | `front-back-tail` | `front-${B:-back-tail}` |
  | `${OUTER:-postgres://u:${IN:-pw}@db/x}` | `postgres://u:pw@db/x` | `postgres://u:${IN:-pw@db/x}` |
  | `${CONF:-{"a":1}}` | `{"a":1}` | `{"a":1}` |

  Nesting is bounded at 32 levels, deeper values being left as written: because
  resolution recurses per level, `${A:-` repeated 1,200 times — 7 KB, under
  `MAX_SCAN_LEN` — otherwise exhausted the interpreter stack and the parser
  reported that as a usage error, so a 7 KB scalar turned a clean lint into
  exit 2.

  Measured over the 5,417-file corpus: **5 files (0.09%) change findings and
  none go from pass to fail.** Two stop failing at the default `--fail-on high`,
  each losing a single CL-0021 false positive; one drops a CL-0020 on
  `MINIO_ROOT_PASSWORD: ${S3_SECRET_ACCESS_KEY:-${S3_SECRET_KEY:-}}`, which
  Compose ships empty; and one file's five `${IMG:-repo/app:${TAG:-latest}}`
  images move from CL-0019 to CL-0004 at the same MEDIUM severity, because the
  tag now resolves to the mutable `latest` rather than to an opaque reference.

- **`init` no longer writes a config that does not parse.** A service name
  carrying a newline produced a `.compose-lint.yml` with a bare line break
  inside a mapping key — and `init` reported success writing it, so every later
  run in that directory failed with `Invalid YAML in config file` at exit 2
  until someone found the file by hand. Durable corruption from one lint of one
  hostile file. Quoting is now delegated to PyYAML rather than hand-rolled
  (the previous version escaped `\` and `"` and nothing else), and the
  plain-scalar test is anchored with `\Z` rather than `$` — in Python `$` also
  matches *before* a trailing newline, so `"web\n"` was emitted unquoted.
  Ordinary names are still emitted unquoted.

- **`init --force` no longer overwrites a read-only config.** A 0444
  `.compose-lint.yml` is an explicit "do not modify" on the file that decides
  which security rules are suppressed, and `os.replace` would swap it out
  through the writable parent directory regardless. `fix --apply` had honoured
  that mode all along; the init path did not. The guard is now one shared
  helper called by both, with a test that fails if either loses it.

- **A small file can no longer buy a large amount of work.** Nine defects
  shared that shape: input that parses in milliseconds and then costs seconds
  or gigabytes downstream, while producing no finding and exiting 0 — so
  nothing in the output signalled it. Measured at 800 services, `fix` went from
  2.67 s to 0.65 s and SARIF from 2.37 s to 0.36 s, and both are now linear in
  service count rather than approaching quadratic.

  - **Reading a path that is not a bounded regular file.** `.exists()` is true
    of a FIFO and of `/dev/zero`, and a repository can commit a *symlink* to
    either — it survives clone and checkout, and the runner resolves it.
    Reading one hung the job forever; the other allocated until the runner
    died. Both the Compose loader and the config loader now check the resolved
    file's shape before reading a byte, with the descriptor opened
    `O_NONBLOCK` — a plain `open()` on a FIFO blocks *before* any check can
    run — and the read bounded at 8 MB.
  - **`str()` on a YAML container.** Aliases share nodes by reference, so a
    22-level doubling chain is under 1 KB on disk and 22 nodes in memory, but
    `str()` serializes it as a *tree*: 4M elements from one call. Eleven rule
    sinks and three config fields did that to whatever the document handed
    them. They now refuse a container rather than render it — a list is not a
    capability, a port, a mount spec, or a suppression reason.
  - **Repeated work over one document.** `split_lines` was called once per
    fixer and re-split the whole file each time (2.24 s of a 2.58 s run at 800
    services); `extends_targets` walked every service once per *finding*; and
    `_merge_extends` re-walked a shared alias subtree once per path through the
    DAG (805 B → 5.4 s). All three are now memoized per document, and
    `split_lines` takes a C-speed path when the text contains none of the five
    characters `str.splitlines()` breaks on and PyYAML does not.
  - **Quadratic scanning of a long scalar.** CL-0021's userinfo pattern
    retried from every offset (20 KB → 1.1 s, 40 KB → 4.1 s). Its quantifiers
    are now bounded and the scalar is capped before scanning.
  - **The edit-conflict check** compared every pair of fix units. It now sweeps
    spans sorted by offset and stops as soon as a later span begins past the
    current one's end.
  - **SARIF output that a consumer would reject.** 1,500 aliased services in
    29 KB produced a document over GitHub Code Scanning's 10 MB ceiling — and
    an artifact that large is *rejected*, so the run showed no alerts at all.
    Output is capped at 5,000 results, the omission is stated in
    `toolExecutionNotifications`, `executionSuccessful` is false, and the run
    exits 2 so a gate cannot read success from a knowingly incomplete artifact.
    Use `--format json` for the complete set.

- **Malformed input is a per-file failure, never a traceback.** Four paths let
  an exception escape the fail-loud boundary: the CLI printed a Python
  traceback, exited **1** — which reads as "I linted it and it failed" rather
  than "I could not lint it" — and abandoned every remaining file in the batch.
  All four now surface as a clean error at exit 2 with the rest of the run
  intact. Each had a correct sibling already in the repo.

  - **Deep recursion in the post-parse passes.** The loader's
    `RecursionError` guard covered the *parse* only, so a 2000-deep `extends:`
    chain or a self-referential `${A:-${A:-…}}` in a bind source blew the stack
    after the loader returned. The boundary now covers every pass that walks
    the document.
  - **`ReaderError` from the loader constructor.** `Reader.__init__` runs the
    printable-character check, so a document carrying a C0 byte raises at
    construction — which happened *outside* the `try`. The constructor is now
    inside it.
  - **`RecursionError` in the config loader.** `except yaml.YAMLError` does not
    catch it, since it is a `RuntimeError`. The Compose loader already
    translated this; the config loader did not.
  - **Write failures from `fix --apply` / `init`.** An unwrapped `OSError` — a
    read-only directory, a full disk — aborted the batch and printed the
    absolute workspace path in a traceback. Failures are now attributed to the
    file they belong to, and later files still lint. The message reports the
    condition (`Permission denied`) rather than the errno decoration and the
    internal temp filename the caller never chose.
  - A write target that exists but is **not a regular file** is now named as
    such. A directory has `st_nlink >= 2`, so it was previously reported as a
    hard link, which is not what is wrong with it.

- **`fix --apply` could edit the wrong line and silently delete config.** The
  fix engine's offset table counted only `\n`, while the line numbers it
  converted come from PyYAML, which also breaks on a lone `\r`, U+0085,
  U+2028 and U+2029. One such codepoint inside a quoted scalar shifted every
  later splice a line, so a fix could remove a line the user never selected —
  and because the result was still valid Compose, every safety net passed and
  the run exited 0. `compose_lint._lines` now owns a single definition of a
  line break, with `split_lines` and `line_starts` derived from one scan so
  they cannot disagree; the fixers, the fix engine and the text formatter's
  source excerpt all use it. A CI guard fails the build on a bare
  `str.splitlines()` in `src/`. Documents free of those four codepoints —
  effectively all real Compose files — are unaffected: a 5,417-file corpus run
  shows zero change in findings, exit codes or errors.
- **A file whose fixes could not be computed no longer destroys the batch.**
  The same desync could push a line number past the offset table and raise a
  bare `IndexError`, which aborted the whole run: `check --format sarif` then
  emitted a 0-byte document, discarding the findings of every other file
  scanned alongside it. Out-of-range positions now raise a
  `LineOutOfRangeError` that the CLI reports as a per-file failure (exit 2,
  the usage-error code) while the rest of the batch still lints and still
  ships its findings.

### Security

- **The release layer no longer has a weaker path than its main one.**

  - **One tag gate, called by both publish paths.** `publish.yml` verified
    three things about a release tag: annotated, reachable from `main`, and
    signed by a key in `.github/allowed_signers`. `publish-channel.yml` — the
    manual escape hatch, which ships with the same credentials — carried its
    own copy that did the first two and omitted the third, so a tag signed by
    nobody could reach the publishing jobs. The signature check is the
    cryptographic root of the Sigstore provenance chain. It now lives once, in
    a reusable `verify-tag.yml` that both paths call, and every
    credential-bearing job depends on it. A test walks the `needs:` graph and
    fails if any job touching a publishing credential does not reach the gate.
  - **The release smoke no longer resolves dependencies from TestPyPI.** `-i`
    makes an index *primary*, and pip then prefers the highest version across
    all configured indexes — so with TestPyPI primary, anyone who claims a
    dependency name in that open namespace at a higher version supplies code
    into the release. The closure is now installed from the hash-pinned lock
    first, and TestPyPI is used only with `--no-deps` for the one artifact
    under test. Verified against a local squat: PyYAML resolves from the lock,
    not the planted 99.0.0. A test fails any workflow `pip install` that reads
    from a non-default index without `--no-deps`.
  - **The manual Docker Hub description sync runs default-branch code.**
    `workflow_dispatch` can name any ref and `uses: ./…` runs whatever is in
    the workspace, so the dispatcher chose the code that reads a
    Read+Write+Delete token. The checkout is pinned to the default branch: a
    dispatch now chooses when it runs, not what runs.
  - **The corpus report escapes third-party repository and path strings.**
    They come from code-search results over arbitrary public repositories, and
    only a path's *basename* is filtered when fetching — so a directory
    component could contain `|`, backticks and HTML, forge extra columns, and
    write rows that looked like compose-lint's own findings. Backticks are
    replaced rather than escaped, because Markdown does not honour backslash
    escapes inside a code span.

  Two related items need repository and Docker Hub settings rather than code,
  and are written up in `docs/RELEASING.md`: moving the Docker Hub secrets into
  a default-branch-scoped environment, and splitting the single
  Read+Write+Delete PAT into read, write and admin tokens.

- **Four places where the tool reported a state that was not true.**

  - **`fix --apply` no longer claims to have fixed a file it did not touch.**
    `os.replace` swaps the directory entry, not the inode behind it, so on a
    **symlink** it dropped a regular file over the link and left the file the
    stack actually deploys unchanged — while the run reported the fix applied.
    On a **hard link** it broke the link and let the two names diverge in
    silence. Both are now refused with an error naming the reason; the rest of
    the batch continues. `setuid`/`setgid`/sticky bits are no longer carried
    onto the replacement inode.
  - **A `severity:` override leaves an audit record.** It was the one
    suppression channel with none: `enabled: false` and `exclude_services` both
    mark findings SUPPRESSED with a reason, but a re-graded finding was
    indistinguishable from one the rule declared at that level — so three lines
    in a policy file could take a CRITICAL below the default gate invisibly.
    Now reported as `(severity overridden from critical)` in text,
    `severity_overridden_from` in JSON, and `properties.severityOverriddenFrom`
    in SARIF. Re-stating a rule's own severity records nothing, because nothing
    changed.
  - **Duplicate keys in `.compose-lint.yml` are a config error.** YAML resolves
    them last-wins in silence, so a policy that disables a rule with a reason
    and re-enables it further down read, to a human, as the first entry and
    behaved as the second. The Compose parser already refuses duplicates for
    this reason; the config loader was the door left open.
  - **A line lookup never returns a line belonging to a different node.**
    Joining path segments with `.` is lossy when a segment contains one: a
    service named `web.logging` and service `web`'s `logging:` child both spell
    `services.web.logging`, and last-write-wins handed one of them the other's
    line — so a fixer evaluated its anchor/merge-key refusal against a
    different service and applied an edit every fixer is required to refuse.
    Colliding paths are now dropped from the map, so the lookup returns `None`
    and the fixer fails closed. 17 corpus files use dotted service names
    (`llama.cpp`, `smartwardrobe.api`); none of them collides, so nothing real
    loses its line numbers.

- **Everything compose-lint prints about a file is now sanitized at the sink.**
  Escaping lived in a private helper inside the text formatter, so it covered
  that formatter's own fields and nothing else: 26 other print sites emitted
  attacker-derived text raw — service names, file paths, and parse-error text
  that quotes the document — and a terminal or CI log renders control sequences.
  The full CSI repertoire reaching stderr means the file being linted can erase
  findings already on screen.

  Escaping now lives in `compose_lint._output` and **every** stderr write goes
  through `emit()`, so it is the default rather than something each new call
  site must remember; a test fails the build on a raw
  `print(..., file=sys.stderr)` anywhere in `src/`.

  - **A newline can no longer forge a report line.** `_sanitize` passed `\n`
    through "so excerpt layout survives", but the sink is a newline-delimited
    report — a service name carrying one put attacker text in the report's own
    left margin, indistinguishable from a line compose-lint wrote. Values
    rendered as a single record are now escaped with `sanitize_line`, and
    multi-line diagnostics indent their continuation lines so nothing after an
    embedded newline can occupy column zero.
  - **The `fix` dry-run diff is sanitized.** It is the surface a human reads to
    authorise a destructive write, and it printed file content verbatim —
    bidi and zero-width codepoints are YAML-printable, so they survive the
    parser's own check and could display a line in an order the file does not
    have. Sanitizing happens in `render_file_diff`, so all three emit sites are
    covered at once. Display only: `fix --apply` still writes the original
    bytes.
  - **`format_header` sanitizes the config path**, the one unsanitized *stdout*
    site — it sat immediately beside a correctly sanitized `files` argument.

  Measured over the corpus: no findings, exit codes or errors change. Text
  output is byte-identical on 299 of 300 sampled files; the exception is
  PyYAML's parse-error context, whose continuation lines gain two spaces of
  indent. Of the 16 corpus files containing a sanitizable codepoint (all
  zero-width space or BOM), the only visible change is that a leading BOM now
  shows as `\ufeff` in a `fix` diff instead of being invisible — which is the
  point of the fix.

- **The GitHub Action no longer passes where the CLI would fail.** Six defects
  shared that shape, and `action.yml` is fixed as one block.

  - **"No Compose files found" is an error, not a green check.** The lint step
    was gated on `if: steps.find-files.outputs.files != ''`, so a `pattern:`
    that matched nothing skipped the step entirely and the job reported
    success — while the CLI exits 2 for exactly that input. The decision now
    lives inside the script, where it can fail. New `allow-no-files: true`
    input for the case where an empty result is expected.
  - **A SARIF artifact is never uploaded unless it was written.** The re-run
    redirected straight at the target — truncating it before the command ran —
    and `|| true` reported failure as success, so `always()` uploaded a 0-byte
    document and Code Scanning showed no alerts. Output now goes to a
    temporary file that is moved into place only once it holds a complete
    document; a run that produces nothing fails the step, and the upload is
    gated on the file having been written rather than on `always()`.
  - **`sarif-file` is validated to stay inside the workspace.** `>` truncates
    before the command runs, so an unvalidated path let a caller-supplied
    value destroy a file anywhere the runner could write.
  - **The install is pinned by default.** A consumer who SHA-pins `uses:` is
    asking for a reproducible check, but the action installed whatever PyPI
    served at that moment. It now installs the version it was released with;
    `version: latest` opts back in to tracking PyPI.
    `scripts/bump-version.sh` keeps the pin in step and
    `tests/test_action_contract.py` fails if it drifts.
  - **No attacker-controlled text reaches `$GITHUB_OUTPUT`.** Discovered paths
    are written NUL-separated to a file under `RUNNER_TEMP` and only that
    file's path crosses the step boundary, so a filename containing a newline
    can no longer forge output records. Discovery uses `find -print0`, so
    paths containing spaces survive too.
  - **The documented consumer workflow ships a `permissions:` block** —
    workflow-level deny-all plus the two scopes the job actually uses.

- **Five rules now classify the normalized value instead of the spelling.**
  Each decided what a value *was* by matching the raw token, so an equivalent
  spelling walked past it. All five were verified against
  `docker compose config`, and none of the 5,417 files in the corpus uses any
  of them — these are evasion spellings, not things people write by accident,
  so the added coverage costs no false positives.

  | Spelling | before | after |
  |---|---|---|
  | `o: rbind` in `driver_opts` | *silent* | **CL-0001** critical (also CL-0013, CL-0025) |
  | `//dev/sda`, `/dev/./sda` | *silent* | **CL-0016** critical |
  | `privileged: y` / `Y` | *silent* | **CL-0002** critical |
  | `[::0]`, `[0:0:0:0:0:0:0:0]`, `[::ffff:0.0.0.0]` | *silent* | **CL-0005** medium |
  | `read_only: !reset true` | credited as hardened | **CL-0003/0006/0007** |

  - **`o: rbind`** is a recursive bind of the same host path. Bind detection now
    keys off the shape the kernel acts on — `type: none` with an absolute
    `device` under the local driver — rather than the `o:` string being exactly
    `bind`. `type: nfs` and `type: tmpfs` are still not claimed as host paths.
  - **Device paths** run through `normalize_host_path` before the sixteen
    `^/dev/`-anchored patterns see them.
  - **`_TRUE`/`_FALSE`** cover YAML 1.1's single-letter forms. `privileged: y`
    is emitted as `privileged: true` by `docker compose config`, so one
    character hid the tool's highest-severity finding. `n`/`N` are added for
    symmetry; they failed safe.
  - **Bind addresses** are parsed, not matched against a literal set. Every
    spelling of the unspecified address is now recognized in both families; a
    value that is not an address (a hostname) is still not a wildcard.
  - **`!reset` deletes the key it is attached to**, which is what Compose does:
    a file carrying `read_only: !reset true`, `cap_drop: !reset [ALL]` and
    `security_opt: !reset [...]` deploys a service with none of them. Keeping
    the underlying value credited the service with hardening Docker removes, so
    the absence rules stayed silent on an unhardened container. `!override`
    still keeps its value — it changes how a value merges, not what it is.

- **The shipped harnesses now terminate the option namespace with `--`.** A
  repository can contain a directory named `--config=cfgdir` holding a
  `compose.yml`; the resulting path `--config=cfgdir/compose.yml` matches the
  pre-commit hook's `files:` pattern and the Action's discovery, so a harness
  that globbed repo paths straight into argv handed argparse something it read
  as an option. The crafted file left the lint set *and* an attacker-authored
  policy disabling every rule was installed for the run — the gate went green
  over a `privileged` stack mounting `/var/run/docker.sock`. Confirmed
  end-to-end: the pre-commit hook reported `Passed` before this change and
  `Failed` after, on the same repository.

  The pre-commit hook ships `args: [--]` and the Action passes `--` before the
  file list in both invocations (the text run and the SARIF re-run). Setting
  `args:` in your `.pre-commit-config.yaml` replaces the default, so keep `--`
  last if you pass flags — see README.

  The separator is deliberately **not** inserted by the CLI's argv shim: it
  cannot tell a genuine `--config=x` from a file named that, and terminating
  before the first positional would break the documented
  `compose-lint init docker-compose.yml -o ci.yml` form.


