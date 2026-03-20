---
title: Totem Shield
date: 2026-03-20 05:49:53 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/totem1.3.5
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/totem@1.3.5**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a GitHub Action and CLI tool designed to enforce project-specific architectural rules and governance across repositories by creating a persistent, model-agnostic memory layer. It automates the validation of AI-generated or manually written code through deterministic guardrails, ensuring consistent adherence to predefined rules without relying on real-time AI interactions or external APIs. Key capabilities include cross-repo shared knowledge, CI/CD integration, and compatibility with any AI coding agent, making it especially useful for maintaining code quality, security, and architectural consistency.

## Release notes

### Patch Changes

-   5810bcc: ### Knowledge Quality & Security
    -   All 59 universal baseline lessons now include actionable Fix guidance — agents know HOW to resolve violations, not just WHAT is wrong (#642)
    -   Path traversal containment check using path.relative prevents reads outside the project directory (#738)
    -   Traversal skip now logs a warning via onWarn callback for visibility (#739)

