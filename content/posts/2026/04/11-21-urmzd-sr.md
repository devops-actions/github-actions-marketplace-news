---
title: SR - Semantic Release
date: 2026-04-11 21:45:31 +00:00
tags:
  - urmzd
  - GitHub Actions
draft: false
repo: https://github.com/urmzd/sr
marketplace: https://github.com/marketplace/actions/sr-semantic-release
version: v3.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/urmzd/sr** to version **v3.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sr-semantic-release) to find the latest changes.

## Action Summary

The **`sr` GitHub Action** is an AI-powered release engineering tool designed to streamline the entire software release lifecycle, from crafting commits to publishing releases. It automates tasks such as generating atomic conventional commits, conducting AI-driven code reviews, creating pull requests, and managing versioning and changelogs, eliminating the need for additional runtimes or plugins. Its key capabilities include AI-assisted workflows, robust safety mechanisms, and language-agnostic support, providing developers with a seamless and efficient release process.

## What's Changed

## 3.4.0 (2026-04-11)

### Features

- **core**: add fixed versioning mode for monorepo packages ([900bf55](https://github.com/urmzd/sr/commit/900bf55cb57426b9675228e1676c476b45296399))
- **release**: implement lifecycle hook execution ([67edaf3](https://github.com/urmzd/sr/commit/67edaf38987dee1bc8714d36583603f35ffcb3be))
- **config**: add lifecycle hooks for release pipeline ([30cdda6](https://github.com/urmzd/sr/commit/30cdda6bb503ce87a50d1f77b645e06788a6f464))
- **commit**: add fallback pattern matching for non-conventional commits ([670eafc](https://github.com/urmzd/sr/commit/670eafcc50854c6f3cf67a49b79b6b7c3520b6ca))

### Documentation

- update release documentation for lifecycle hooks and defaults ([4ee638d](https://github.com/urmzd/sr/commit/4ee638d6d3224e08afc7f9dab55ee4d95d2ecbb8))
- **showcase**: update commit demo assets ([e2f1e3a](https://github.com/urmzd/sr/commit/e2f1e3a71be6dfa4fef67bc068b0383b318a1fd3))

### Refactoring

- **cli**: use ConfiguredCommitParser for flexible parsing ([09a1323](https://github.com/urmzd/sr/commit/09a13230d448de50bf719b353e3026498e722066))

### Miscellaneous

- fix cargo fmt formatting in config.rs ([36ec001](https://github.com/urmzd/sr/commit/36ec0019bc00bd89127b61612cfc5fea8dfb2939))
- bump version to 3.3.7 ([f6f9afb](https://github.com/urmzd/sr/commit/f6f9afb5fa1759466d530cf2452fdfa3c6c53093))

[Full Changelog](https://github.com/urmzd/sr/compare/v3.3.7...v3.4.0)
