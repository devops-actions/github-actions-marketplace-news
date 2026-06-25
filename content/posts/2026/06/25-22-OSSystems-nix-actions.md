---
title: OSSystems Nix Actions
date: 2026-06-25 22:22:58 +00:00
tags:
  - OSSystems
  - GitHub Actions
draft: false
repo: https://github.com/OSSystems/nix-actions
marketplace: https://github.com/marketplace/actions/ossystems-nix-actions
version: v1.0.4
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/OSSystems/nix-actions** to version **v1.0.4**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ossystems-nix-actions) to find the latest changes.

## What's Changed

## Feature

**Build every flake `package` by default via the new `build-packages` input.**

The action now builds every `.#packages.<system>.<name>` the flake exposes, for the runner's native `system` plus any platforms opted into via `emulate-systems` — with no `githubActions` matrix to maintain. This mirrors the existing `build-hosts` and `build-devshells` behavior. Each build is labelled `package-<name>-<system>` (used with `checks: true`).

- Default is `"true"`. Combines with `build-attrs`, `build-hosts` and `build-devshells`.
- Flakes that expose no `packages` build nothing.
- Set `build-packages: false` to opt out.

**Heads-up (default-on):** consumers pinned to `@v1` will start building their flake's `packages` on the next run. If that's not wanted, set `build-packages: false`.

