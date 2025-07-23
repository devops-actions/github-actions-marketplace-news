---
title: astral-sh/setup-uv
date: 2025-07-23 16:58:23 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: https://github.com/astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v6.4.2
dependentsNumber: "25,372"
---


Version updated for **https://github.com/astral-sh/setup-uv** to version **v6.4.2**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **25,372** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Release notes

## Changes

This release will interpret relative paths in inputs as relative
to the value of `working-directory` (default is `${{ github.workspace }}`) .
This means the following configuration

```yaml
- uses: astral-sh/setup-uv@v6
   with:
     working-directory: /my/path
     cache-dependency-glob: uv.lock
```
will look for the `cache-dependency-glob` under `/my/path/uv.lock`

## 🐛 Bug fixes

- interpret relative inputs as under working-directory @eifinger (#498)

## 🧰 Maintenance

- chore: update known versions for 0.8.1/0.8.2 @[github-actions[bot]](https://github.com/apps/github-actions) (#497)
- chore: update known versions for 0.8.0 @[github-actions[bot]](https://github.com/apps/github-actions) (#491)

