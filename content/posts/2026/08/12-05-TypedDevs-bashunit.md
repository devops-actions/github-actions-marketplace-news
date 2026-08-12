---
title: Install bashunit
date: 2026-08-12 05:43:39 +00:00
tags:
  - TypedDevs
  - GitHub Actions
draft: false
repo: https://github.com/TypedDevs/bashunit
marketplace: https://github.com/marketplace/actions/install-bashunit
version: 0.46.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates testing for Bash scripts using the `bashunit` framework, providing a simple and fast way to test bash functions, assertions, spies, mocks, data providers, snapshots, and more. It supports multiple features such as equality checks, string comparisons, exit codes, numeric assertions, array operations, file permissions, JSON parsing, date comparisons, duration measurements, snapshot matching, and test double verification.
---


Version updated for **https://github.com/TypedDevs/bashunit** to version **0.46.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-bashunit) to find the latest changes.

## Action Summary

This GitHub Action automates testing for Bash scripts using the `bashunit` framework, providing a simple and fast way to test bash functions, assertions, spies, mocks, data providers, snapshots, and more. It supports multiple features such as equality checks, string comparisons, exit codes, numeric assertions, array operations, file permissions, JSON parsing, date comparisons, duration measurements, snapshot matching, and test double verification.

## What's Changed


## ✨ Improvements
- `--changed [<ref>]` runs only the test files git reports as touched since `<ref>` (default `origin/HEAD`, then `HEAD`), covering committed, staged, unstaged and untracked changes (#1010)
- `--order-by <defined|defects|random>` picks the execution order; `defects` runs the last run's failures first and still runs the whole suite (#1011)
- `--list` (alias `--dry-run`) prints the tests a run would execute without running them; `--list-format json` emits file, function, name, line and tags, honouring every selection flag including `--shard` (#1007)
- `--exclude-filter <name>` skips tests by name, the counterpart of `--exclude-tag`: repeatable, OR'd, and wins over `--filter` (#1009)
- `--tag` accepts expressions: `'a&&b'` (AND), `'!a'` (NOT) and `'a&&!b'`; repeated `--tag` flags keep OR semantics and `--exclude-tag` still wins (#1008)
- `# @tags a b` above any top-level line tags every test in the file, unioned with per-function `# @tag` (#1008)
- `--repeat <n>` runs each selected test n times to hunt flakiness before CI does: one report line with the aggregate outcome, a failure names its iteration, and repeat wraps `--retry` (#1013)
- Flaky is a first-class outcome: a test that only passed after a retry is counted separately, stays inside the pass total so the exit code is unchanged, and is carried into JUnit (`<flakyFailure>`), TAP, JSON, HTML and GitHub Actions with the first attempt's failure message; `--fail-on-flaky` turns such a run red (#1012)
- `--coverage-report-cobertura [file]` writes Cobertura XML (default `coverage/cobertura.xml`), the format GitLab merge-request visualisation, Azure DevOps and Jenkins consume, with repo-relative filenames, per-line hits and `condition-coverage` on branch lines, alongside the LCOV and HTML reports (#1017)
- `--coverage-diff <ref>` limits the coverage console report to lines changed since a base ref; `--coverage-min` then gates on that diff percentage (#1032)
- `--report-md <file>` writes a Markdown run summary — verdict, counts table, failures with their message, plus coverage and slowest tests when those ran — and inside GitHub Actions appends it to `$GITHUB_STEP_SUMMARY` (#1015)
- GitHub Actions annotations print to stdout automatically inside Actions, carrying the failing test's file and line so they land on the right line of the diff; `--gha-annotations <auto|always|never>` overrides the detection and `action.yml` gains an `annotations` input (#1014)
- `assert_between <min> <max> <actual>` and `assert_not_between` add inclusive numeric-range assertions for integers and decimals (#1026)
- `assert_command_available <command>` asserts a command, shell builtin or function resolves through `command -v` (#1027)
- `--verbose` reports the coverage engine in use, and an explicit `BASHUNIT_COVERAGE_ENGINE=xtrace` the running Bash cannot honour now warns instead of being silently ignored (#1005)

## 🛠️ Changes
- JUnit XML: one `<testsuite>` per test file with its own counts, time and timestamp instead of a single flat suite, `classname` on every `<testcase>`, `<failure message="...">` carrying the first informative line of the real message with `type="AssertionFailed"`, `<system-out>` with the test's captured output, and aggregate totals on `<testsuites>`, so consumers that group by suite or classname (Jenkins, GitLab, dorny/test-reporter) get real groupings (#1016)
- Performance: `--coverage` is about 1.6x to 2.3x faster; executable-line classification no longer forks `grep` per source line, roughly half of a coverage run's wall time on both engines (#1005)
- `bashunit test --help` lists `--show-skipped` and `--show-incomplete`, both accepted by the parser but never advertised; `BASHUNIT_COVERAGE_SHOW_FUNCTIONS` and `BASHUNIT_COVERAGE_SHOW_UNCOVERED` are registered in `src/config/env.sh` like every other setting, and `.env.example` now lists all 66 settings, 19 of which were missing (#1063)
- Docs: full audit of the reference pages against the code — `docs/configuration.md` gained the 17 settings it never documented, `docs/command-line.md` gained the `assert` subcommand section and real example output, and the coverage settings and diff-coverage narrative now live in one place instead of two that had drifted (#1063)

## 🐛 Bug Fixes
- Report formats are no longer empty under `--parallel`; `--report-junit`, `--report-tap`, `--report-json`, `--report-html` and `--log-junit` all recorded zero tests, because the rows were collected inside the per-test worker and nothing rebuilt them in the parent (#1004)
- A failed assertion is no longer reported twice: `bashunit::assert_that` returns 1 on failure by design, so a custom assertion ending with it made the test body exit non-zero and the runner printed a spurious `✗ Error` on top of the `✗ Failed`. Custom assertions no longer need a trailing `return 0`, and a real runtime error is still reported as an error (#1063)
- `--coverage-report` with no value uses `coverage/lcov.info` instead of aborting the run with `$2: unbound variable`, and no longer consumes a following flag as its filename; write the test path before it, since an optional value cannot be told apart from a path (#1063)
- `--list --list-format json` reports each tag as its own array element; the emitter split the tag list on whitespace while every other consumer splits it on commas, so two tags rendered as `["slow,fileTag"]` (#1063)
- `assert_within_delta` rejects malformed numbers such as `1.2.3` or `5-3` as non-numeric instead of leaking a raw `bc` parse error or evaluating them as an expression (#1026)
- Build: the standalone binary size budget is 544 KiB, raised from 500 KiB after ordinary feature growth crossed it; the artifact keeps its indentation rather than being minified (#1045)


## 👥 Contributors
- @Chemaclass
- @fzlzjerry
- @w3lld1

## Checksum
SHA256: `c49fd3874c7df68170f6a22d76599031113f2bb8a5a3bca664fa056dc214e85f`

**Full Changelog:** [0.45.0...0.46.0](https://github.com/TypedDevs/bashunit/compare/0.45.0...0.46.0)

