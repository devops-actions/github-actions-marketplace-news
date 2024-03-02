---
title: Python Setup Rye
date: 2024-03-02 03:23:57 +00:00
tags:
  - eifinger
  - GitHub Actions
draft: false
repo: eifinger/setup-rye
marketplace: https://github.com/marketplace/actions/python-setup-rye
version: v1.17.0
dependentsNumber: "74"
---


Version updated for **eifinger/setup-rye** to version **v1.17.0**.
- This action is used across all versions by **74** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-setup-rye) to find the latest changes.

## Release notes

## Changes

When using the cache this release will speed up runs on hosted runners because the .rye directory is now also cached.

The OS version was removed as an ingredient for constructing the cache key. This especially fixes issues with macos14 where runners alternated between version `14.3.1` and `14.2.1`. Since rye is Operating system version independent we don't need to be strict.

## 🐛 Bug fixes

- Cache .rye and remove os version dependency @eifinger (#192)

## 🚀 Enhancements

- Cache .rye and remove os version dependency @eifinger (#192)

## ⬆️ Dependency updates

- chore(deps-dev): bump eslint-plugin-github from 4.10.1 to 4.10.2 @dependabot (#191)
- chore(deps-dev): bump @types/node from 20.11.20 to 20.11.24 @dependabot (#189)

