---
title: Install bashunit
date: 2026-07-29 14:54:14 +00:00
tags:
  - TypedDevs
  - GitHub Actions
draft: false
repo: https://github.com/TypedDevs/bashunit
marketplace: https://github.com/marketplace/actions/install-bashunit
version: 0.44.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The bashunit action is a lightweight testing framework for Bash scripts, focusing on developer experience and providing 71 assertions and tools like spies, mocks, data providers, and snapshots to automate testing tasks efficiently.
---


Version updated for **https://github.com/TypedDevs/bashunit** to version **0.44.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-bashunit) to find the latest changes.

## Action Summary

The bashunit action is a lightweight testing framework for Bash scripts, focusing on developer experience and providing 71 assertions and tools like spies, mocks, data providers, and snapshots to automate testing tasks efficiently.

## What's Changed


## ✨ Improvements
- `bashunit doc --custom` lists the assertions your project defines, rendering the comment block above each one; plain `bashunit doc` appends them as a "Custom assertions" section. Needs `--boot` / `BASHUNIT_BOOTSTRAP`, which `bashunit doc` now accepts (#918)
- `bashunit::assert_once <label> <actual>` makes a composed assertion count and report once instead of once per inner step, under its own label. Opt-in, so existing totals are unchanged (#917)
- `assert_assertion_passes`, `assert_assertion_fails` and `assert_assertion_fails_with <message>` assert the verdict a custom assertion reports. The inner assertion runs isolated (counters, output and stop-on-failure guard restored), so testing a failing assertion no longer means rebuilding its expected output by hand (#916)
- `bashunit::assert_that <expected> <actual> <cmd> [args...]` writes a custom assertion in one call: it runs the command and marks the assertion passed or failed, so a forgotten `return` or `bashunit::assertion_passed` can no longer drift the two counters apart (#915)
- `bashunit::assertion_failed` takes an optional 4th argument labelling the failure block, so a custom assertion can name itself instead of showing the test name (#915)
- `--snapshot-report-unused` lists snapshot files no test resolved, the leftovers of a rename or deletion. Reports only, never deletes; refused on partial runs (#902)
- `--no-snapshot-create` / `BASHUNIT_SNAPSHOT_CREATE=false` fails on a missing snapshot instead of recording it. Recommended in CI, where a never-committed snapshot used to pass while asserting nothing (#901)
- `--snapshot-update` / `BASHUNIT_SNAPSHOT_UPDATE=true` re-records existing snapshots (combine with `--filter`); snapshots holding a placeholder are left alone (#900)
- `bashunit::mock <cmd> <code>`: a lone all-digits argument is an exit code, matching `bashunit::spy`; no throwaway `return 1` helper needed (#898)
- `assert_have_been_called_with_any <spy> <expected>`: passes when *any* recorded call matches, not only the last one (#897)
- A failed call assertion prints the calls recorded for that spy, capped at 10 with an explicit `… and N more` (#896)
- `assert_have_been_called_with_args <spy> <arg>...`: compares the recorded arguments one by one, so `cmd "a b"` no longer matches `cmd a b` (#894)
- `BASHUNIT_COVERAGE_ENGINE=auto|xtrace|trap`: a new `xtrace` engine, ~4x cheaper per captured line. Needs Bash 4.1+, so `auto` (the default) falls back to `trap` below that (#860)
- `BASHUNIT_COVERAGE_SHOW_LINE_HITS=true` prints per-line execution counts in the text coverage report (#856)
- Docs: an [Agentic coding](https://bashunit.com/ai-agents) page, linked `llms.txt` / `llms-full.txt`, and a drop-in agent skill at [bashunit.com/bashunit-skill.md](https://bashunit.com/bashunit-skill.md)
- Docs: [Nix](https://bashunit.com/installation#nix) as an install option, since bashunit is in nixpkgs (`nix-shell -p bashunit`, `nix run nixpkgs#bashunit`)

## 🛠️ Changes
- A failed `assert_have_been_called_with` / `_with_args` states which call it compared (`compared 'the last of 2 calls'`) (#897)
- Deprecated forms warn at runtime on stderr; silence with `BASHUNIT_NO_DEPRECATION_WARNINGS=true` (#866)
- `bashunit::state::print_line` / `print_tap_line` moved to `bashunit::console_results::*`; no alias kept (#868)
- `bashunit doc` and the [Assertions](https://bashunit.com/assertions) page now cover all 71 assertions, with a quick-reference table
- The `--parallel` unsupported-OS warning no longer claims Alpine is excluded
- Docs: `bashunit::unmock` and the lifecycle of a double: automatic per-test cleanup, `set_up_before_script` doubles, and what `unmock` reaches (#899)
- Docs: invalid-input handling, `BASHUNIT_REPORT_TAP`/`BASHUNIT_REPORT_JSON`, the standalone exit code, and the optional `["snapshot_file"]` argument
- Docs: the sidebar outline now lists `h3` headings

## 🐛 Bug Fixes
- Failure and snapshot diffs render with `--no-ext-diff`, so a configured `diff.external` (difftastic) no longer blanks them (#912)
- Time reads and the JUnit report pass the locale via `env`; the `LC_ALL=C cmd` prefix segfaults inside `$()` on Bash 5.3 macOS (#912)
- Call assertions (`assert_not_called`, `assert_have_been_called*`) fail with `was never registered as a spy` instead of reporting zero calls when the name was never spied, so a typo no longer passes silently (#895)
- The per-argument form a spy records held a literal `$'\x1f'` string instead of the separator byte, so it could not be compared against (#894)
- `--parallel` no longer discards worker stderr written outside a test body; it renders as a `Stderr from <file>` block (#864)
- The minimum-bash gate compares the minor version and parses suffixed versions; the floor is unchanged at **Bash 3.0+**
- An empty entry in `.env` no longer blanks a value the caller exported or passed on the command line (#865)
- Malformed benchmark annotations (`@revs`, `@its`, `@max_ms`) error instead of silently falling back, and `@max_ms` accepts a decimal value (#884)
- An unknown option is rejected instead of being treated as a test path (#871)
- `--jobs`, `--retry`, `--test-timeout`, `--coverage-min` and `--output` reject invalid values; `--jobs abc` used to hang (#873)
- A missing `--env`/`--boot` file errors instead of a green run that tested nothing; report paths and `--seed` are validated too (#875)
- `BASHUNIT_COVERAGE_THRESHOLD_LOW`/`BASHUNIT_COVERAGE_THRESHOLD_HIGH` validate as non-negative integers
- `bashunit assert <name>` with no arguments errors instead of exiting `0` (#877)
- The exit-code assertions fail closed on a non-integer exit code, which used to count as passed
- Variadic assertions with the actual value omitted fail cleanly on Bash 3.2 under `--strict`
- `assert_arrays_equal` failing outside a test function shows its real label
- Scratch directories that cannot be created under `TMPDIR` abort with an actionable error
- A `set_up_before_script` that changes directory no longer drops the remaining test files
- A test path combining a glob and a space (`./bashunit "my tests/*"`) is no longer word-split
- An unreadable or truncated parallel `.result` file counts as a failed test instead of aborting aggregation
- `release.sh` reports a failed rollback as failed
- Docs: the quickstart's duration format, and the real `BASHUNIT_SHOW_EXECUTION_TIME` default (`auto`)

### Removed
- `bin/create-pr`, an unreferenced vendored copy of [Chemaclass/create-pr](https://github.com/Chemaclass/create-pr); use the upstream tool (#867)
- Dead internal helpers with no remaining callers


## 👥 Contributors
- @Chemaclass
- @tricktron

## Checksum
SHA256: `d3d8ed473f414bdbcce89e215d489646461f2dc90796d98dba42d9768036900c`

**Full Changelog:** [0.43.0...0.44.0](https://github.com/TypedDevs/bashunit/compare/0.43.0...0.44.0)

