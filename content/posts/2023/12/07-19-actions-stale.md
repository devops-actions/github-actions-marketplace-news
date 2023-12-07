---
title: Close Stale Issues
date: 2023-12-07 19:15:39 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: actions/stale
marketplace: https://github.com/marketplace/actions/close-stale-issues
version: v9.0.0
dependentsNumber: "123,990"
---


Version updated for **actions/stale** to version **v9.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **123,990** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/close-stale-issues) to find the latest changes.

## Release notes

## Breaking Changes
1. Action is now stateful: If the action ends because of [operations-per-run](https://github.com/actions/stale#operations-per-run) then the next run will start from the first unprocessed issue skipping the issues processed during the previous run(s). The state is reset when all the issues are processed. This should be considered for scheduling workflow runs.
2. Version 9 of this action updated the runtime to Node.js 20. All scripts are now run with Node.js 20 instead of Node.js 16 and are affected by any breaking changes between Node.js 16 and 20.

## What Else Changed
1. Performance optimization that removes unnecessary API calls by @dsame [#1033](https://github.com/actions/stale/pull/1033/) fixes [#792](https://github.com/actions/stale/issues/792)
2. Logs displaying current github API rate limit by @dsame [#1032](https://github.com/actions/stale/pull/1032) addresses [#1029](https://github.com/actions/stale/issues/1029)

For more information, please read the [action documentation](https://github.com/actions/stale#readme) and its [section about statefulness](https://github.com/actions/stale#statefulness)

## New Contributors
* @jmeridth made their first contribution in https://github.com/actions/stale/pull/984
* @nikolai-laevskii made their first contribution in https://github.com/actions/stale/pull/1020
* @dusan-trickovic made their first contribution in https://github.com/actions/stale/pull/1056
* @aparnajyothi-y made their first contribution in https://github.com/actions/stale/pull/1110

**Full Changelog**: https://github.com/actions/stale/compare/v8...v9.0.0
