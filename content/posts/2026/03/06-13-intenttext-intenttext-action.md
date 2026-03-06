---
title: IntentText Validate
date: 2026-03-06 13:47:11 +00:00
tags:
  - intenttext
  - GitHub Actions
draft: false
repo: https://github.com/intenttext/intenttext-action
marketplace: https://github.com/marketplace/actions/intenttext-validate
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/intenttext/intenttext-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/intenttext-validate) to find the latest changes.

## Action Summary

The IntentText Validate GitHub Action automates the validation of `.it` files, a human-readable structured document format used for creating workflows, structured documents, and publications. It checks for syntax correctness, proper references, required properties, duplicate IDs, and variable declarations in IntentText files, ensuring they meet the defined specifications. This action simplifies the process of maintaining accurate and error-free IntentText documents in CI workflows.

## Release notes

## IntentText Validate — v1.0.0

GitHub Action to validate IntentText (.it) files in any repository.

### What it does
- Validates all `.it` files matching a glob pattern
- Reports broken step references, missing required properties, and unresolved variables
- Adds inline annotations to pull requests
- Generates a summary table in the Actions run

### Usage

    - uses: intenttext/intenttext-action@v1
      with:
        path: 'workflows/**/*.it'
        strict: false

### Inputs
| Input | Default | Description |
|---|---|---|
| `path` | `**/*.it` | Glob pattern for files to validate |
| `strict` | `false` | Fail on warnings too |
| `ignore` | `node_modules/**` | Patterns to ignore |
| `annotate` | `true` | Add inline PR comments |

### Requirements
- `@intenttext/core >= 2.6.0` (bundled — no install needed)
