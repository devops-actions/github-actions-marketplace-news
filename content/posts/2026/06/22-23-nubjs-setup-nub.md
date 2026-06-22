---
title: Setup nub
date: 2026-06-22 23:49:59 +00:00
tags:
  - nubjs
  - GitHub Actions
draft: false
repo: https://github.com/nubjs/setup-nub
marketplace: https://github.com/marketplace/actions/setup-nub
version: v0.4.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/nubjs/setup-nub** to version **v0.4.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-nub) to find the latest changes.

## What's Changed

True executable/PATH parity with actions/setup-node: the specified Node version is now fronted on the global PATH, so bare `node`/`npm`/`npx`/`corepack` in every downstream step resolve to that version — no wrapper needed. Swapping `actions/setup-node` for `nubjs/setup-nub` now behaves identically.

- Fronts the resolved Node bin dir on `$GITHUB_PATH` (runtime-derived, all OSes), ahead of nub's own bin.
- An explicit `node-version` is authoritative for the PATH (nub still runs the project pin at `nub` invocation).
- Problem matchers for tsc + eslint; `NODE_AUTH_TOKEN` re-export.
- 3-OS differential smoke vs an actions/setup-node control.

The floating `v0` tag now points here.
