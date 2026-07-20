---
title: Install bashunit
date: 2026-07-20 23:06:24 +00:00
tags:
  - TypedDevs
  - GitHub Actions
draft: false
repo: https://github.com/TypedDevs/bashunit
marketplace: https://github.com/marketplace/actions/install-bashunit
version: 0.42.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The bashunit GitHub Action is a lightweight, fast testing framework for Bash scripts. It provides numerous assertions, spies, mocks, data providers, and snapshots to simplify testing and improve developer experience. The action supports Bash 3.0+ and can be installed with a simple script and used to test scripts in your project.
---


Version updated for **https://github.com/TypedDevs/bashunit** to version **0.42.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-bashunit) to find the latest changes.

## Action Summary

The bashunit GitHub Action is a lightweight, fast testing framework for Bash scripts. It provides numerous assertions, spies, mocks, data providers, and snapshots to simplify testing and improve developer experience. The action supports Bash 3.0+ and can be installed with a simple script and used to test scripts in your project.

## What's Changed


## 🐛 Bug Fixes
- A failing `set_up_before_script`/`set_up` now fails every test in the file with the hook's error, keeps the totals consistent, and lets the suite continue — a strict test file can no longer abort the whole run mid-suite (#836)
- Run-mode flags (`--parallel`, `--simple`, `--strict`, `--retry`, `--seed`, report paths, …) no longer leak through the environment into nested bashunit runs, so a script under test that calls bashunit gets default behavior; `BASHUNIT_*=…` configuration is unchanged (#834, #837)
- `install.sh` fails fast: a failed download, clone, build or copy aborts with a clear error instead of reporting success, and a failed beta clone no longer runs `build.sh` in the caller's directory (#840)
- `./build.sh --verify` exits non-zero when the built binary fails the suite, and the verification run no longer crashes mid-suite from tests resolving repo paths against the build folder (#834)
- `./bashunit bench` works again from a repository checkout (the dev entrypoint never sourced `src/benchmark.sh`) (#834)
- Snapshot placeholders (`::ignore::`) now work on systems without perl; multi-line placeholders still need perl (#823)
- Runs no longer leak a scratch directory under `$TMPDIR/bashunit/run/` — it is removed on exit, including `--version`/`--help`, subcommands and Ctrl-C (#811)
- `bashunit::helper::get_function_line_number` no longer disables `extdebug` for its caller (#808)
- `--test-timeout` no longer intermittently reports a fast test as timed out; the watchdog signals by pid and skips a test that already completed

## ✨ Improvements
- `watch` subcommand no longer fails when neither `inotifywait` nor `fswatch` is installed — it falls back to pure-shell polling (interval via `BASHUNIT_WATCH_INTERVAL`, default `2`s) instead of exiting (#779)
- Shell tab-completion scripts for bash and zsh under `completions/` (subcommands, `test` flags with value hints, assertion names), kept in sync by an anti-drift CI test (#778)
- `--rerun-failed` (`BASHUNIT_RERUN_FAILED`) replays only the previously failing tests, recorded in `.bashunit/last-failed`; composes with `--filter`/`--tag`/`--parallel` and falls back to the full suite when empty (add `.bashunit/` to `.gitignore`) (#776)
- Optional nightly `coverage.yml` workflow publishes a shields.io coverage badge from `--coverage` over the unit suite; schedule/manual only, never gates merges (#754)
- `--jobs auto` / `-j auto` caps parallel concurrency at the CPU core count (portable across Linux/macOS/BSD); the default stays unlimited (#766)

## 🛠️ Changes
- `build.sh` hardened: runs under `set -euo pipefail`, derives the embed list from the entrypoint's `source` order (single source of truth), guards against duplicate embeds and missing doc markers, drops `eval`, and gates every build behind `bash -n` (#834)
- `bashunit doc` no longer forks an `echo | sed` pipe per line of the assertion docs: a single awk pass prints the same bytes in ~50ms instead of ~5s (#832)
- Multi-file runs are no longer quadratic in file count; bashunit's own 63-file unit suite: ~64s -> ~22s sequential, ~26s -> ~7s parallel (#829)
- Major performance work with no behaviour change (near fork-free hot paths, cached snapshot/`--tag` scans, single-pass failure rendering). On bash 3.2: 100x10 `assert_equals` ~1.50s -> ~0.76s, 500 snapshot assertions ~7.5s -> ~3.0s, 100 tagged tests ~2.92s -> ~0.68s, acceptance suite ~61s -> ~17s (#761-#764, #772-#775, #798, #801-#807, #809, #810, #813, #817)
- Per-test timing now defaults to `auto` (`BASHUNIT_SHOW_EXECUTION_TIME=true|false|auto`): shown only when the clock is fork-free, avoiding `perl` forks on bash 3.2; `--profile`/`--verbose`/reports still measure (see `adrs/adr-008-auto-skip-per-test-timing.md`) (#765)
- `assert_equals`/`assert_same` failures with multiline values now render a git word-diff below the header (requires git, opt out with `BASHUNIT_NO_DIFF=true`, respects `--no-color`); machine reports keep the raw values (#777)


## 👥 Contributors
- @Chemaclass

## Checksum
SHA256: `a0e39761363d8b6876059cd5927cd4bed1b578be616c5490a8bf4102284a308c`

**Full Changelog:** [0.41.0...0.42.0](https://github.com/TypedDevs/bashunit/compare/0.41.0...0.42.0)

