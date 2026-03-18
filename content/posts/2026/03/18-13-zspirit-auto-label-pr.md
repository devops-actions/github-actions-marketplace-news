---
title: Auto Label PR
date: 2026-03-18 13:32:20 +00:00
tags:
  - zspirit
  - GitHub Actions
draft: false
repo: https://github.com/zspirit/auto-label-pr
marketplace: https://github.com/marketplace/actions/auto-label-pr
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/zspirit/auto-label-pr** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/auto-label-pr) to find the latest changes.

## Action Summary

The **Auto Label PR** GitHub Action automatically labels pull requests based on the file paths of modified files, using a predefined configuration file. It streamlines pull request management by automating the assignment of relevant labels, improving organization and visibility in repositories with multiple contributors or complex file structures. Key capabilities include customizable label-file mapping and integration with monorepo setups.

## Release notes

## Auto Label PR v1.0.0

Automatically label pull requests based on changed file paths.

### Features
- Pattern matching using glob syntax
- Auto-creates labels if they don't exist
- Configurable via `.github/auto-label.yml`
- Works with monorepos

### Usage
```yaml
- uses: zspirit/auto-label-pr@v1
```

See [README](https://github.com/zspirit/auto-label-pr#readme) for full documentation.
