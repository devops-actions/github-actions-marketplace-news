---
title: Nothing but Nix
date: 2026-01-22 21:43:48 +00:00
tags:
  - wimpysworld
  - GitHub Actions
draft: false
repo: https://github.com/wimpysworld/nothing-but-nix
marketplace: https://github.com/marketplace/actions/nothing-but-nix
version: v7
dependentsNumber: "184"
---


Version updated for **https://github.com/wimpysworld/nothing-but-nix** to version **v7**.
- This action is used across all versions by **184** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nothing-but-nix) to find the latest changes.

## Action Summary

The "Nothing but Nix" GitHub Action optimizes disk space on Ubuntu GitHub Actions runners by removing unnecessary pre-installed software, increasing available storage for the Nix package manager from ~20GB to 65GB-130GB. This action addresses storage limitations, enabling users to efficiently utilize Nix for their workflows, and it gracefully skips execution on unsupported macOS and Windows runners.

## Release notes

Release v7

## What's Changed
* fix: relocate TMPDIR to /mnt to improve Nix installer compatibility by @flexiondotorg in https://github.com/wimpysworld/nothing-but-nix/pull/25
* POSIX-compliant lowercase by @ners in https://github.com/wimpysworld/nothing-but-nix/pull/30
* post action ls fail safe by @caldetas in https://github.com/wimpysworld/nothing-but-nix/pull/34
* Auto-translate README and Wiki by @openaitx-system in https://github.com/wimpysworld/nothing-but-nix/pull/37
* feat(action): add graceful skip for macOS and Windows runners by @flexiondotorg in https://github.com/wimpysworld/nothing-but-nix/pull/40
* fix(build): move TMPDIR to /nix for builds by @flexiondotorg in https://github.com/wimpysworld/nothing-but-nix/pull/44
* build(deps): bump srz-zumix/post-run-action from 2 to 3 by @dependabot[bot] in https://github.com/wimpysworld/nothing-but-nix/pull/41
* build(deps): bump actions/checkout from 4 to 6 by @dependabot[bot] in https://github.com/wimpysworld/nothing-but-nix/pull/42
* build(deps): bump nixbuild/nix-quick-install-action from 30 to 34 by @dependabot[bot] in https://github.com/wimpysworld/nothing-but-nix/pull/43
* fix(volume): add minimum space validation and error handling by @flexiondotorg in https://github.com/wimpysworld/nothing-but-nix/pull/45

## New Contributors
* @ners made their first contribution in https://github.com/wimpysworld/nothing-but-nix/pull/30
* @caldetas made their first contribution in https://github.com/wimpysworld/nothing-but-nix/pull/34
* @openaitx-system made their first contribution in https://github.com/wimpysworld/nothing-but-nix/pull/37
* @dependabot[bot] made their first contribution in https://github.com/wimpysworld/nothing-but-nix/pull/41

**Full Changelog**: https://github.com/wimpysworld/nothing-but-nix/compare/v6...v7
