---
title: OSSystems Nix Actions
date: 2026-07-07 05:14:12 +00:00
tags:
  - OSSystems
  - GitHub Actions
draft: false
repo: https://github.com/OSSystems/nix-actions
marketplace: https://github.com/marketplace/actions/ossystems-nix-actions
version: v1.0.5
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/OSSystems/nix-actions** to version **v1.0.5**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ossystems-nix-actions) to find the latest changes.

## What's Changed

Add `post-run` to the `update-flake` action.

- `post-run` — command run after `nix flake update`, before the PR is created, so its file changes (e.g. a regenerated `Cargo.nix`) land in the update PR commit.
- `export-devshell` — `"true"` loads a dev shell into the environment before `post-run` (env-export via nicknovitski/nix-develop); `"false"` runs in plain bash.
- `devshell` — which dev shell to export when `export-devshell` is `"true"`; empty uses the flake's default.

**Token safety:** when `post-run` is set with `token-owner`, the GitHub App token is automatically re-minted after `post-run` — so a long-running `post-run` can't expire the token before the PR is opened. Correct by default, with no flag to remember.
