---
title: Capture Environment Variable Checker
date: 2026-07-23 15:03:07 +00:00
tags:
  - YhaliWaizman
  - GitHub Actions
draft: false
repo: https://github.com/YhaliWaizman/Capture
marketplace: https://github.com/marketplace/actions/capture-environment-variable-checker
version: v2.0.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action is a static analysis tool that identifies discrepancies between environment variables declared in `.env` files and their usage in various programming languages, Dockerfiles, and Docker Compose files. It helps detect potential security risks by identifying hardcoded secrets and cross-checks variables across different sources to ensure consistency. The action supports parallel scanning and incremental caching for efficient performance.
---


Version updated for **https://github.com/YhaliWaizman/Capture** to version **v2.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/capture-environment-variable-checker) to find the latest changes.

## Action Summary

This GitHub Action is a static analysis tool that identifies discrepancies between environment variables declared in `.env` files and their usage in various programming languages, Dockerfiles, and Docker Compose files. It helps detect potential security risks by identifying hardcoded secrets and cross-checks variables across different sources to ensure consistency. The action supports parallel scanning and incremental caching for efficient performance.

## What's Changed

## capture 2.0.0

A static analysis CLI tool that identifies mismatches between environment variables declared in .env files, Dockerfiles, and source code.

### Installation

Download the appropriate binary for your platform below, or install via Go:

```bash
go install github.com/yhaliwaizman/capture/cmd/capture@v2.0.0
```

## Changelog
* 5829a8b895e0b17f693cb8948233dd5840bfda71 feat(ci): add official GitHub Action for capture scan
* 66d296f23d4884c3dc8f74d74fb5a9312f89e658 chore(release): first major good release
* d9aaf67a253c86b38f24a6e8c73f4c6d0c06a2c1 chore(main): release 2.0.0
* 703cd3644be4b421faa0ac483f170166c06a9719 Merge pull request #40 from YhaliWaizman/release-please--branches--main

## What's Changed

See the [CHANGELOG](https://github.com/yhaliwaizman/capture/blob/main/CHANGELOG.md) for details.

**Full Changelog**: https://github.com/yhaliwaizman/capture/compare/v1.7.0...v2.0.0


