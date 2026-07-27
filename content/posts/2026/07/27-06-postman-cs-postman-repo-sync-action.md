---
title: Postman Onboarding Repo Sync
date: 2026-07-27 06:53:26 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-repo-sync-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-repo-sync
version: v2.4.2
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the process of exporting Postman collections and environments into a repository. It also sets up CI, mock servers, and monitors around these assets, helping to streamline the onboarding of new projects or applications. The action uses Postman API credentials to interact with Postman resources and GitHub actions to manage repository permissions and secrets.
---


Version updated for **https://github.com/postman-cs/postman-repo-sync-action** to version **v2.4.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-repo-sync) to find the latest changes.

## Action Summary

This GitHub Action automates the process of exporting Postman collections and environments into a repository. It also sets up CI, mock servers, and monitors around these assets, helping to streamline the onboarding of new projects or applications. The action uses Postman API credentials to interact with Postman resources and GitHub actions to manage repository permissions and secrets.

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


**Full Changelog**: https://github.com/postman-cs/postman-repo-sync-action/compare/v2.1.15...v2.4.2
