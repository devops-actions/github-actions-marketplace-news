---
title: setup-pawl
date: 2026-08-20 14:05:43 +00:00
tags:
  - tiangong-dev
  - GitHub Actions
draft: false
repo: https://github.com/tiangong-dev/pawl
marketplace: https://github.com/marketplace/actions/setup-pawl
version: v0.8.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  pawl is a tool that helps developers automate regression testing by measuring and comparing various dimensions of their codebase. It measures key metrics such as file length, function complexity, coverage, and `as any` count to ensure that changes do not introduce regressions. If any dimension shows an improvement or no change, the action exits successfully; otherwise, it fails and alerts developers about potential regressions.
---


Version updated for **https://github.com/tiangong-dev/pawl** to version **v0.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-pawl) to find the latest changes.

## Action Summary

pawl is a tool that helps developers automate regression testing by measuring and comparing various dimensions of their codebase. It measures key metrics such as file length, function complexity, coverage, and `as any` count to ensure that changes do not introduce regressions. If any dimension shows an improvement or no change, the action exits successfully; otherwise, it fails and alerts developers about potential regressions.

## What's Changed

## Changes since `v0.7.1` — `npm i -D @pawl-tools/cli@0.8.0`

Prebuilt binaries are attached below.

- chore: bump version to 0.8.0 (#34) (8f0502d)
- feat: harden measurement provenance and agent workflows (#33) (f44d59e)
- refactor!: rename `baseline-guard` to `guard` (#32) (718bc50)
- feat!: replace `pawl agent-md` with `pawl agent`, which installs the block (#31) (ea518a7)
- ci: have the release run say whether the Marketplace tick is needed (#30) (9b1768e)
- ci: surface the manual Marketplace step in the release summary (#29) (6cd0541)

