---
title: JSR Mirror
date: 2025-11-23 12:59:11 +00:00
tags:
  - nodef
  - GitHub Actions
draft: false
repo: https://github.com/nodef/jsr-mirror.action
marketplace: https://github.com/marketplace/actions/jsr-mirror
version: 0.1.0
dependentsNumber: "1"
---


Version updated for **https://github.com/nodef/jsr-mirror.action** to version **0.1.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jsr-mirror) to find the latest changes.

## Release notes

## 0.1.0 - Initial Smoke Test Release

- First release of the GitHub Action for mirroring JavaScript Registry ([[JSR](https://jsr.io/)]) packages to other registries.
- Currently supports mirroring only to [[npm](https://www.npmjs.com/)] registry.
- Provides flexible options to specify package metadata and paths to configuration files including manifest, npmrc, npmignore, and deno.json.

### Features Tested
- Basic mirroring of JSR packages to npm registry.
- Ability to specify target registry token for authentication.
- Support for custom package naming, version, description, keywords, author, and license fields during mirroring.
- Support for custom paths including `manifest-path`, `npmrc-path`, `npmignore-path`, and `deno-config-path`.
- Functionality verified via example workflows covering typical use cases.

### Notes
- Registry support is limited to npm in this release; additional registries planned for future versions.
- Usage examples provided within the documentation cover common scenarios to get started quickly.
- Feedback and issues are welcome to improve stability and add features.


