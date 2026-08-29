---
title: Smyklot
date: 2026-08-29 01:44:05 +00:00
tags:
  - smykla-skalski
  - GitHub Actions
draft: false
repo: https://github.com/smykla-skalski/smyklot
marketplace: https://github.com/marketplace/actions/smyklot
version: v1.50.0
dependentsNumber: "2"
actionType: Docker
actionSummary: |
  Smyklot is a GitHub App that automates pull request approvals and merges based on the repository's CODEOWNERS file. It supports multiple command formats, allows for explicit merge methods, provides reaction-based commands, and includes features for cleanup and approval deduplication. The action minimizes permissions and can be run as a GitHub Action or as a webhook service covering all repositories where it is installed.
---


Version updated for **https://github.com/smykla-skalski/smyklot** to version **v1.50.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/smyklot) to find the latest changes.

## Action Summary

Smyklot is a GitHub App that automates pull request approvals and merges based on the repository's CODEOWNERS file. It supports multiple command formats, allows for explicit merge methods, provides reaction-based commands, and includes features for cleanup and approval deduplication. The action minimizes permissions and can be run as a GitHub Action or as a webhook service covering all repositories where it is installed.

## What's Changed

## [1.50.0](https://github.com/smykla-skalski/smyklot/compare/v1.49.1...v1.50.0) (2026-08-28)

### Features

* **sync:** configure preserve-first file formatting ([#333](https://github.com/smykla-skalski/smyklot/issues/333)) ([c88a4cc](https://github.com/smykla-skalski/smyklot/commit/c88a4cc5cd33a492988809141defb4998679657f))

### Bug Fixes

* **deps:** update github.com/tailscale/hujson digest to b80ff77 ([#334](https://github.com/smykla-skalski/smyklot/issues/334)) ([f21349c](https://github.com/smykla-skalski/smyklot/commit/f21349cb7c6b7a5d11b2886d33040cdb57c1a521))
* **panel:** stabilize frontend release validation ([#336](https://github.com/smykla-skalski/smyklot/issues/336)) ([bb2ab68](https://github.com/smykla-skalski/smyklot/commit/bb2ab68332b7bd1118ce71524fa61464c373cffc))


## Smyklot v1.50.0

Docker image: `ghcr.io/smykla-skalski/smyklot:1.50.0`

## Changelog
* bb9b3b5115be814fa580487c07403b60413302cd chore(release): bump version to 1.50.0
* bb2ab68332b7bd1118ce71524fa61464c373cffc fix(panel): stabilize frontend release validation (#336)
* 1e386a78a8a5776418cd64d17196d1898e10c627 chore(deps): update dependency @tanstack/svelte-query to v6.1.44 (#335)
* f21349cb7c6b7a5d11b2886d33040cdb57c1a521 fix(deps): update github.com/tailscale/hujson digest to b80ff77 (#334)
* c88a4cc5cd33a492988809141defb4998679657f feat(sync): configure preserve-first file formatting (#333)


