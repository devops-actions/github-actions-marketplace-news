---
title: Pin npm Dependencies
date: 2026-04-28 22:05:06 +00:00
tags:
  - Miragon
  - GitHub Actions
draft: false
repo: https://github.com/Miragon/pin-npm-dependencies
marketplace: https://github.com/marketplace/actions/pin-npm-dependencies
version: v1.1.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Miragon/pin-npm-dependencies** to version **v1.1.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pin-npm-dependencies) to find the latest changes.

## Action Summary

The `pin-npm-dependencies` GitHub Action ensures all dependencies in `package.json` are strictly pinned to exact versions, preventing the use of version ranges, floating tags, and mutable git refs. This action addresses supply chain security risks by blocking unintended updates or malicious code injection that could occur through unpinned versions, particularly in automated workflows or AI-generated configurations. It supports npm, yarn, and pnpm, providing a safeguard against unpredictable or compromised dependencies in CI pipelines.

## What's Changed

## What's new

### Detect mutable git branch refs in `package.json`

Version ranges like `^1.0.0` were already caught — now git-sourced dependencies with unsafe refs are too.

**Flagged:**
- `github:owner/repo#master` / `#main` / `#HEAD` and other known branch names → mutable git branch ref
- `github:owner/repo` with no fragment → npm defaults to the default branch

**Not flagged:**
- `github:owner/repo#abc1234` — SHA pin
- `github:owner/repo#v1.2.3` — version tag

### Better error messages

Each violation now includes the specific reason it was flagged, e.g.:

```
react: "^18.0.0" — caret/tilde range; use exact version "18.0.0"
my-lib: "github:owner/repo#master" — mutable git branch ref; pin to a commit SHA
```
