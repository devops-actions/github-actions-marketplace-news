---
title: Chock Governance Check
date: 2026-08-21 06:40:15 +00:00
tags:
  - open-coder-ai
  - GitHub Actions
draft: false
repo: https://github.com/open-coder-ai/chock
marketplace: https://github.com/marketplace/actions/chock-governance-check
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Chock is an AI governance-as-code tool that automates and enforces rules across multiple AI coding agents used by a team or organization. It allows developers to define policies once and ensures they are consistently applied, including in environments like private codebases or public open-source projects. Chock compiles these policies into git hooks, CI gates, native pre-execution hooks, `AGENTS.md`, and documentation for Copilot, Codex, Gemini, Aider, and other AI coding agents. This ensures that all agents enforce the same rules, thereby creating deterministic guardrails for code quality and consistency across different AI tools.
---


Version updated for **https://github.com/open-coder-ai/chock** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/chock-governance-check) to find the latest changes.

## Action Summary

Chock is an AI governance-as-code tool that automates and enforces rules across multiple AI coding agents used by a team or organization. It allows developers to define policies once and ensures they are consistently applied, including in environments like private codebases or public open-source projects. Chock compiles these policies into git hooks, CI gates, native pre-execution hooks, `AGENTS.md`, and documentation for Copilot, Codex, Gemini, Aider, and other AI coding agents. This ensures that all agents enforce the same rules, thereby creating deterministic guardrails for code quality and consistency across different AI tools.

## What's Changed

## 0.1.1 — Hardening and governance PATCH

Compiled output is byte-identical to 0.1.0 (golden-suite enforced); everything here is
validation, supply chain, documentation, and tests.

- **Fix**: policy-id validation now uses `fullmatch` — an id with a trailing newline
  was accepted by Python's `$`-before-newline matching. Found by the new
  property-based suite.
- **Supply chain**: every GitHub Action pinned to a commit SHA; least-privilege
  `permissions:` on all workflows; pip installs hash-pinned via compiled requirements;
  release artifacts now carry build provenance attestations; weekly coverage-guided
  fuzzing (atheris) of the id and selection parsers.
- **Governance docs**: GOVERNANCE.md (decision-making, roles, access continuity) and a
  public roadmap index; SECURITY.md gains advisory URL and response timelines.
- **Tests**: property-based suite for id validation and agent selection; unit suites
  for the lifecycle umbrellas and frontier ingestion (statement coverage 78% → 81%).
- **Marketplace**: the GitHub Action is listed as "Chock Governance Check" with branding.


