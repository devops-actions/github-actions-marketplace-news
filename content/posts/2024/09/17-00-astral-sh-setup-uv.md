---
title: Python setup uv
date: 2024-09-17 00:49:41 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/python-setup-uv
version: v3.0.0
dependentsNumber: "470"
---


Version updated for **astral-sh/setup-uv** to version **v3.0.0**.
- This action is used across all versions by **470** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-setup-uv) to find the latest changes.

## Release notes

## Changes

With this release `cache-dependency-glob` defaults to `**/uv.lock`.
This is in line with what most users would expect and also mirrors the default behaviors for setup-python which use  `**/requirements.txt`, `**/Pipfile.lock` or `**/poetry.lock`.

The previous default led to the cache being created only once and never invalidated or updated even when the dependencies changed.

This change only affects you if you are using `enable-cache: true` without specifying `cache-dependency-glob`. The only behavioral change you might see is one time cache miss.

Learn more about `cache-dependency-glob` in the [README section](https://github.com/astral-sh/setup-uv?tab=readme-ov-file#cache-dependency-glob).

## 🚨 Breaking changes

- Set the cache-dependency-glob default to `**/uv.lock` @eifinger (#77)

## 🧰 Maintenance

- Run prettier @eifinger (#78)
- Add .idea files to gitignore @eifinger (#76)

## ⬆️ Dependency updates

- Bump eslint-plugin-github from 5.0.1 to 5.0.2 @dependabot (#69)
- Bump typescript from 5.5.4 to 5.6.2 @dependabot (#64)
- Bump @types/node from 22.5.4 to 22.5.5 @dependabot (#74)
- Bump peter-evans/create-pull-request from 7.0.2 to 7.0.3 @dependabot (#75)

