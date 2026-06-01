---
title: AgentRules Compiler
date: 2026-06-01 23:47:45 +00:00
tags:
  - R0SS94
  - GitHub Actions
draft: false
repo: https://github.com/R0SS94/agentrules
marketplace: https://github.com/marketplace/actions/agentrules-compiler
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/R0SS94/agentrules** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentrules-compiler) to find the latest changes.

## What's Changed

Baseline adoption release for AgentRules Compiler.

### Added

- Baseline files for gradual adoption.
- `agentrules check --write-baseline` to record current findings.
- `agentrules check --baseline` to suppress known findings and fail only on new findings.
- `baseline` action input for GitHub Actions workflows.
- Baseline suppression counts in text, Markdown, and JSON reports.

### Why this release matters

Teams can now add AgentRules to an existing repository without fixing every
legacy violation immediately. Commit a baseline once, then let CI fail only when
new pull requests introduce new violations.

