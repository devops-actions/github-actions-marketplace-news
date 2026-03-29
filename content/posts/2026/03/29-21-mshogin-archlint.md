---
title: archlint - Architecture Review
date: 2026-03-29 21:50:42 +00:00
tags:
  - mshogin
  - GitHub Actions
draft: false
repo: https://github.com/mshogin/archlint
marketplace: https://github.com/marketplace/actions/archlint-architecture-review
version: v1.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mshogin/archlint** to version **v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/archlint-architecture-review) to find the latest changes.

## Action Summary

The `archlint` GitHub Action is an architecture linter designed to analyze and improve the structural quality of Go and Rust projects. It automates the detection of code violations, such as dependency cycles, SOLID principle breaches, and code smells, while providing detailed architecture metrics, health scores, and quality gates. Additionally, it supports cross-language validation, enabling users to assess and validate architectural consistency across Go and Rust projects.

## What's Changed

## archlint - Architecture Linter for Go and Rust

Automated architecture analysis in your CI pipeline. Detects:
- Layer violations (handler -> repo bypassing service)
- Circular dependencies
- High fan-out / coupling
- God classes and fat interfaces
- SOLID violations

### Quick Start
\`\`\`yaml
- uses: mshogin/archlint@v1
  with:
    threshold: 10
\`\`\`

### Features
- 200+ architecture rules
- Go and Rust support
- Health score 0-100
- Badge generation
- Watch mode for local development
