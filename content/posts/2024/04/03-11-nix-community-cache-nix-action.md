---
title: Cache Nix store
date: 2024-04-03 11:23:54 +00:00
tags:
  - nix-community
  - GitHub Actions
draft: false
repo: nix-community/cache-nix-action
marketplace: https://github.com/marketplace/actions/cache-nix-store
version: v5
dependentsNumber: "7"
---


Version updated for **nix-community/cache-nix-action** to version **v5**.
- This action is used across all versions by **7** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cache-nix-store) to find the latest changes.

## Release notes

- Use a custom [@cache-nix-action/cache](https://www.npmjs.com/package/@cache-nix-action/cache) package that supports `tar` args.
  - The `actions-toolkit` directory was moved to the `actions-toolkit` branch.
- Fix cache merging
  - Remove the option `--skip-old-files` from the `tar` command in the restore phase to overwrite files that should be overwritten with files from a cache (see the [comment](https://github.com/nix-community/cache-nix-action/issues/27#issuecomment-1987279529)).
  - Don't try to restore existing `/nix/store` files.
  - Fix merging stores #31
- Add the `save-always` input introduced in the [@actions/cache](https://github.com/actions/cache) v4.
- Sync with `actions/cache` v4.0.2
