---
title: Setup runner cli
date: 2026-06-27 06:35:48 +00:00
tags:
  - kjanat
  - GitHub Actions
draft: false
repo: https://github.com/kjanat/runner
marketplace: https://github.com/marketplace/actions/setup-runner-cli
version: v0.14.3
dependentsNumber: "9"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/kjanat/runner** to version **v0.14.3**.

- This action is used across all versions by **9** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-runner-cli) to find the latest changes.

## What's Changed

### Added

- `[install].pms` config + `RUNNER_INSTALL_PMS` env restrict which detected
  package managers `runner install` runs. In a polyglot repo where, e.g.,
  both `bun` and `deno` would write `node_modules`, `pms = ["bun"]` keeps
  install to one. A listed-but-undetected PM errors. `--pm`/`RUNNER_PM` still
  takes precedence; `[pm]` continues to scope only script dispatch.
- `runner install` and `doctor` now warn when two detected package managers
  would install into the same directory — today `node_modules` (a node PM
  plus a `nodeModulesDir`-enabled Deno). The warning points at `[install].pms`
  and is suppressed once the allowlist narrows install to a single writer.

### Changed

- Published `@runner-run/*` platform packages now carry `keywords`, a
  descriptive `description`, and a full README (instead of a thin stub).
  These are the binary sub-packages npm selects via `optionalDependencies`;
  the richer metadata raises their Socket.dev Quality score and explains the
  facade-resolution mechanism to anyone landing on them directly.

### Fixed

- `runner.toml` parsing is now forward-compatible: an unrecognized section or
  field (a typo, or a key written by a newer `runner`) is ignored with a
  warning instead of aborting the command. Previously an unknown key was a
  hard parse error, so a config written by one version could brick task
  dispatch — including postinstall `run` hooks — under another. Genuine
  errors (unreadable file, malformed TOML, wrong type on a known field) still
  fail. The JSON Schema stays strict (`additionalProperties: false`) so
  editors keep flagging typos inline.

## What's Changed
* feat(install): warn on competing package-manager install collisions by @kjanat in https://github.com/kjanat/runner/pull/62
* feat(npm): enrich @runner-run/* platform metadata for Socket Quality by @kjanat in https://github.com/kjanat/runner/pull/63
* fix(config): forward-compatible runner.toml parsing (+ roll 0.14.3) by @kjanat in https://github.com/kjanat/runner/pull/64


**Full Changelog**: https://github.com/kjanat/runner/compare/v0.14.2...v0.14.3

