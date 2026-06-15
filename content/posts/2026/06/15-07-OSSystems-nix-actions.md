---
title: OSSystems Nix Actions
date: 2026-06-15 07:26:12 +00:00
tags:
  - OSSystems
  - GitHub Actions
draft: false
repo: https://github.com/OSSystems/nix-actions
marketplace: https://github.com/marketplace/actions/ossystems-nix-actions
version: v1.0.1
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/OSSystems/nix-actions** to version **v1.0.1**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ossystems-nix-actions) to find the latest changes.

## What's Changed

## Fixes

- **`update-flake`: drop the Node.js 20 sub-action chain.** Replaced
  `DeterminateSystems/update-flake-lock` (which transitively pulls four
  sub-actions still on the Node.js 20 runtime — forced to Node.js 24 on
  2026-06-16, removed 2026-09-16) with an inline `nix flake update`
  + `peter-evans/create-pull-request@v8`. Only one Node action remains in the
  chain, on Node.js 24. Inputs, outputs and PR behavior are preserved.
- **`update-flake`: restore informative commit messages.** The generated commit
  now uses the PR title plus Nix's per-input changelog as its body, instead of
  the `[create-pull-request] automated change` placeholder.

## New inputs (`update-flake`)

- `pr-title` — PR title and flake.lock commit summary (default `"Update flake.lock"`).
- `pr-branch` — head branch for the update PR (default `"update_flake_lock_action"`).

Defaults preserve previous behavior; no action needed for existing callers.
