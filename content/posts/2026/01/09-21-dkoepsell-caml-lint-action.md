---
title: CAML Lint
date: 2026-01-09 21:21:16 +00:00
tags:
  - dkoepsell
  - GitHub Actions
draft: false
repo: https://github.com/dkoepsell/caml-lint-action
marketplace: https://github.com/marketplace/actions/caml-lint
version: v0.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/dkoepsell/caml-lint-action** to version **v0.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/caml-lint) to find the latest changes.

## Action Summary

The `caml-lint-action` GitHub Action automates the validation of CAML files during continuous integration (CI) workflows. It ensures that invalid or inconsistent narrative content in CAML files is detected before deployment, preventing errors from shipping. This action provides a streamlined, zero-configuration solution for integrating CAML linting into CI pipelines.

## Release notes

Initial public release of the CAML Lint GitHub Action.

This action runs `caml-lint` in GitHub Actions to validate CAML (Canonical Adventure Markup Language) files during CI.

### Features
- Zero-configuration setup
- Validates one or more CAML files
- Fails CI on structural or semantic errors
- Designed for AI-generated and hand-authored content

### Typical use cases
- Validating narrative content in game repositories
- Enforcing consistency in shared campaign libraries
- Protecting against broken references in CI
- Reviewing AI-generated adventures automatically

### Related tools
- `caml-lint` (npm) — authoring validation
- `caml-trace` (npm) — runtime trace validation and analysis

This action is intentionally small, composable, and engine-agnostic.

