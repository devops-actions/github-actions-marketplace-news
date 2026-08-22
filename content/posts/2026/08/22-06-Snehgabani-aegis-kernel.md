---
title: Aegis AI Agent Security & AST Invariant Guard
date: 2026-08-22 06:06:53 +00:00
tags:
  - Snehgabani
  - GitHub Actions
draft: false
repo: https://github.com/Snehgabani/aegis-kernel
marketplace: https://github.com/marketplace/actions/aegis-ai-agent-security-ast-invariant-guard
version: corevv1.10.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Aegis is a deterministic safety verification tool that intercepts and analyzes AI agent tool calls, ensuring they comply with invariants by parsing SQL queries into ASTs, applying tautology detection, enforcing numeric bounds, and masking secrets. It operates in-process, typically under 1.5ms for single-statement queries, without external API calls or LLM dependencies.
---


Version updated for **https://github.com/Snehgabani/aegis-kernel** to version **core@vv1.10.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aegis-ai-agent-security-ast-invariant-guard) to find the latest changes.

## Action Summary

Aegis is a deterministic safety verification tool that intercepts and analyzes AI agent tool calls, ensuring they comply with invariants by parsing SQL queries into ASTs, applying tautology detection, enforcing numeric bounds, and masking secrets. It operates in-process, typically under 1.5ms for single-statement queries, without external API calls or LLM dependencies.

## What's Changed

## [1.10.0](https://github.com/Snehgabani/aegis-kernel/compare/core@vv1.9.0...core@vv1.10.0) (2026-08-21)


### 🚀 Features & Verification Engines

* **security:** implement frontier swarm immunity with dangerous SQL built-in barriers, atomic CAS state invariants, and attenuated delegation tokens ([469fa38](https://github.com/Snehgabani/aegis-kernel/commit/469fa388c6628752b089bab74fa5e7d6eddf98b3))
