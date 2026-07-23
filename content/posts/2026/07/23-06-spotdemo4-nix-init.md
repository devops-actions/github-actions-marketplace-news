---
title: nix init
date: 2026-07-23 06:28:28 +00:00
tags:
  - spotdemo4
  - GitHub Actions
draft: false
repo: https://github.com/spotdemo4/nix-init
marketplace: https://github.com/marketplace/actions/nix-init
version: v1.60.0
dependentsNumber: "4"
actionType: Composite
actionSummary: |
  This GitHub Action initializes Nix-based repositories by automating common setup tasks such as creating a GitHub App Token, checking out the repository, setting up Git user information, configuring an optimal Nix environment, installing Nix, and setting the Nix configuration from a Flake. It also supports caching with `niks3` for better performance on self-hosted runners. The action is designed to run efficiently (< 1 minute) and can be used with various runner types (GitHub Actions, Gitea, Forgejo).
---


Version updated for **https://github.com/spotdemo4/nix-init** to version **v1.60.0**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nix-init) to find the latest changes.

## Action Summary

This GitHub Action initializes Nix-based repositories by automating common setup tasks such as creating a GitHub App Token, checking out the repository, setting up Git user information, configuring an optimal Nix environment, installing Nix, and setting the Nix configuration from a Flake. It also supports caching with `niks3` for better performance on self-hosted runners. The action is designed to run efficiently (< 1 minute) and can be used with various runner types (GitHub Actions, Gitea, Forgejo).

## What's Changed

* feat(action): use node for nix develop env export (718723a4b53683c78e4dfcfa2f1da4a78264b171)
* feat(action): use vendored nix-develop script (d24036e34bc83eaa5f2637ba61d089ff8f4edaf1)
* feat: Update spotdemo4/better-checkout action to v0.14.0 (#168) (b28fd2c4d5f02afb7135720526d061c9794d4749)
* fix(tests): check requested env vars only (092ab684bd4227911e870c62c5127a2f19e17c96)
* fix(nix-develop): snapshot exported host vars for bash 3.2 (2740b4c10b72ee87614b33b6f9c6c43feeab6480)
* fix(nix-develop): avoid nounset from unset indirections (b6c3c02f35216c601bffc33f872dc4fd6e767164)
* bump: v1.59.0 -> v1.60.0 (2fc360eefced0d01fc56eaf691ab9393a94a1c60)
* chore: add top comment to shell setup (ec872f577e0291c8f52260f4ce4c283e187d9b3b)
* test(ci): validate devShell environment exports (1d68c4040201627cbcc638e596acf959b7d16429)
* chore(deps): update github actions to v7.0.1 (#167) (2d87c0572b541faad84eea63853d4175504d9c59)
* chore(deps): lock file maintenance nix inputs (#166) (2738beb2e2d1be14ada7c74133fcf7861d5982da)
* chore(deps): update github actions to v1.59.0 (#165) (57bf48f3b354214cd10358b4ee755e3d50f71a02)

