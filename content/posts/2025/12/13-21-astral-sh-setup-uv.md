---
title: astral-sh/setup-uv
date: 2025-12-13 21:12:33 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: https://github.com/astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v7.1.6
dependentsNumber: "37,741"
---


Version updated for **https://github.com/astral-sh/setup-uv** to version **v7.1.6**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **37,741** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Release notes

## Changes

This release will invalidate your cache existing keys!

The os version e.g. `ubuntu-22.04` is now part of the cache key. This prevents failing builds when a cache got populated with wheels built with different tools (e.g. glibc) than are present on the runner where the cache got restored.

## 🐛 Bug fixes

- feat: add OS version to cache key to prevent binary incompatibility @eifinger (#716)

## 🧰 Maintenance

- chore: update known checksums for 0.9.17 @[github-actions[bot]](https://github.com/apps/github-actions) (#714)

## ⬆️ Dependency updates

- Bump actions/checkout from 5.0.0 to 6.0.1 @[dependabot[bot]](https://github.com/apps/dependabot) (#712)
- Bump actions/setup-node from 6.0.0 to 6.1.0 @[dependabot[bot]](https://github.com/apps/dependabot) (#715)

