---
title: Python Setup Rye
date: 2024-02-08 11:21:30 +00:00
tags:
  - eifinger
  - GitHub Actions
draft: false
repo: eifinger/setup-rye
marketplace: https://github.com/marketplace/actions/python-setup-rye
version: v1.11.0
dependentsNumber: "55"
---


Version updated for **eifinger/setup-rye** to version **v1.11.0**.
- This action is used across all versions by **55** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-setup-rye) to find the latest changes.

## Release notes

## Changes

If you want to save the cache to a local path you can specify the path with the `cache-local-storage-path` input.
This can be useful if you are on a self hosted runner and want to save time and network traffic.

```yaml
- name: Enable caching and define a custom cache path
  uses: eifinger/setup-rye@v1
  with:
    enable-cache: true
    cache-local-storage-path: '/path/to/cache'
```
> [!WARNING]  
> A sideeffect is that all caches will be invalidated once because the cache key changed.

## 🚀 Enhancements

- add cache-local-storage-path @eifinger (#150)

## ⬆️ Dependency updates

- chore(deps-dev): bump eslint from 8.55.0 to 8.56.0 @dependabot (#118)
- chore(deps): bump github/codeql-action from 2 to 3 @dependabot (#115)

