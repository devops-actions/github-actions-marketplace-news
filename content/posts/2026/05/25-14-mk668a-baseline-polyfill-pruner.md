---
title: baseline-polyfill-pruner
date: 2026-05-25 14:37:34 +00:00
tags:
  - mk668a
  - GitHub Actions
draft: false
repo: https://github.com/mk668a/baseline-polyfill-pruner
marketplace: https://github.com/marketplace/actions/baseline-polyfill-pruner
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mk668a/baseline-polyfill-pruner** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/baseline-polyfill-pruner) to find the latest changes.

## Action Summary

The `baseline-polyfill-pruner` is a GitHub Action and CLI tool designed to automate the removal of outdated polyfill dependencies from projects. It uses Web Platform Baseline data and your project's `browserslist` configuration to identify and safely prune polyfills that are no longer necessary, ensuring accurate and up-to-date dependency management. By automating this process, it eliminates guesswork, reduces bundle size, and creates pull requests to streamline maintenance.

## What's Changed

First release of **baseline-polyfill-pruner**.

Detects and removes polyfill/shim dependencies once the web feature they shim is Baseline **Widely available** and your `browserslist` targets all support it.

- `--diff` / `--json` / `--fix` (format-preserving package.json removal + import-site checklist; never rewrites source)
- 30-entry, CI-validated `web-features` registry
- **GitHub Action** (`uses: mk668a/baseline-polyfill-pruner@v1`) that opens a removal PR on a schedule — self-contained, builds from source, no npm install required

See the README for the workflow snippet.
