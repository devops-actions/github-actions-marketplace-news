---
title: Constellation Index
date: 2026-04-14 06:37:42 +00:00
tags:
  - ShiftinBits
  - GitHub Actions
draft: false
repo: https://github.com/ShiftinBits/constellation-github
marketplace: https://github.com/marketplace/actions/constellation-index
version: v1.2.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/ShiftinBits/constellation-github** to version **v1.2.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/constellation-index) to find the latest changes.

## Action Summary

The Constellation Index GitHub Action automates the indexing of repository codebases by extracting abstract syntax tree (AST) metadata using the Constellation CLI, enabling AI tools to analyze code structure without exposing source code. It simplifies integration, ensures privacy by avoiding code transmission, and optimizes performance with smart diff detection to index only modified files. This action is ideal for maintaining code intelligence and streamlining AI-assisted workflows in a secure and efficient manner.

## What's Changed

### What's new?

- **LSP enrichment support**: automatically installs TypeScript and Python language servers during CI, enabling type info, references, and call hierarchy enrichment when `constellation.json` has LSP config
- Managed LSP servers installed to `~/.constellation/lsp-servers/` — gracefully skipped when no LSP config is present

**Full Changelog**: https://github.com/ShiftinBits/constellation-github/compare/v1.1.0...v1.2.0
