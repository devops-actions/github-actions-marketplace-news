---
title: Aeroflare CI
date: 2026-07-24 19:16:01 +00:00
tags:
  - ItzEmoji
  - GitHub Actions
draft: false
repo: https://github.com/ItzEmoji/aeroflare
marketplace: https://github.com/marketplace/actions/aeroflare-ci
version: v1.13.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Summary**: The GitHub Action `ItzEmoji/aeroflare@v1` automates the process of building and pushing Nix packages to an OCI cache, providing a stateless, zero-infrastructure binary substituter. It supports pushing builds directly from CI without requiring additional tooling on the host machine. The action can build all outputs or specific ones based on changes or specified patterns, making it suitable for continuous integration workflows where Nix is used for packaging and caching dependencies.
---


Version updated for **https://github.com/ItzEmoji/aeroflare** to version **v1.13.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aeroflare-ci) to find the latest changes.

## Action Summary

**Summary**: The GitHub Action `ItzEmoji/aeroflare@v1` automates the process of building and pushing Nix packages to an OCI cache, providing a stateless, zero-infrastructure binary substituter. It supports pushing builds directly from CI without requiring additional tooling on the host machine. The action can build all outputs or specific ones based on changes or specified patterns, making it suitable for continuous integration workflows where Nix is used for packaging and caching dependencies.

## What's Changed

## [1.13.0](https://github.com/ItzEmoji/aeroflare/compare/v1.12.0...v1.13.0) (2026-07-24)


### Features

* changed builds sentinel ([06ff04d](https://github.com/ItzEmoji/aeroflare/commit/06ff04d438a0eb881ca08185eb2d2ef9a9087a5a))
* **ci:** add a `changed` builds sentinel that diffs derivations ([2af89ef](https://github.com/ItzEmoji/aeroflare/commit/2af89ef7547df586ba19bb723920c3e77a7d12fc))


### Bug Fixes

* **ci:** attribute the NUR commit to the app's own bot ([15ec767](https://github.com/ItzEmoji/aeroflare/commit/15ec767e07d069334462e5a9633278b3e9801958))
* **ci:** diff `changed` against the nearest evaluatable ancestor ([25cd1c3](https://github.com/ItzEmoji/aeroflare/commit/25cd1c37800defb7a5a62c039ebcc1cc7dfaefd5))
