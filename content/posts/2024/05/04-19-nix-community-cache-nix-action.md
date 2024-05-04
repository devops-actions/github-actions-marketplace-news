---
title: Cache Nix store
date: 2024-05-04 19:22:27 +00:00
tags:
  - nix-community
  - GitHub Actions
draft: false
repo: nix-community/cache-nix-action
marketplace: https://github.com/marketplace/actions/cache-nix-store
version: v5.2.0
dependentsNumber: "7"
---


Version updated for **nix-community/cache-nix-action** to version **v5.2.0**.
- This action is used across all versions by **7** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cache-nix-store) to find the latest changes.

## Release notes

- Support two backends for the `cache` package (https://github.com/nix-community/cache-nix-action/pull/40):
  - Add the `backend` input (there's an [issue](https://github.com/nix-community/cache-nix-action/issues/41) though)
  - Add `BuildJet/toolkit` fork ([link](https://github.com/nix-community/cache-nix-action/tree/buildjet-toolkit/packages/cache)).
  - Add `actions/toolkit` fork ([link](https://github.com/nix-community/cache-nix-action/tree/actions-toolkit/packages/cache)).
- Fix setting outputs (https://github.com/nix-community/cache-nix-action/commit/1543078bc03636a65728d27b72d33f3c2d3da6f9).
