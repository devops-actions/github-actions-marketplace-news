---
title: Constellation Index
date: 2026-04-07 06:15:38 +00:00
tags:
  - ShiftinBits
  - GitHub Actions
draft: false
repo: https://github.com/ShiftinBits/constellation-github
marketplace: https://github.com/marketplace/actions/constellation-index
version: v1.0.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/ShiftinBits/constellation-github** to version **v1.0.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/constellation-index) to find the latest changes.

## Action Summary

The Constellation Index Action automates the process of analyzing and indexing a repository's codebase using the Constellation CLI, which extracts abstract syntax tree (AST) metadata to provide structural insights into the code. It enables AI tools to understand codebases without transmitting source code, ensuring a privacy-first approach. This action simplifies integration with a single input, supports cross-platform environments, and always uses the latest CLI version for up-to-date analysis.

## What's Changed

### What's new?

- Initial release of Constellation Index GitHub Action
- Privacy-first design: only structural metadata transmitted, never source code
- Single required input: `access-key`
- Outputs: `indexed` (boolean) and `summary` (string)
- Support for Ubuntu, macOS, and Windows runners
