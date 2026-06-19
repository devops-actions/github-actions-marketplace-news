---
title: Setup nub
date: 2026-06-19 07:06:43 +00:00
tags:
  - nubjs
  - GitHub Actions
draft: false
repo: https://github.com/nubjs/setup-nub
marketplace: https://github.com/marketplace/actions/setup-nub
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/nubjs/setup-nub** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-nub) to find the latest changes.

## What's Changed

First working release of setup-nub. Use via `nubjs/setup-nub@v0` (floating) or `@v0.1.0` (pinned).

Includes the auth-contract fixes (bare-scope handling, authToken path) and a Windows backslash path fix. Smoke suite is green (18/18 across ubuntu/macos/windows).

Supersedes the earlier `v1`/`v1.0.0` tags, which pointed at a pre-fix commit whose smoke run failed. The floating `v1` tag has been removed; do not use it.
