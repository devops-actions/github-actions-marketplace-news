---
title: run-digger
date: 2024-08-29 16:46:58 +00:00
tags:
  - diggerhq
  - GitHub Actions
draft: false
repo: diggerhq/digger
marketplace: https://github.com/marketplace/actions/run-digger
version: v0.6.38
dependentsNumber: "14"
---


Version updated for **diggerhq/digger** to version **v0.6.38**.
- This action is used across all versions by **14** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-digger) to find the latest changes.

## Release notes

## What's Changed
The main changes in this release are internal improvements and refactor of some tech debt within the cli to unify all the flows. We also avoid reading any diggerr.yml within the CLI to make the CLI executor more "dumb" and most of the logic lies in the orchestrator piece.

* refactor out some pacakges to libs to avoid them improting from cli pkg by @motatoes in https://github.com/diggerhq/digger/pull/1676
* improve error reporting on the RunSpec function by @motatoes in https://github.com/diggerhq/digger/pull/1679
* eliminate usage of diggerconfig in comment updater provider by @motatoes in https://github.com/diggerhq/digger/pull/1680
* rely on variables spec within orchestrator, not on workflow config by @motatoes in https://github.com/diggerhq/digger/pull/1681
* feat/unify/runspec by @motatoes in https://github.com/diggerhq/digger/pull/1683


**Full Changelog**: https://github.com/diggerhq/digger/compare/v0.6.37...v0.6.38
