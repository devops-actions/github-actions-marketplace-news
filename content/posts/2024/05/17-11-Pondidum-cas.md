---
title: Setup CAS
date: 2024-05-17 11:15:33 +00:00
tags:
  - Pondidum
  - GitHub Actions
draft: false
repo: Pondidum/cas
marketplace: https://github.com/marketplace/actions/setup-cas
version: 0.1.0
dependentsNumber: "0"
---


Version updated for **Pondidum/cas** to version **0.1.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-cas) to find the latest changes.

## Release notes

0.1.0 - e0f53d4
## Added

- `cas artifact list` - list what artifacts exist for a hash
- `cas artifact pull` - pull all or a selection of artifacts for a hash
- `cas artifact push` - push one or many artifacts to a hash
- Caching of backend information is now better - and persisted to `.cas/cache`

## Removed

- `cas artifact` - no longer pushes an artifact, instead use `cas artifact push`

