---
title: Aegis AI Governance Gate
date: 2026-04-05 06:27:49 +00:00
tags:
  - Acacian
  - GitHub Actions
draft: false
repo: https://github.com/Acacian/aegis
marketplace: https://github.com/marketplace/actions/aegis-ai-governance-gate
version: v0.9.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Acacian/aegis** to version **v0.9.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aegis-ai-governance-gate) to find the latest changes.

## Action Summary

Aegis is a runtime security tool for AI agents that provides automated guardrails, governance, and auditing without requiring code changes. It integrates with 11 popular AI frameworks to monitor and secure actions such as prompt injection detection, PII masking, and selection-by-negation governance, ensuring compliance and safety in AI operations. By offering features like "aegis plan" for policy previews, regression testing, and CI/CD gating, it automates policy enforcement and enhances the security and reliability of AI agent deployments.

## What's Changed

## Quality hardening for Selection Governance

### Fixed
- **Token-boundary keyword matching** — prevents false positives (e.g. "undelete" ≠ "delete")
- **CongruenceChecker priority** — deterministic DELETE > WRITE > READ
- **Privilege escalation gaming** — no longer blindly concatenates param values
- **Resource consumption gaming** — `max(count, limit, batch_size)`
- **PII keyword list** — synced with design doc (added email, name)

### Added
- SelectionAuditor thread safety (`threading.Lock`)
- CommitRevealSelection TTL + max_pending (memory leak prevention)
- `@audit_selection` sync function support
- 33 new tests

### Changed
- GitHub Action renamed: "Aegis AI Agent Security Gate"

See [CHANGELOG.md](https://github.com/Acacian/aegis/blob/main/CHANGELOG.md) for full details.
