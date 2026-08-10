---
title: Zuke Build
date: 2026-08-10 21:12:40 +00:00
tags:
  - zuke-build
  - GitHub Actions
draft: false
repo: https://github.com/zuke-build/zuke
marketplace: https://github.com/marketplace/actions/zuke-build
version: core-v1.36.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action provides a tagged template literal that runs processes with sensible defaults such as throwing on failure and capturing output, ensuring injection safety. It's designed to be small and explicit, focusing solely on discovering targets, building a dependency graph, sorting them topologically, and running them without additional plugins or magic.
---


Version updated for **https://github.com/zuke-build/zuke** to version **core-v1.36.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zuke-build) to find the latest changes.

## Action Summary

This GitHub Action provides a tagged template literal that runs processes with sensible defaults such as throwing on failure and capturing output, ensuring injection safety. It's designed to be small and explicit, focusing solely on discovering targets, building a dependency graph, sorting them topologically, and running them without additional plugins or magic.

## What's Changed

## [1.36.0](https://github.com/zuke-build/zuke/compare/core-v1.35.0...core-v1.36.0) (2026-08-10)


### Features

* **core:** give a run a lease, so slow and dead stop looking alike ([#322](https://github.com/zuke-build/zuke/issues/322)) ([eb4945b](https://github.com/zuke-build/zuke/commit/eb4945bfbbd30b318fcb7ee6f4bf4ca8ade29d2d))
* **core:** reap abandoned runs and give a run a deadline ([#323](https://github.com/zuke-build/zuke/issues/323)) ([f7832a7](https://github.com/zuke-build/zuke/commit/f7832a792da694d845803c8ea0dc53e67bf0974d))
* **core:** record an effect's intent before it runs, and re-drive it ([#320](https://github.com/zuke-build/zuke/issues/320)) ([909b09c](https://github.com/zuke-build/zuke/commit/909b09c35b4453b29d287e92d53e12021541589f))
