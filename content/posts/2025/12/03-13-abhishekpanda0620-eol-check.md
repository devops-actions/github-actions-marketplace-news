---
title: EOL Check
date: 2025-12-03 13:24:02 +00:00
tags:
  - abhishekpanda0620
  - GitHub Actions
draft: false
repo: https://github.com/abhishekpanda0620/eol-check
marketplace: https://github.com/marketplace/actions/eol-check
version: v1.3.2
dependentsNumber: "?"
---


Version updated for **https://github.com/abhishekpanda0620/eol-check** to version **v1.3.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eol-check) to find the latest changes.

## Release notes

## Changes

- Remove circular dependency (`eol-check` in `devDependencies`)
- Add `prepublishOnly` script to ensure `dist` is built before publishing
- Fix `main` entry point to `dist/index.js`
- Add missing `jest` mapping in `productMapper`
- Bump version to 1.3.2

## Testing

- All tests passing (39/39)
- Verified `npm pack` includes `dist` folder
- Verified `npm run check` works locally

## Fixes

This resolves installation and execution issues where `npm run check` failed for other users due to missing build artifacts and incorrect package configuration.

## Installation

```bash
npm install -g eol-check@1.3.2
```
