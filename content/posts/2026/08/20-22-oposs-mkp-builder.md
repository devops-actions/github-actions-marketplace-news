---
title: Build CheckMK MKP Package
date: 2026-08-20 22:47:55 +00:00
tags:
  - oposs
  - GitHub Actions
draft: false
repo: https://github.com/oposs/mkp-builder
marketplace: https://github.com/marketplace/actions/build-checkmk-mkp-package
version: v2.3.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the creation of Checkmk MKP (Monitoring Konfiguration Package) files from local directory structures. It supports various build options and provides Python syntax checking for ease of use, while ensuring no permanent changes to the repository are made. The action outputs package information ready for artifact upload and is compatible with both major and minor version pinning strategies.
---


Version updated for **https://github.com/oposs/mkp-builder** to version **v2.3.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-checkmk-mkp-package) to find the latest changes.

## Action Summary

This GitHub Action automates the creation of Checkmk MKP (Monitoring Konfiguration Package) files from local directory structures. It supports various build options and provides Python syntax checking for ease of use, while ensuring no permanent changes to the repository are made. The action outputs package information ready for artifact upload and is compatible with both major and minor version pinning strategies.

## What's Changed

### Changed
- The Checkmk plugin development skill has moved to its own repository,
  `oposs/cmk-oposs-plugin`. This repository is now only the packaging action. Holding both
  behind one version number misfired in both directions: v2.2.2 changed five action files
  and no skill files while telling every skill user their skill had updated, and v2.3.0
  changed only skill files while cutting an action release whose code was byte-identical.
- The release version is read from `CHANGES.md` instead of `.claude-plugin/plugin.json`,
  which went with the skill. A GitHub Action is not a Claude plugin and has no reason to
  carry a plugin manifest.

## What's Changed
* The skill has moved out; this is now only the action by @oetiker in https://github.com/oposs/mkp-builder/pull/14
* Release v2.3.1 by @github-actions[bot] in https://github.com/oposs/mkp-builder/pull/15


**Full Changelog**: https://github.com/oposs/mkp-builder/compare/v2.3.0...v2.3.1
