---
title: nix-magic-setup
date: 2026-04-28 22:05:11 +00:00
tags:
  - mdarocha
  - GitHub Actions
draft: false
repo: https://github.com/mdarocha/nix-magic-setup
marketplace: https://github.com/marketplace/actions/nix-magic-setup
version: v1.1.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/mdarocha/nix-magic-setup** to version **v1.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nix-magic-setup) to find the latest changes.

## Action Summary

The `nix-magic-setup` GitHub Action simplifies the management of Nix in GitHub workflows by bundling key tasks such as installing Nix, caching derivations, and automating flake-related workflows into a single action. It eliminates the need to configure multiple separate actions, ensuring streamlined setup and efficient caching. Key capabilities include environment setup via `.envrc` and automated PR comments for `flake.lock` updates.

## What's Changed

## What's Changed

This release replaced the `aldoborrero/direnv-nix-action` with a custom bash script that's bundled with the action.

This fixes the Node v20 deprecation warnings, and also lessens the dependency on other github actions.

**Full Changelog**: https://github.com/mdarocha/nix-magic-setup/compare/v1.0.0...v1.1.0
