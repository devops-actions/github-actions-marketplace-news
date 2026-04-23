---
title: Constellation Index
date: 2026-04-23 05:54:29 +00:00
tags:
  - ShiftinBits
  - GitHub Actions
draft: false
repo: https://github.com/ShiftinBits/constellation-github
marketplace: https://github.com/marketplace/actions/constellation-index
version: v1.2.2
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/ShiftinBits/constellation-github** to version **v1.2.2**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/constellation-index) to find the latest changes.

## Action Summary

The Constellation Index GitHub Action automates the process of indexing a repository by extracting abstract syntax tree (AST) metadata using the Constellation CLI. This privacy-first solution enables AI assistants to analyze code structure without transmitting source code, solving the problem of secure code analysis. Key capabilities include automatic updates, cross-platform compatibility, smart diff detection to optimize indexing, and seamless integration with minimal configuration.

## What's Changed

### What's new?

- **Manual runs always re-index**: `workflow_dispatch` triggers now bypass the `diff_check` step and force a full re-index, so clicking "Run workflow" always produces a fresh index regardless of the changed files on the current commit
- Clarified README to reflect that manual runs explicitly force indexing, while `schedule` triggers continue to rely on missing push baseline context

**Full Changelog**: https://github.com/ShiftinBits/constellation-github/compare/v1.2.1...v1.2.2
