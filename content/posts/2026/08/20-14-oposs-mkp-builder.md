---
title: Build CheckMK MKP Package
date: 2026-08-20 14:15:34 +00:00
tags:
  - oposs
  - GitHub Actions
draft: false
repo: https://github.com/oposs/mkp-builder
marketplace: https://github.com/marketplace/actions/build-checkmk-mkp-package
version: v2.3.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of building Checkmk MKP (Monitoring Konfiguration Package) files from local directory structures, offering features such as automated MKP building, configurable options via inputs or configuration files, Python syntax checking, artifact ready outputs, and clean repository maintenance. It also includes a Checkmk plugin development guide as a Claude Code skill for plugin creation.
---


Version updated for **https://github.com/oposs/mkp-builder** to version **v2.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-checkmk-mkp-package) to find the latest changes.

## Action Summary

This GitHub Action automates the process of building Checkmk MKP (Monitoring Konfiguration Package) files from local directory structures, offering features such as automated MKP building, configurable options via inputs or configuration files, Python syntax checking, artifact ready outputs, and clean repository maintenance. It also includes a Checkmk plugin development guide as a Claude Code skill for plugin creation.

## What's Changed

### New
- The skill now ships a test harness. A plugin repo can run pytest against the real Checkmk API, pulled from Checkmk and pinned to the version the plugin targets, instead of against hand-written stubs.

## What's Changed
* Ship a test harness with the skill by @oetiker in https://github.com/oposs/mkp-builder/pull/12
* Release v2.3.0 by @github-actions[bot] in https://github.com/oposs/mkp-builder/pull/13


**Full Changelog**: https://github.com/oposs/mkp-builder/compare/v2.2.2...v2.3.0
