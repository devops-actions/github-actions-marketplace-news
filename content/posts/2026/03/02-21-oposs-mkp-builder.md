---
title: Build CheckMK MKP Package
date: 2026-03-02 21:30:41 +00:00
tags:
  - oposs
  - GitHub Actions
draft: false
repo: https://github.com/oposs/mkp-builder
marketplace: https://github.com/marketplace/actions/build-checkmk-mkp-package
version: v2.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/oposs/mkp-builder** to version **v2.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-checkmk-mkp-package) to find the latest changes.

## Action Summary

The Checkmk MKP Builder Action is a GitHub Action designed to automate the process of creating Checkmk MKP (Monitoring Konfiguration Package) files from local plugin directory structures. It simplifies and accelerates Checkmk plugin development by validating Python code, packaging plugins into artifact-ready MKP files, and enabling seamless integration into CI/CD workflows. This tool is particularly useful for developers looking to streamline the packaging and distribution of Checkmk extensions while maintaining a clean repository.

## Release notes

### New
- Add notification plugin support to mkp-builder (collects from `local/share/check_mk/notifications/`, creates `notifications.tar`)
- Add Claude Code plugin with Checkmk 2.3.x plugin development skill (`skills/checkmk-plugin/`)
- Install via `/install-plugin https://github.com/oposs/mkp-builder` in Claude Code

### Changed
- Move plugin development guide from `cmk-plugin-guide/` into `skills/checkmk-plugin/references/`
- Update README with Claude Code plugin install instructions

**Full Changelog**: https://github.com/oposs/mkp-builder/compare/v2.1.0...v2.2.0
