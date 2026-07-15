---
title: cowork-harness
date: 2026-07-15 14:47:52 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.0.5
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  cowork-harness is a technical tool designed to test Claude Cowork skills through scripting and CI pipelines. It reproduces the observable runtime contract closely enough to allow testing skills across various scenarios without using the locked Desktop application, thereby simulating sealed filesystems, default-deny egress, and MCP-only cross-boundary limitations. This helps in identifying issues related to behavior and restrictions before deploying a skill in production environments.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.0.5**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

cowork-harness is a technical tool designed to test Claude Cowork skills through scripting and CI pipelines. It reproduces the observable runtime contract closely enough to allow testing skills across various scenarios without using the locked Desktop application, thereby simulating sealed filesystems, default-deny egress, and MCP-only cross-boundary limitations. This helps in identifying issues related to behavior and restrictions before deploying a skill in production environments.

## What's Changed


Patch: routine pushes to `main` no longer red CI on a repo without `ANTHROPIC_API_KEY` — the live
scenario suite is best-effort now — plus a CodeQL cleanup in the release tooling. Internal tooling +
CI only; no runtime or API change.

### Changed

- `scripts/release-preflight.ts`: `changelogHasVersionSection` now finds the CHANGELOG heading with a
  literal line-prefix match instead of a regex assembled from the version string. Behavior is
  unchanged — the version is already `isValidSemver`-gated to `X.Y.Z` before this runs — and it drops
  a redundant, only-partially-escaped regex flagged by CodeQL (`js/incomplete-sanitization`). Internal
  release tooling only; no runtime or API change.
- **CI: the live scenario suite (`scenarios` job) is now best-effort, not a publish gate.** When
  `ANTHROPIC_API_KEY` is absent it soft-skips green on every event — pushes to `main` included —
  instead of hard-failing the run, so routine pushes to `main` (dependency bumps, docs, small fixes)
  no longer turn CI red on a repo without the secret set. A loud `⚠️ NOT live-validated` marker still
  flags any run that skipped live inference. The `SKIP_LIVE_SCENARIOS` admin-override variable is
  removed (nothing hard-fails, so there is nothing to override). Trade-off: `release.yml` still gates
  publish on `ci.yml` being green for the tagged commit, but a green `ci.yml` no longer proves the
  scenarios were validated against a real model — set the `ANTHROPIC_API_KEY` repo secret to actually
  run the live suite in CI. No runtime or API change.



## What's Changed
* chore(deps-dev): bump the npm-minor-patch group across 1 directory with 4 updates by @dependabot[bot] in https://github.com/yaniv-golan/cowork-harness/pull/44
* chore(deps): bump the actions group across 1 directory with 3 updates by @dependabot[bot] in https://github.com/yaniv-golan/cowork-harness/pull/47
* release: 1.0.5 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/48


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1...v1.0.5
