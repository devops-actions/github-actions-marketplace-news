---
title: Drift — Architectural Erosion Check
date: 2026-03-19 13:50:59 +00:00
tags:
  - sauremilk
  - GitHub Actions
draft: false
repo: https://github.com/sauremilk/drift
marketplace: https://github.com/marketplace/actions/drift-architectural-erosion-check
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sauremilk/drift** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/drift-architectural-erosion-check) to find the latest changes.

## Action Summary

Drift is a static analysis tool designed to detect architectural erosion in codebases, particularly caused by AI-generated code from tools like Copilot or ChatGPT. It identifies the loss of design coherence, such as pattern fragmentation, structural inconsistencies, and near-duplicate functions, which traditional linters and code quality tools often miss. By providing a deterministic Codebase Health Score, Drift helps maintain long-term architectural integrity in AI-accelerated development environments.

## Release notes

## Drift — Detect architectural erosion from AI-generated code

### GitHub Action

```yaml
- uses: sauremilk/drift@v1
  with:
    fail-on: high
    upload-sarif: "true"
