---
title: Open Code Review
date: 2026-03-19 05:59:23 +00:00
tags:
  - raye-deng
  - GitHub Actions
draft: false
repo: https://github.com/raye-deng/open-code-review
marketplace: https://github.com/marketplace/actions/open-code-review
version: v2.1.5
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/raye-deng/open-code-review** to version **v2.1.5**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/open-code-review) to find the latest changes.

## Action Summary

Open Code Review is an open-source CI/CD quality gate designed to analyze and detect defects in AI-generated code that traditional tools often miss, such as hallucinated imports, stale APIs, security anti-patterns, and over-engineering. Powered by local LLMs and OpenAI-compatible providers, it automates deep code analysis across six programming languages to improve code quality and reliability. Its key capabilities include structural, semantic, and deep learning-based scans for comprehensive defect detection and reporting.

## Release notes

## What's Changed

### Bug Fix
- **fix: graceful fallback when tree-sitter WASM fails to initialize** — Prevents CLI crash on Node.js environments with WASM restrictions (e.g., certain CI/CD environments, restricted sandboxes)

### Packages
- `@opencodereview/core@2.1.3`
- `@opencodereview/cli@2.1.5`

### Upgrade
```bash
npm update -g @opencodereview/cli
```
