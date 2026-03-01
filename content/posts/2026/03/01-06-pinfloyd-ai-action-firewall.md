---
title: AI Action Firewall
date: 2026-03-01 06:08:47 +00:00
tags:
  - pinfloyd
  - GitHub Actions
draft: false
repo: https://github.com/pinfloyd/ai-action-firewall
marketplace: https://github.com/marketplace/actions/ai-action-firewall
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pinfloyd/ai-action-firewall** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-action-firewall) to find the latest changes.

## Action Summary

The AI Action Firewall (Hosted Authority Client) is a GitHub Action that serves as a deterministic, fail-closed pre-execution admission gate for AI-related workflows. It verifies and enforces external authority-signed decisions before allowing actions to execute, ensuring secure and controlled automation. This action helps prevent unauthorized or unintended executions by integrating external validation and cryptographic signature checks into the CI/CD pipeline.

## Release notes

AI Action Firewall v1.0.0

- Deterministic pre-execution control gate: POST /admit -> ALLOW/DENY + decision_hash
- Frozen engine invariants (canonical JSON determinism + stable hashing)
- Single hardcoded rule (bulk email threshold)
- CLI verify + runnable demo script
