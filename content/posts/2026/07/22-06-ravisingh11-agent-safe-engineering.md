---
title: Agent-Safe Commit Guardrails
date: 2026-07-22 06:14:05 +00:00
tags:
  - ravisingh11
  - GitHub Actions
draft: false
repo: https://github.com/ravisingh11/agent-safe-engineering
marketplace: https://github.com/marketplace/actions/agent-safe-commit-guardrails
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Agent-Safe Engineering** is an automated tool designed to ensure AI-generated code changes are understandable and maintainable by humans. It uses human-readable standards, configurable guardrails, focused agent skills, and deterministic validators to enforce constraints on automated code modifications. This ensures that the changes are not only safe but also auditable and reversible.
---


Version updated for **https://github.com/ravisingh11/agent-safe-engineering** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-safe-commit-guardrails) to find the latest changes.

## Action Summary

**Agent-Safe Engineering** is an automated tool designed to ensure AI-generated code changes are understandable and maintainable by humans. It uses human-readable standards, configurable guardrails, focused agent skills, and deterministic validators to enforce constraints on automated code modifications. This ensures that the changes are not only safe but also auditable and reversible.

## What's Changed

## Highlights

- Rejects unknown or misspelled policy parameters with a published strict schema.
- Explains the resolved policy and included or excluded readability inputs.
- Generates revision-bound verification receipts for staged trees and Git ranges.
- Adds a safe dependency-free installer and history-based threshold calibration.
- Adds hardened repository CI and a reusable GitHub Action pinned at v0.2.0.
- Self-validates the composite action and its receipt in GitHub Actions.

## Validation

- 27 commit-guardrail and calibration tests passed.
- 3 installer tests passed.
- Repository policy copies, schemas, skills, version, and YAML validated.
- Remote Validate workflow passed on release commit 5f5a973.
