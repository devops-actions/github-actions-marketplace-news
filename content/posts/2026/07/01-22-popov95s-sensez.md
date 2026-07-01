---
title: Sensez - Code Quality Feedback
date: 2026-07-01 22:40:33 +00:00
tags:
  - popov95s
  - GitHub Actions
draft: false
repo: https://github.com/popov95s/sensez
marketplace: https://github.com/marketplace/actions/sensez-code-quality-feedback
version: 0.1.6-alpha
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/popov95s/sensez** to version **0.1.6-alpha**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sensez-code-quality-feedback) to find the latest changes.

## What's Changed

Initial release of the Sensez GitHub Action for pull request analysis.

### What It Does
- Posts annotations and optional review comments on duplicated code blocks found in PR diffs. Fail-on-new thresholds let you gate merges on detected duplication.
### Language Support
- Python only in this initial release. JavaScript, TypeScript, and Rust support exist in the full CLI but are not yet shipped in the PyPI build used by the action.
### What Is Sensez?
A structural maintainability tool that complements linters and type-checkers. It builds a graph representation of your code to detect structural duplication, dead code and code smell.

### Using Sensez Standalone (MCP / CLI)
```
uv tool install sensez          # or: pip install sensez
sensez noze .                   # scan the current directory
```

For JS/TS:
```
npm install --dev sensez
npx sensez noze .
```
To use the MCP server (IDE integration):
```
sensez init
```
or 

```
npx sensez init
```
