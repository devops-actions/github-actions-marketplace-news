---
title: Package Build Flow Action
date: 2026-02-17 21:33:35 +00:00
tags:
  - wgtechlabs
  - GitHub Actions
draft: false
repo: https://github.com/wgtechlabs/package-build-flow-action
marketplace: https://github.com/marketplace/actions/package-build-flow-action
version: v2.0.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/wgtechlabs/package-build-flow-action** to version **v2.0.0**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/package-build-flow-action) to find the latest changes.

## Action Summary

The "Package Build Flow Action" automates the versioning, building, and publishing of NPM packages to the NPM Registry and/or GitHub Packages with minimal configuration. It simplifies release workflows by intelligently detecting build types based on GitHub context, supporting monorepos, managing semantic versioning, and ensuring secure builds with npm audit integration. This action streamlines the development process by handling tasks like pre-release tagging, dist-tag management, and adding PR installation instructions, reducing manual effort and ensuring consistency.

## Release notes

### What's New

- **Monorepo support** - Process multiple packages with `monorepo: 'true'`
- **Workspace auto-discovery** - Reads workspaces from root `package.json`
- **Change detection** - Only builds packages that changed
- **Dependency-aware ordering** - Topological sort for correct build order
- **Workspace protocol resolution** - Resolves `workspace:*` to real versions before publish
- **Bun v1.2 support** - Detects text-based `bun.lock`

### Migration from v1

Fully backward compatible, just update the action reference:

```yaml
- uses: wgtechlabs/package-build-flow-action@v2
```

**Full Changelog**: https://github.com/wgtechlabs/package-build-flow-action/compare/v1.2.4...v2.0.0
