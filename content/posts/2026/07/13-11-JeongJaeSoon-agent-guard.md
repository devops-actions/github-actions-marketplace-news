---
title: Agent Guard Secret Guardrails
date: 2026-07-13 11:39:34 +00:00
tags:
  - JeongJaeSoon
  - GitHub Actions
draft: false
repo: https://github.com/JeongJaeSoon/agent-guard
marketplace: https://github.com/marketplace/actions/agent-guard-secret-guardrails
version: v1.10.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Summary:**
  
  Agent Guard is a deterministic guardrail that blocks AI coding agents from accidentally exposing secrets during tool calls. It uses `gitleaks` for detection and plain shell scripts for integration. It runs at the agent's tool boundary to block common secret exposure methods, such as reading `.env` files or writing sensitive values. Agent Guard pairs with commit/CI scanning for defense in depth. It is not a vault or credential rotator but provides real-time protection before secrets are exposed.
---


Version updated for **https://github.com/JeongJaeSoon/agent-guard** to version **v1.10.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-guard-secret-guardrails) to find the latest changes.

## Action Summary

**Summary:**

Agent Guard is a deterministic guardrail that blocks AI coding agents from accidentally exposing secrets during tool calls. It uses `gitleaks` for detection and plain shell scripts for integration. It runs at the agent's tool boundary to block common secret exposure methods, such as reading `.env` files or writing sensitive values. Agent Guard pairs with commit/CI scanning for defense in depth. It is not a vault or credential rotator but provides real-time protection before secrets are exposed.

## What's Changed

## What's Changed
* Promote Codex setup and command guard to v1.10.0 by @JeongJaeSoon in https://github.com/JeongJaeSoon/agent-guard/pull/108


**Full Changelog**: https://github.com/JeongJaeSoon/agent-guard/compare/v1.9.0...v1.10.0
