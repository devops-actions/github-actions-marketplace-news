---
title: Install bashunit
date: 2026-08-15 06:39:13 +00:00
tags:
  - TypedDevs
  - GitHub Actions
draft: false
repo: https://github.com/TypedDevs/bashunit
marketplace: https://github.com/marketplace/actions/install-bashunit
version: 0.48.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action is a testing framework for Bash scripts, providing assertions and test doubles for writing fast, simple unit tests. It supports various features such as equality checks, strings, exit codes, numeric comparisons, array length checks, file permissions, JSON validation, date comparisons, duration measurements, snapshot matching, and more. The framework is lightweight and easy to use, with a user-friendly interface that includes documentation, example tests, and shell completion options.
---


Version updated for **https://github.com/TypedDevs/bashunit** to version **0.48.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-bashunit) to find the latest changes.

## Action Summary

This GitHub Action is a testing framework for Bash scripts, providing assertions and test doubles for writing fast, simple unit tests. It supports various features such as equality checks, strings, exit codes, numeric comparisons, array length checks, file permissions, JSON validation, date comparisons, duration measurements, snapshot matching, and more. The framework is lightweight and easy to use, with a user-friendly interface that includes documentation, example tests, and shell completion options.

## What's Changed


## ✨ Improvements
- `--verbose` warns on Bash 3.x that coverage does not count lines run inside a subshell, so a lower percentage there explains itself (#1112)

## 🛠️ Changes
- Performance: `--coverage` is roughly 5x faster and `--coverage-report-html` roughly 19x — this repo went from 16.2s to 2.9s, and a 128-file HTML report from 58.7s to 3.1s (#1092, #1096, #1098, #1099, #1102, #1104, #1110, #1117)
- Performance: `./build.sh` is about 1.9x faster (7.6s to 4.0s), producing a byte-identical artifact (#1233)
- Performance: cold start makes two fewer forks, about 4ms of a 65ms startup (#1124)
- The HTML report gained a `Failures` section with each failure's name, `file:line` and message, and its summary now counts risky and flaky tests (#1251, #1252)
- A `--filter` that matches nothing names the test it most likely meant: filters match the test **function name**, case-sensitively, not the humanized title in the report (#1237)
- `--env` with a space in the path now says the value was split on the first space to pass bootstrap arguments, and that `BASHUNIT_BOOTSTRAP` takes the path whole (#1247)
- The bootstrap error names the actual cause — missing, a directory, or not a regular file — instead of `cannot read` for all of them (#1262)
- `bashunit doc <filter>` says `No assertion matches '<filter>'` instead of printing nothing (#1201)
- `install.sh` destination errors no longer advise a `-d` flag that does not exist; the script takes positional arguments (#1221)
- `bashunit learn` generates starter files that are valid bash, and verifies lessons against the learner's code rather than the hint comments in its own template (#1256, #1258)
- The coverage HTML report handles filenames containing `|`, `<` or `&` (#1254)
- A test file that fails to source without writing to stderr reports its size, so a truncated file can be told from one whose last command failed (#1137)
- The `example/` demo is covered by the suite; nothing ran it before (#1219)
- Docs: benchmarks are the `bashunit bench [path]` subcommand — `-s -b` and `--simple --bench` never existed (#1227)
- Docs: test functions need a literal, lowercase `test_` prefix; the guide's camelCase example and its case-insensitive claim were both wrong (#1215)
- Docs: `assert_equals` strips ANSI codes, tabs and newlines — not spaces (#1225)
- Docs: an empty entry in the `-e/--env/--boot` file assigns an empty value; it does not restore the default (#1217)
- Docs: `assert_matches` costs ~2.5ms per call against ~0.065ms for `assert_same`, so prefer `assert_contains` for a fixed substring (#1187)
- Docs: a `@data_provider` test shares one snapshot across all its values; use `assert_match_named_snapshot "$1"` for one each (#1185)

## 🐛 Bug Fixes
- `bashunit --output junit` produces valid XML, and `--parallel --stop-on-failure` no longer corrupts a machine `--output` stream (#1239, #1243)
- The HTML report escapes test titles instead of writing them into the markup (#1249)
- `--coverage-paths` accepts a path containing a space, an apostrophe or a glob character; it used to break the DEBUG trap and fail passing tests (#1245)
- A piped `--parallel` run no longer emits a stray `\r  \r`, and an empty one renders its notice on its own line (#1239)
- Duplicate test functions are detected under `--parallel` again; the run reported "All tests passed" over a file where one of two same-named tests never ran (#1147)
- A `@data_provider` that is undefined or yields no data is reported as an error naming the provider, instead of the test vanishing behind "No tests found" (#1145)
- A bootstrap file that fails to load reports it and exits non-zero through every path that loads one, instead of leaving the run with no tests and exit 0 (#1179, #1181)
- `bashunit bench` reports `No benchmarks found` and exits non-zero when the path does not exist or holds no `bench_` function (#1199)
- A report path that is a directory fails fast with `is a directory, not a file` instead of exiting 0 with no report written (#1177)
- A coverage run that tracked no executable line says so and names `--coverage-paths`, instead of reporting `Coverage 0% is below minimum N%` (#1171)
- `assert_exec "cmd" --exit 1` works under `--strict`; `set -e` aborted the test before the assertion could read the code (#1207)
- `assert_equals` no longer expands backslash escapes while normalizing, so `C:\` and `C:\\` differ and a literal `\t` is not a real tab (#1108)
- `assert_file_contains` accepts a needle starting with a dash, and `assert_file_not_contains` matches literally like its counterpart (#1108)
- The mock/spy misuse message names a helper that exists (`bashunit::mock`, not `mock`), and reports a usable-name error instead of a raw bash syntax error (#1136, #1229)
- A JSON test skipped for a missing `jq` is reported under its own name, not `bashunit::assert_json::require_jq` (#1223)
- A data-provider value ending in a backslash reaches the test instead of arriving unset (#1134)
- Coverage no longer loses hits recorded inside a command substitution; on Bash 5 a run reported 196 of 236 real hits (#1101)
- `install.sh` names the real problem when the destination is unusable, and validates it before any network call (#1197)
- `bashunit init` no longer adds a dead `BASHUNIT_BOOTSTRAP` line to `.env` on every run, and reports what it wrote (#1175)
- A run survives its scratch directory going missing and says so once on stderr (#1163, #1167)
- A run's scratch-directory cleanup can no longer widen to every concurrent run's (#1165)
- TAP escapes a `#` in a test name, so `check # SKIP me` is no longer read as a directive (#1119)
- GitHub Actions annotations are percent-encoded on Bash 3.0 too (#1121)


## 👥 Contributors
- @Chemaclass

## Checksum
SHA256: `9e27d930a505fcdc46e0c3275ca943d412e5df4b51dc1f5b5219d794d3b1893d`

**Full Changelog:** [0.47.0...0.48.0](https://github.com/TypedDevs/bashunit/compare/0.47.0...0.48.0)

