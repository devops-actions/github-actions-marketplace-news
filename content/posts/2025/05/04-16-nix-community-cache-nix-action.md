---
title: Restore and save Nix Store
date: 2025-05-04 16:58:04 +00:00
tags:
  - nix-community
  - GitHub Actions
draft: false
repo: https://github.com/nix-community/cache-nix-action
marketplace: https://github.com/marketplace/actions/restore-and-save-nix-store
version: v6
dependentsNumber: "7"
---


Version updated for **https://github.com/nix-community/cache-nix-action** to version **v6**.
- This action is used across all versions by **7** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/restore-and-save-nix-store) to find the latest changes.

## Release notes

## Breaking changes

- Remove the `save-always` input as it'll soon be deprecated (https://github.com/nix-community/cache-nix-action/pull/50). See https://github.com/nix-community/cache-nix-action/blob/main/save/README.md#always-save-cache as a workaround.

## Features

* Support human-readable values for `gc-max-store-size*` inputs (https://github.com/nix-community/cache-nix-action/pull/78)
* Prototype a method for saving flake attributes from garbage collection (https://github.com/nix-community/cache-nix-action/pull/53)

## Fixes

- Update to the latest `actions-toolkit` (https://github.com/nix-community/cache-nix-action/pull/50).
- Fix `cacheId` not set after saving the cache (https://github.com/nix-community/cache-nix-action/commit/ddaea707ca21fd3baf031e005e7e44c2e5aae680)
* Fix Nix store database merging logic (use paths instead of hashes) (https://github.com/nix-community/cache-nix-action/pull/69)
* Fix garbage collection logic (https://github.com/nix-community/cache-nix-action/pull/62, 04c4f5077dae9cba4e26b749fdbaadab8d723693)
* Fix purging logic (https://github.com/nix-community/cache-nix-action/pull/72)
* Fix nix store database merging logic (use derivation paths instead of derivation output paths when calculating new derivation ids) (https://github.com/nix-community/cache-nix-action/pull/84)
* Use `bigint` instead of `number` for the store size (#117)
* Fix saving a cache (#122)
* Support [`ca-derivations`](https://nix.dev/manual/nix/2.24/development/experimental-features.html#ca-derivations) (#130)
* Simplify the table merging logic  (#130)
 
## Documentation and maintenance

* Bump the `nix-quick-install-action` to `v30`
