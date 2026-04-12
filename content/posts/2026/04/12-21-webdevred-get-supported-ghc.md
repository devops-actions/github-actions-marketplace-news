---
title: Get Supported GHC Version
date: 2026-04-12 21:59:28 +00:00
tags:
  - webdevred
  - GitHub Actions
draft: false
repo: https://github.com/webdevred/get-supported-ghc
marketplace: https://github.com/marketplace/actions/get-supported-ghc-version
version: v0.0.12
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/webdevred/get-supported-ghc** to version **v0.0.12**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/get-supported-ghc-version) to find the latest changes.

## Action Summary

This GitHub Action, **Get Supported GHC Version**, automates the detection of the latest and oldest GHC (Glasgow Haskell Compiler) versions compatible with a Haskell project's `base` dependency constraints in `package.yaml`. It simplifies CI/CD workflows by determining the appropriate GHC version to install while optionally validating that dependency boundaries align with tested GHC versions, ensuring compatibility and avoiding build issues.

## What's Changed

# v0.0.12

## What's Changed

### Features

- `validate-lower-bound` input: fails if the `base` lower bound covers GHC major versions with breaking changes below the minimum in `tested-with` (#36)
- `max-ghc-version` output replaces `ghc-version` (kept as deprecated). New `min-ghc-version` output with the oldest compatible GHC version (#36)

### Fixes

- `base` dependency matching no longer matches `base-compat`, `base-orphans`, etc. (#35)
- Log message now correctly shows `<=` for inclusive upper bounds (#35)

### Build

- Switched from `@vercel/ncc` to `esbuild` (#28)
- TypeScript 6.0.2 (#31)
- Security: `brace-expansion` 2.0.3 (#32)

**Full Changelog**: https://github.com/webdevred/get-supported-ghc/commits/v0.0.11
