---
title: LetItLoop Proof-Carrying PR Verification Gate
date: 2026-08-26 06:27:49 +00:00
tags:
  - sdageltc
  - GitHub Actions
draft: false
repo: https://github.com/sdageltc/letitloop-action
marketplace: https://github.com/marketplace/actions/letitloop-proof-carrying-pr-verification-gate
version: v1.0.3
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
actionSummary: |
  The LetItLoop Action is a Zero-Config GitHub Action designed to verify the integrity of AI-driven pull requests by checking structural invariants and ensuring that only allowed files are modified. It automates proof-carrying verification tasks such as scope boundary leasing, subprocess test gating, and generating signed evidence receipts directly to pull requests. The action supports universal verification for multiple languages and provides advanced features for Python codebases, including AST signature integrity checks and decorator retention.
---


Version updated for **https://github.com/sdageltc/letitloop-action** to version **v1.0.3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/letitloop-proof-carrying-pr-verification-gate) to find the latest changes.

## Action Summary

The LetItLoop Action is a Zero-Config GitHub Action designed to verify the integrity of AI-driven pull requests by checking structural invariants and ensuring that only allowed files are modified. It automates proof-carrying verification tasks such as scope boundary leasing, subprocess test gating, and generating signed evidence receipts directly to pull requests. The action supports universal verification for multiple languages and provides advanced features for Python codebases, including AST signature integrity checks and decorator retention.

## What's Changed

## 🚀 What's New in LetItLoop Action v1.0.3

### 1. Dual-Mode Zero-Dependency AST Invariant Validator
- **Signature & Type Annotation Verification**: Recursively parses Python AST trees, validating that functions, classes, arguments, and type annotations do not silently drift.
- **Syntax Invariant Scan**: Verifies syntax validity across all workspace Python files without requiring runtime execution.

### 2. Recompiled Standalone Action Bundle
- Production `dist/index.js` bundle compiled with zero-runtime dependencies.
- Verified 100% green on GitHub Actions CI.

---
**Full Changelog**: https://github.com/sdageltc/letitloop-action/compare/v1.0.2...v1.0.3

