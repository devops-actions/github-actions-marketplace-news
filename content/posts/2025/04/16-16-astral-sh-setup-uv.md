---
title: astral-sh/setup-uv
date: 2025-04-16 16:59:18 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: https://github.com/astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v5.4.2
dependentsNumber: "16,407"
---


Version updated for **https://github.com/astral-sh/setup-uv** to version **v5.4.2**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **16,407** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Release notes

## Changes

This release fixes an issue on self-hosted runners.
If you manually installed uv with version 0.5.0 or later this version would overwrite the uv version installed by this action.
We now make sure the version installed by this action is the first found in PATH

## 🐛 Bug fixes

- Make sure uv installed by setup-uv is first in PATH @eifinger (#373)

## 🧰 Maintenance

- chore: update known checksums for 0.6.14 @[github-actions[bot]](https://github.com/apps/github-actions) (#366)
- chore: update known checksums for 0.6.13 @[github-actions[bot]](https://github.com/apps/github-actions) (#365)
- chore: update known checksums for 0.6.12 @[github-actions[bot]](https://github.com/apps/github-actions) (#362)
- chore: update known checksums for 0.6.11 @[github-actions[bot]](https://github.com/apps/github-actions) (#357)

## 📚 Documentation

- Fix pep440 identifier instead of specifier @eifinger (#358)

