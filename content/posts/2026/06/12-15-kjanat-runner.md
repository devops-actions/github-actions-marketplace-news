---
title: Setup runner cli
date: 2026-06-12 15:27:30 +00:00
tags:
  - kjanat
  - GitHub Actions
draft: false
repo: https://github.com/kjanat/runner
marketplace: https://github.com/marketplace/actions/setup-runner-cli
version: v0.13.0
dependentsNumber: "6"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/kjanat/runner** to version **v0.13.0**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-runner-cli) to find the latest changes.

## What's Changed

### Added

- `runner doctor` (and `info --json`) now classify PATH-probe hits that
  are Volta shims and resolve them to the real provisioned binary via
  `volta which`: the `PATH probe` line shows
  `npm=<shim> -> <real bin> (volta)`, or
  `(volta shim, not provisioned)` when Volta fronts a tool it has no
  version of. JSON gains an additive `signals.node.volta_shims` map
  (omitted on hosts without Volta; no schema bump). Display only —
  execution still spawns the shim, which performs Volta's per-project
  version selection.

### Changed

- `runner install` now honors the `--pm`/`RUNNER_PM` override: when set,
  only that package manager installs (previously the override was
  ignored and every detected PM installed — e.g. a project with both
  `bun.lock` and `deno.json` always ran `deno install` too, writing an
  unwanted `deno.lock`). An override naming a PM that detection did not
  find refuses the install with exit code 2. runner.toml
  `[pm].node`/`[pm].python` continue to scope script dispatch only.
- Invalid `--pm`/`RUNNER_PM`/`--runner`/`RUNNER_RUNNER` values now produce
  a readable error: the message names the source that carried the value,
  escapes control characters (no more raw ANSI codes), truncates long
  garbage, and — when the value contains line breaks — hints that it
  looks like captured command output with the correctly quoted PowerShell
  spelling. (An unquoted `$env:RUNNER_PM=deno` executes deno and assigns
  its REPL banner to the variable.)

### Fixed

- `runner doctor` no longer dies when a `RUNNER_*` override variable
  holds an unparseable value — the condition it exists to diagnose. The
  invalid value is ignored for the report and surfaced as an `env:`
  warning (human output and the `warnings` array of `doctor --json`,
  additively — no schema bump). Every other command, and an explicit bad
  `--pm`/`--runner` flag even on doctor, still fails fast.
- Node version constraints are now evaluated with real range semantics
  (via the `semver` crate) instead of a prefix match that treated
  `>=22.22.2` as `=22.22.2`. Operators (`>=`, `>`, `<=`, `<`, `=`),
  caret/tilde ranges, space-separated AND comparators, `||` unions,
  hyphen ranges, and `x` wildcards all match per node-semver rules, so
  `engines.node: ">=22.22.2"` no longer warns on Node 22.22.3 or 25.9.0.
  Bare versions (`.nvmrc` `20.11`) keep the stricter
  prefix-at-segment-boundary behavior; unevaluable inputs (`lts/*`) fall
  back to the previous prefix match.
- Task dispatch now prepends every existing `node_modules/.bin` between
  the project directory and the filesystem root (nearest first) to the
  child's `PATH`, the way `npm run` / `pnpm run` / `bun run` do for
  `package.json` scripts. Tools that runner spawns directly — `turbo`
  for `turbo.json` tasks, and the bare-binary exec fallback — used to
  inherit the shell's `PATH` unchanged, so a devDependency-only `turbo`
  failed with `Error: No such file or directory (os error 2)` unless it
  was also installed globally. On Windows, bare program names are
  additionally re-resolved against those bin dirs with `PATHEXT`, since
  `CreateProcessW` would never find the `.cmd` shims npm and pnpm
  install there. Local bins now shadow global installs for the spawned
  task and everything it launches, matching Node package-manager
  semantics.
- The no-argument project-info banner no longer leaks the Windows `.exe`
  suffix in its title line (e.g. `run.exe 0.12.2`). It now shows the same
  `run` / `runner` identity as `--version`, `--help`, and the `Usage:`
  line. The banner had its own copy of the arg0-parsing helper that
  skipped the `.exe` stripping done everywhere else; it now reuses the
  canonical `bin_name_from_arg0`.
- `runner man` now works on Windows under `--features man` builds. The
  subcommand was gated `not(windows)`, so with `external_subcommand` in
  play it silently degraded to task dispatch (`bun man` → "Script not
  found") instead of rendering. Rendering is pure `clap_mangen` with no
  OS-specific code, so the gate bought nothing and is gone.
- `install.sh` runs under any POSIX `sh`. It carried a `#!/usr/bin/env
  bash` shebang, but `curl … | sh` ignores the shebang, so the bash-only
  `set -o pipefail` aborted on line 2 under dash/busybox — the default
  `/bin/sh` on the `-musl` targets. Rewritten POSIX-clean. It also picks
  the install dir more intelligently now: reuse an already-installed
  runner's directory (verified by its `-V` banner, so a system `run`/
  `runner` is never clobbered), otherwise prefer `~/bin` or
  `~/.local/bin` already on `PATH` (then one that exists), falling back
  to `~/.local/bin`.

## What's Changed
* fix(info): strip Windows .exe suffix from project-info banner title by @kjanat in https://github.com/kjanat/runner/pull/44
* fix(run): put project-local node_modules/.bin dirs on the task's PATH by @kjanat in https://github.com/kjanat/runner/pull/47
* Version range semantics, PM-override install, self-diagnosing errors, doctor resilience, Volta shims by @kjanat in https://github.com/kjanat/runner/pull/45


**Full Changelog**: https://github.com/kjanat/runner/compare/v0.12.2...v0.13.0

