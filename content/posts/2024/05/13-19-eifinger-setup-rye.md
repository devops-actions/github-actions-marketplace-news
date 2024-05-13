---
title: Python Setup Rye
date: 2024-05-13 19:18:33 +00:00
tags:
  - eifinger
  - GitHub Actions
draft: false
repo: eifinger/setup-rye
marketplace: https://github.com/marketplace/actions/python-setup-rye
version: v3.0.1
dependentsNumber: "146"
---


Version updated for **eifinger/setup-rye** to version **v3.0.1**.
- This action is used across all versions by **146** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-setup-rye) to find the latest changes.

## Release notes

## Changes

In some cases the cache backend reported a mismatched cache key even though the cache was successfully restored. This is ignored now and a successfully restored cache will set the output `cache-hit=true`

## 🐛 Bug fixes

- Set cache-hit to true if any cache key matched @eifinger (#244)

## 📚 Documentation

- docs: Change "@v2" to "@v3" @eifinger (#242)

## ⬆️ Dependency updates

- chore(deps-dev): bump eslint and octokit-rest @dependabot (#236)
- chore(deps-dev): bump @types/node from 20.11.30 to 20.12.11 @dependabot (#240)
- chore(deps): bump peter-evans/create-pull-request from 6.0.2 to 6.0.5 @dependabot (#231)
- chore(deps-dev): bump typescript from 5.4.3 to 5.4.5 @dependabot (#227)

