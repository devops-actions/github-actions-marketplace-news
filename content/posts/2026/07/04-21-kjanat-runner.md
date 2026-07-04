---
title: Setup runner cli
date: 2026-07-04 21:57:54 +00:00
tags:
  - kjanat
  - GitHub Actions
draft: false
repo: https://github.com/kjanat/runner
marketplace: https://github.com/marketplace/actions/setup-runner-cli
version: v0.17.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/kjanat/runner** to version **v0.17.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-runner-cli) to find the latest changes.

## What's Changed

### Added

- FQN task syntax: the `root:<source>#<name>` identity that `doctor --json` /
  `why --json` print for a task is now runnable —
  `run 'root:package.json#deno:importsmap'` (the `root:` scope prefix is
  optional) dispatches that exact task. Every source label of every schema
  version round-trips, including v3's `cargo-alias`, which previously named a
  task no syntax could invoke.
- `runner why` interprets its argument exactly like `run` does — qualified
  syntax (`why deno:lint`), FQN (`why root:package.json#build`), and the
  colon-name fallback below — so it explains the very dispatch `run` would
  perform instead of reporting "no candidates" for tokens `run` accepts.
- Makefile descriptions from the inline self-documenting form
  (`build: deps ## Build the project`), the idiom `##` help targets are built
  on. The preceding-line `## doc` form still wins when both are present.

### Changed

- A qualified or FQN miss (`deno:nope`, `package.json#nope`) is now a hard
  error in every path. Previously an FQN token fell through to the PM-exec
  fallback, where bunx/npx treated it as a package spec and resolved it off
  the network — a typo could hang on registry resolution or download an
  arbitrary package. Bare unmatched names still fall through; `user/repo#ref`
  package specs still work.
- Single runs and chain pre-validation (`run -p`/`-s`) report a qualified
  miss with one unified message, and miss errors add a note when a source's
  task list failed to load (a broken `package.json` used to produce only a
  misleading `did you mean …?` hint).
- A CLI chain-failure flag now beats the opposite polarity from a lower
  layer: `run -s a b -k` with `[chain] kill_on_fail = true` in `runner.toml`
  keeps going instead of aborting with a cross-source conflict — the config
  polarity had no command-line escape hatch. Same-source conflicts
  (`-k -K`, both env vars, both config keys) still error.
- Boolean `RUNNER_*` env vars (`RUNNER_QUIET`, `RUNNER_EXPLAIN`,
  `RUNNER_NO_WARNINGS`, `RUNNER_KEEP_GOING`, `RUNNER_KILL_ON_FAIL`) warn and
  are ignored when set to an unrecognized token. `RUNNER_KEEP_GOING=flase`
  (typo'd "false") used to silently read as truthy — the opposite of the
  intent. Recognized, case-insensitive: `1`/`true`/`yes`/`on` and
  `0`/`false`/`no`/`off`.

### Fixed

- `package.json` scripts whose names start with a source label
  (`deno:importsmap`, `cargo:check`, …) are reachable by their bare name
  again. The qualifier parser claimed the prefix (`deno` → deno.json), the
  qualified lookup missed, and dispatch fell through to PM-exec; an exact
  full-name match now wins on a qualified miss. A genuine `deno.json` task
  still outranks the colon-named script when both exist.
- Streaming parallel chains (`run -p`, the default outside GitHub Actions)
  no longer hang when a task exits but leaves a backgrounded descendant
  holding the inherited stdout/stderr pipe (`some-daemon & exit 0`). Pipe
  readers are now drained with the same bounded grace the grouped path
  already used, instead of an unbounded join that blocked until the
  descendant died.
- A `try_wait` error while polling a parallel chain no longer orphans the
  already-spawned sibling processes and their reader threads; both parallel
  paths route the error through the same kill-and-reap cleanup as a spawn
  failure.
- A malformed `devEngines` value in `package.json` (e.g. a Corepack-style
  string where the spec wants an object) no longer erases every script and
  the `packageManager` signal behind a false `not valid JSON` warning. The
  field degrades to "absent"; the rest of the manifest parses normally.
- The Taskfile fallback parser (used when the `task` binary is absent) is a
  real YAML parse now: quoted and namespaced task names (`"build:prod":`)
  are no longer silently dropped, and a Taskfile that fails to parse
  surfaces a `failed to read tasks` warning instead of silently yielding
  zero tasks.
- A Makefile target whose header appears twice (legal in make) is listed
  once instead of twice; a later documented duplicate still contributes the
  description when the first occurrence had none.

**Full Changelog**: https://github.com/kjanat/runner/compare/v0.16.1...v0.17.0

