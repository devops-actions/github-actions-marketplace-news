---
title: hestia-cache
date: 2026-08-14 13:53:51 +00:00
tags:
  - Mic92
  - GitHub Actions
draft: false
repo: https://github.com/Mic92/hestia
marketplace: https://github.com/marketplace/actions/hestia-cache
version: v3.0.1
dependentsNumber: "28"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Hestia GitHub Action is designed to efficiently cache Nix build results in the GitHub Actions cache. It allows builds to run faster by downloading previously built packages instead of rebuilding them, significantly reducing download times and avoiding `429 Too Many Requests` errors. The action also deduplicates data, making it more efficient for large repositories. Additionally, it includes a matrix subaction that evaluates flake checks only once and distributes them across parallel runners, optimizing build workflows.
---


Version updated for **https://github.com/Mic92/hestia** to version **v3.0.1**.

- This action is used across all versions by **28** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hestia-cache) to find the latest changes.

## Action Summary

The Hestia GitHub Action is designed to efficiently cache Nix build results in the GitHub Actions cache. It allows builds to run faster by downloading previously built packages instead of rebuilding them, significantly reducing download times and avoiding `429 Too Many Requests` errors. The action also deduplicates data, making it more efficient for large repositories. Additionally, it includes a matrix subaction that evaluates flake checks only once and distributes them across parallel runners, optimizing build workflows.

## What's Changed

## Usage

```yaml
- uses: Mic92/hestia@v3.0.1
  with:
    version: v3.0.1
```


## What's Changed

* pipeline: bypass upstream filter for drv closures by @cons-tan-tan in https://github.com/Mic92/hestia/pull/132

## New Contributors
* @cons-tan-tan made their first contribution in https://github.com/Mic92/hestia/pull/132

**Full Changelog**: https://github.com/Mic92/hestia/compare/v3.0.0...v3.0.1
