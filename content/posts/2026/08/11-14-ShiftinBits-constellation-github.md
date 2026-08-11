---
title: Constellation Index
date: 2026-08-11 14:32:38 +00:00
tags:
  - ShiftinBits
  - GitHub Actions
draft: false
repo: https://github.com/ShiftinBits/constellation-github
marketplace: https://github.com/marketplace/actions/constellation-index
version: v1.2.3
dependentsNumber: "6"
actionType: Composite
actionSummary: |
  This GitHub Action installs the latest Constellation CLI and indexes your repository's codebase using Tree-sitter AST analysis, ensuring AI assistants can understand your code without transmitting source code. It provides a privacy-first approach by extracting only AST metadata and offers automatic updates to the CLI version. The action supports cross-platform operation on Ubuntu, macOS, and Windows runners and includes a smart diff detection mechanism to skip indexing when no files matching the configuration have changed.
---


Version updated for **https://github.com/ShiftinBits/constellation-github** to version **v1.2.3**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/constellation-index) to find the latest changes.

## Action Summary

This GitHub Action installs the latest Constellation CLI and indexes your repository's codebase using Tree-sitter AST analysis, ensuring AI assistants can understand your code without transmitting source code. It provides a privacy-first approach by extracting only AST metadata and offers automatic updates to the CLI version. The action supports cross-platform operation on Ubuntu, macOS, and Windows runners and includes a smart diff detection mechanism to skip indexing when no files matching the configuration have changed.

## What's Changed

### What's new?

- **Incremental indexing in CI**: every trigger now ensures full git history is available (self-healing shallow clones), so the CLI can compute deltas against the last indexed commit instead of falling back to a full re-index on each push — dramatically reducing index churn
- **No more waiting on the server**: the action now finishes as soon as the upload is accepted instead of polling until server-side indexing completes, cutting idle runner minutes; a new `wait` input (default `"false"`) restores the old behavior for workflows that need the completed index
- **Manual runs are truly full re-indexes**: `workflow_dispatch` triggers now explicitly request a full re-index, guaranteeing a clean rebuild when you click "Run workflow"
- More reliable diff-checks on shallow clones — pushes that touch no tracked files can now skip indexing entirely

**Full Changelog**: https://github.com/ShiftinBits/constellation-github/compare/v1.2.2...v1.2.3

