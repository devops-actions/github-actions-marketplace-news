---
title: niks3 binary cache
date: 2026-05-15 22:12:44 +00:00
tags:
  - Mic92
  - GitHub Actions
draft: false
repo: https://github.com/Mic92/niks3-action
marketplace: https://github.com/marketplace/actions/niks3-binary-cache
version: v1.0.1
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Mic92/niks3-action** to version **v1.0.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/niks3-binary-cache) to find the latest changes.

## Action Summary

The `niks3-action` GitHub Action automates the process of uploading Nix build outputs to a `niks3` binary cache, ensuring that intermediate derivations are cached even if a build fails or is canceled. It simplifies cache configuration by dynamically fetching settings from the server and uses GitHub's OIDC for authentication, eliminating the need for managing secrets. This action enhances build efficiency by enabling partial build caching and supports fallback mechanisms for self-hosted runners with limited permissions.

## What's Changed

## What's Changed

* fix: use `nix config show` instead of deprecated `nix show-config` by @ncaq in https://github.com/Mic92/niks3-action/pull/14
* bump niks3 to v1.6.0 by @Mic92 in https://github.com/Mic92/niks3-action/pull/16

## New Contributors
* @ncaq made their first contribution in https://github.com/Mic92/niks3-action/pull/14

**Full Changelog**: https://github.com/Mic92/niks3-action/compare/v1.0.0...v1.0.1
