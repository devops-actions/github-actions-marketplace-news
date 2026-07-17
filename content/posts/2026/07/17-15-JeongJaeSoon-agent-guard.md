---
title: Agent Guard Secret Guardrails
date: 2026-07-17 15:03:40 +00:00
tags:
  - JeongJaeSoon
  - GitHub Actions
draft: false
repo: https://github.com/JeongJaeSoon/agent-guard
marketplace: https://github.com/marketplace/actions/agent-guard-secret-guardrails
version: v2.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Agent Guard is a deterministic guardrail designed to prevent AI coding agents from accidentally exposing sensitive information, such as `.env` files containing private keys or credentials. It monitors the agent's interactions with these files at runtime and blocks them if they attempt to read or write sensitive data before it can be used. This tool helps in real-time detection of potential leaks by using gitleaks for scanning and plain shell scripts for integration, ensuring defense-in-depth security measures are implemented.
---


Version updated for **https://github.com/JeongJaeSoon/agent-guard** to version **v2.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-guard-secret-guardrails) to find the latest changes.

## Action Summary

Agent Guard is a deterministic guardrail designed to prevent AI coding agents from accidentally exposing sensitive information, such as `.env` files containing private keys or credentials. It monitors the agent's interactions with these files at runtime and blocks them if they attempt to read or write sensitive data before it can be used. This tool helps in real-time detection of potential leaks by using gitleaks for scanning and plain shell scripts for integration, ensuring defense-in-depth security measures are implemented.

## What's Changed

## What's Changed
* fix(hooks): scan NotebookEdit cell content for secrets and PII by @JeongJaeSoon in https://github.com/JeongJaeSoon/agent-guard/pull/113
* chore(release): v2.0.1 by @JeongJaeSoon in https://github.com/JeongJaeSoon/agent-guard/pull/114


**Full Changelog**: https://github.com/JeongJaeSoon/agent-guard/compare/v2.0.0...v2.0.1
