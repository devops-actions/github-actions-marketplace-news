---
title: The Determinate Nix Installer
date: 2023-11-07 03:16:54 +00:00
tags:
  - DeterminateSystems
  - GitHub Actions
draft: false
repo: DeterminateSystems/nix-installer-action
marketplace: https://github.com/marketplace/actions/the-determinate-nix-installer
version: v7
dependentsNumber: "1,147"
---


Version updated for **DeterminateSystems/nix-installer-action** to version **v7**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1,147** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/the-determinate-nix-installer) to find the latest changes.

## Release notes

This release should reduce or eliminate `ETXTBSY` related errors by relying on the official Github Actions [tool cache](https://github.com/actions/toolkit/tree/master/packages/tool-cache). This tool cache includes retry support if a download request fails.

On [Namespace Runners](https://cloud.namespace.so/docs/features/faster-github-actions) the action should correctly detect that `--init none` must be passed to the installer.

## What's Changed
* .github: allow trigger ci manually by @colemickens in https://github.com/DeterminateSystems/nix-installer-action/pull/45
* main.ts: fixup logic to ensure only one installer url override is set by @colemickens in https://github.com/DeterminateSystems/nix-installer-action/pull/44
* Retry (w/ back-off) downloading the installer binary by @colemickens in https://github.com/DeterminateSystems/nix-installer-action/pull/46
* Add check for dist folder by @Hoverbear in https://github.com/DeterminateSystems/nix-installer-action/pull/48
* fix: end the FileStreamWriter for the installer file by @colemickens in https://github.com/DeterminateSystems/nix-installer-action/pull/47
* eslint/tsconfig: validate no floating Promises, adjust tsconfig by @colemickens in https://github.com/DeterminateSystems/nix-installer-action/pull/49
* Detect whether we're running in a Namespace runner, and if so, set `init: none` by @hugosantos in https://github.com/DeterminateSystems/nix-installer-action/pull/52
* Use Github Actions provided tool cache and exec by @Hoverbear in https://github.com/DeterminateSystems/nix-installer-action/pull/53

## New Contributors
* @colemickens made their first contribution in https://github.com/DeterminateSystems/nix-installer-action/pull/45
* @hugosantos made their first contribution in https://github.com/DeterminateSystems/nix-installer-action/pull/52

**Full Changelog**: https://github.com/DeterminateSystems/nix-installer-action/compare/v6...v7
