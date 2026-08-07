---
title: Postman Onboarding Repo Sync
date: 2026-08-07 14:45:36 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-repo-sync-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-repo-sync
version: v2.9.3
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the process of exporting Postman collections and environments into a repository and setting up CI, mock servers, and monitors around them. It solves the problem of ensuring that project assets are centralized and managed within the codebase, facilitating easier collaboration and deployment. The action provides capabilities to export projects, manage environments, and configure CI settings for integration with GitHub Actions.
---


Version updated for **https://github.com/postman-cs/postman-repo-sync-action** to version **v2.9.3**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-repo-sync) to find the latest changes.

## Action Summary

This GitHub Action automates the process of exporting Postman collections and environments into a repository and setting up CI, mock servers, and monitors around them. It solves the problem of ensuring that project assets are centralized and managed within the codebase, facilitating easier collaboration and deployment. The action provides capabilities to export projects, manage environments, and configure CI settings for integration with GitHub Actions.

## What's Changed

## What's Changed
* ci(release): port automatic release cut by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/102
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/103
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/104
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/105
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/106
* chore(deps): bump the actions group and follow the pins by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/107
* Fix public mock validation before reuse by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/108
* feat: add manual mock validation environment by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/109
* fix: pin preview test branch context by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/110
* feat: support private mocks with runtime credential injection by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/111
* fix: bind private mock runtime auth in production by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/112
* feat: make private mock credentials self-service across CI, app, and runner by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/113
* fix: execute private mock auth hooks for segmented hosts by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/114
* fix: resolve templated private mock URLs before auth by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/115
* perf(repo-sync): bound artifact acquisition reads by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/116
* fix(deps): replace deprecated Faker with compatible v6 by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/117
* fix(repo-mutation): reconcile stale branch before push by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/118
* fix(repo-mutation): resolve generated artifact conflicts by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/119
* fix(release): notify the composite after Repo Sync publish by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/121
* feat: add generated asset sync control by @sean-riney in https://github.com/postman-cs/postman-repo-sync-action/pull/123
* fix(ci): split dist parity and add Dependabot writeback by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/126
* fix(mock): default mocks to private by @andrewpostymt in https://github.com/postman-cs/postman-repo-sync-action/pull/125
* fix(ci): use checkout v7 tag for writeback by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/128


**Full Changelog**: https://github.com/postman-cs/postman-repo-sync-action/compare/v2.1.15...v2.9.3

## What's Changed
* ci(release): port automatic release cut by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/102
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/103
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/104
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/105
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/106
* chore(deps): bump the actions group and follow the pins by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/107
* Fix public mock validation before reuse by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/108
* feat: add manual mock validation environment by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/109
* fix: pin preview test branch context by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/110
* feat: support private mocks with runtime credential injection by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/111
* fix: bind private mock runtime auth in production by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/112
* feat: make private mock credentials self-service across CI, app, and runner by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/113
* fix: execute private mock auth hooks for segmented hosts by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/114
* fix: resolve templated private mock URLs before auth by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/115
* perf(repo-sync): bound artifact acquisition reads by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/116
* fix(deps): replace deprecated Faker with compatible v6 by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/117
* fix(repo-mutation): reconcile stale branch before push by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/118
* fix(repo-mutation): resolve generated artifact conflicts by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/119
* fix(release): notify the composite after Repo Sync publish by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/121
* feat: add generated asset sync control by @sean-riney in https://github.com/postman-cs/postman-repo-sync-action/pull/123
* fix(ci): split dist parity and add Dependabot writeback by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/126
* fix(mock): default mocks to private by @andrewpostymt in https://github.com/postman-cs/postman-repo-sync-action/pull/125
* fix(ci): use checkout v7 tag for writeback by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/128


**Full Changelog**: https://github.com/postman-cs/postman-repo-sync-action/compare/v2.1.15...v2.9.3

## What's Changed
* ci(release): port automatic release cut by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/102
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/103
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/104
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/105
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/106
* chore(deps): bump the actions group and follow the pins by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/107
* Fix public mock validation before reuse by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/108
* feat: add manual mock validation environment by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/109
* fix: pin preview test branch context by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/110
* feat: support private mocks with runtime credential injection by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/111
* fix: bind private mock runtime auth in production by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/112
* feat: make private mock credentials self-service across CI, app, and runner by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/113
* fix: execute private mock auth hooks for segmented hosts by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/114
* fix: resolve templated private mock URLs before auth by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/115
* perf(repo-sync): bound artifact acquisition reads by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/116
* fix(deps): replace deprecated Faker with compatible v6 by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/117
* fix(repo-mutation): reconcile stale branch before push by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/118
* fix(repo-mutation): resolve generated artifact conflicts by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/119
* fix(release): notify the composite after Repo Sync publish by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/121
* feat: add generated asset sync control by @sean-riney in https://github.com/postman-cs/postman-repo-sync-action/pull/123
* fix(ci): split dist parity and add Dependabot writeback by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/126
* fix(mock): default mocks to private by @andrewpostymt in https://github.com/postman-cs/postman-repo-sync-action/pull/125
* fix(ci): use checkout v7 tag for writeback by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/128


**Full Changelog**: https://github.com/postman-cs/postman-repo-sync-action/compare/v2.1.15...v2.9.3

## What's Changed
* ci(release): port automatic release cut by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/102
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/103
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/104
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/105
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/106
* chore(deps): bump the actions group and follow the pins by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/107
* Fix public mock validation before reuse by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/108
* feat: add manual mock validation environment by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/109
* fix: pin preview test branch context by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/110
* feat: support private mocks with runtime credential injection by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/111
* fix: bind private mock runtime auth in production by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/112
* feat: make private mock credentials self-service across CI, app, and runner by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/113
* fix: execute private mock auth hooks for segmented hosts by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/114
* fix: resolve templated private mock URLs before auth by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/115
* perf(repo-sync): bound artifact acquisition reads by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/116
* fix(deps): replace deprecated Faker with compatible v6 by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/117
* fix(repo-mutation): reconcile stale branch before push by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/118
* fix(repo-mutation): resolve generated artifact conflicts by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/119
* fix(release): notify the composite after Repo Sync publish by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/121
* feat: add generated asset sync control by @sean-riney in https://github.com/postman-cs/postman-repo-sync-action/pull/123
* fix(ci): split dist parity and add Dependabot writeback by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/126
* fix(mock): default mocks to private by @andrewpostymt in https://github.com/postman-cs/postman-repo-sync-action/pull/125
* fix(ci): use checkout v7 tag for writeback by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/128


**Full Changelog**: https://github.com/postman-cs/postman-repo-sync-action/compare/v2.1.15...v2.9.3
