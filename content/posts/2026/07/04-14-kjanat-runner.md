---
title: Setup runner cli
date: 2026-07-04 14:32:25 +00:00
tags:
  - kjanat
  - GitHub Actions
draft: false
repo: https://github.com/kjanat/runner
marketplace: https://github.com/marketplace/actions/setup-runner-cli
version: v0.16.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/kjanat/runner** to version **v0.16.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-runner-cli) to find the latest changes.

## What's Changed

### Fixed

- `npx runner-run` now resolves to the full CLI. Added a `runner-run` bin
  alias; previously npx failed with `could not determine executable to run`
  because neither shipped bin (`run`, `runner`) matched the package name.
  (Reaches users only on this published release; `npx runner-run@0.16.0`
  stays broken.)
- The no-prebuilt-binary error now names the bun `minimumReleaseAge` pitfall:
  its age gate also filters the `@runner-run/*` platform packages, which must
  be excluded by exact name (no scope/glob), not just the `runner-run` facade.

### Changed

- Internal: the `run` alias binary now dispatches through the same
  `dispatch` entry point as `runner`, building a typed `Cli` from the parsed
  alias rather than keeping a second resolver-override and command-dispatch
  copy in `dispatch_run_alias`. The alias keeps its bespoke help/version
  forwarding, flat completions, and `run` man page. One behavior delta: a
  bare `run -k`/`-K` (a chain-failure flag with no task and no `-s`/`-p`)
  now maps to the project dashboard (`command: None`) and drops the inert
  chain-failure flag before resolving overrides, so it no longer errors when
  the opposite polarity is supplied out-of-band via
  `RUNNER_KILL_ON_FAIL`/`RUNNER_KEEP_GOING` or a `[chain]` config. The old
  eager builder kept the flag and hit the cross-source conflict; the
  dashboard never consults the failure policy, so dropping it is correct. See
  https://github.com/kjanat/runner/issues/52.

## What's Changed
* refactor(run): unify run alias dispatch; do not remove RunAliasCli by @kjanat in https://github.com/kjanat/runner/pull/72


**Full Changelog**: https://github.com/kjanat/runner/compare/v0.16.0...v0.16.1

