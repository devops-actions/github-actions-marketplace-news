---
title: Postman Onboarding Repo Sync
date: 2026-08-29 14:02:13 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-repo-sync-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-repo-sync
version: v2.10.9
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the process of exporting Postman collections, environments, and monitoring configurations into a repository. It helps streamline API development by integrating CI/CD pipelines, mocks, and monitors directly from Postman into the codebase. The action supports both monorepos and individual projects, and it can handle various synchronization modes to ensure that changes are managed efficiently.
---


Version updated for **https://github.com/postman-cs/postman-repo-sync-action** to version **v2.10.9**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-repo-sync) to find the latest changes.

## Action Summary

This GitHub Action automates the process of exporting Postman collections, environments, and monitoring configurations into a repository. It helps streamline API development by integrating CI/CD pipelines, mocks, and monitors directly from Postman into the codebase. The action supports both monorepos and individual projects, and it can handle various synchronization modes to ensure that changes are managed efficiently.

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
* docs: make gate commands independently verifiable by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/134
* feat: publish as @postman/onboarding-repo-sync with best-effort npm publish by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/140
* ci: install restricted dependencies without npm token by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/141
* fix(deps): move private @postman platform packages to devDependencies by @pavan-nelakuditi in https://github.com/postman-cs/postman-repo-sync-action/pull/144
* feat: support monorepo working directories by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/145
* fix(release): repair stale rolling alias by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/146
* fix(release): use workflow-capable tag token by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/147
* fix(release): use writable workflow token by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/148
* fix(release): scope workflow token to repository by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/149
* fix: fail when artifact commit is rejected by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/150
* fix(deps): migrate automation core scope by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/151
* chore: ignore local plans by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/153
* fix(security): harden secret persistence checks by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/154
* fix(security): harden repository and asset trust boundaries by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/155
* fix(gc): reconcile nameless preview collections by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/156
* fix(gc): replace export scans with inventory snapshot by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/157
* fix(release): pin authenticated E2E provider by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/158
* fix(release): let new cuts supersede stale evidence by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/159
* fix: avoid fresh collection export after mock creation by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/160
* fix(collections): use populated Sync snapshots by @jaredboynton in https://github.com/postman-cs/postman-repo-sync-action/pull/161


**Full Changelog**: https://github.com/postman-cs/postman-repo-sync-action/compare/v2.1.15...v2.10.9
