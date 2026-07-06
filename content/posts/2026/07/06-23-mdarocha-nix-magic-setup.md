---
title: nix-magic-setup
date: 2026-07-06 23:05:43 +00:00
tags:
  - mdarocha
  - GitHub Actions
draft: false
repo: https://github.com/mdarocha/nix-magic-setup
marketplace: https://github.com/marketplace/actions/nix-magic-setup
version: v1.3.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/mdarocha/nix-magic-setup** to version **v1.3.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nix-magic-setup) to find the latest changes.

## What's Changed

## What's Changed
* The action now runs [nothing-but-nix](https://github.com/marketplace/actions/nothing-but-nix) to help free up some space in the runner for Nix. The severity of the cleanup is controlled by a new config flag, and by default it only allocates free runner space to `/nix`, without removing anything (`holster` config)
* Automatically read `nixConfig`, and set `NIX_CONFIG`, so that all future steps use the flake's config properly
* If `devenv` is detected, automatically set devenv caches (devenv.cachix.org and pre-commit.cachix.org)


**Full Changelog**: https://github.com/mdarocha/nix-magic-setup/compare/v1.2.0...v1.3.0
