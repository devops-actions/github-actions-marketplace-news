---
title: semver-checks
date: 2026-06-14 22:21:44 +00:00
tags:
  - kyungseopk1m
  - GitHub Actions
draft: false
repo: https://github.com/kyungseopk1m/semver-checks
marketplace: https://github.com/marketplace/actions/semver-checks
version: v0.6.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/kyungseopk1m/semver-checks** to version **v0.6.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semver-checks) to find the latest changes.

## What's Changed

## Highlights

- **Analyzes packages with conditional `exports`** — entry auto-detection now walks every condition in an `exports["."]` map (`require`/`import`/`node`/`browser`/`default`, including nested ones) and accepts `.d.ts`, `.d.mts`, and `.d.cts`, falling back to the top-level `types` field. Packages such as commander, zustand, and ofetch that previously failed with "Could not find entry file" now resolve.
- **Fewer false positives on routine refactors** — converting a type alias to an interface (or back) with the same shape is no longer reported as a removed export, and a generic-parameter default rewritten to a mutually-assignable type is no longer flagged. An interface that extends a base stays conservative (inherited members are not captured), and any default change involving `any` stays major, so breaking-change detection is not weakened.

**Full Changelog**: https://github.com/kyungseopk1m/semver-checks/compare/v0.6.0...v0.6.1

