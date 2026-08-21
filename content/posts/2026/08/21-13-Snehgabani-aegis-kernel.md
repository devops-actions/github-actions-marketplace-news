---
title: Aegis AI Agent Security & AST Invariant Guard
date: 2026-08-21 13:59:58 +00:00
tags:
  - Snehgabani
  - GitHub Actions
draft: false
repo: https://github.com/Snehgabani/aegis-kernel
marketplace: https://github.com/marketplace/actions/aegis-ai-agent-security-ast-invariant-guard
version: diagnosticsvv1.2.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Aegis is an open-source safety kernel that verifies AI agent tool calls against deterministic invariants before execution. It parses SQL into abstract syntax trees, applies tautology detection via constant folding, enforces numeric bounds, and masks secrets through salted token vaults. The core observation behind Aegis is that structural violations can be caught deterministically rather than probabilistically through AST analysis.
---


Version updated for **https://github.com/Snehgabani/aegis-kernel** to version **diagnostics@vv1.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aegis-ai-agent-security-ast-invariant-guard) to find the latest changes.

## Action Summary

Aegis is an open-source safety kernel that verifies AI agent tool calls against deterministic invariants before execution. It parses SQL into abstract syntax trees, applies tautology detection via constant folding, enforces numeric bounds, and masks secrets through salted token vaults. The core observation behind Aegis is that structural violations can be caught deterministically rather than probabilistically through AST analysis.

## What's Changed

## [1.2.1](https://github.com/Snehgabani/aegis-kernel/compare/diagnostics@vv1.2.0...diagnostics@vv1.2.1) (2026-08-21)


### 🐛 Bug Fixes & Invariant Patches

* **release:** add repository provenance metadata across all packages and fix CI Python test paths ([6d41f24](https://github.com/Snehgabani/aegis-kernel/commit/6d41f24ec5a43c311fef98c4d2bb6f4962974295))
