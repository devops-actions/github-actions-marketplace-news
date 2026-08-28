---
title: Foundry Toolbox Radar
date: 2026-08-28 01:59:57 +00:00
tags:
  - nithin42
  - GitHub Actions
draft: false
repo: https://github.com/nithin42/Foundry-Toolbox-Radar-Lab
marketplace: https://github.com/marketplace/actions/foundry-toolbox-radar
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The `foundry-toolbox-radar-lab` GitHub Action is a zero-latency static analyzer that audits Microsoft Foundry Toolboxes before they are deployed. It detects potential security and operational risks related to ungated mutating actions, static credential creep, indirect prompt injection, prompt & context leakage, and scope inflation. The action provides a comprehensive governance defense engine for enterprise AI practitioners deploying autonomous agents on Foundry.
---


Version updated for **https://github.com/nithin42/Foundry-Toolbox-Radar-Lab** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/foundry-toolbox-radar) to find the latest changes.

## Action Summary

The `foundry-toolbox-radar-lab` GitHub Action is a zero-latency static analyzer that audits Microsoft Foundry Toolboxes before they are deployed. It detects potential security and operational risks related to ungated mutating actions, static credential creep, indirect prompt injection, prompt & context leakage, and scope inflation. The action provides a comprehensive governance defense engine for enterprise AI practitioners deploying autonomous agents on Foundry.

## What's Changed

### Foundry Toolbox Radar v0.2.0

Pre-deployment governance, identity auditing, prompt injection detection, and data-leakage scanner for Microsoft Foundry Toolboxes and autonomous AI agents.

#### Highlights:
- **7-Rule Governance Matrix**: Aligned with the OWASP Top 10 for Large Language Models (LLM01, LLM02, LLM06, LLM07).
- **Indirect Prompt Injection Detection (`RULE-07`)**: Flags instruction overrides, role-hijacks, and exfiltration directives in tool metadata.
- **Zero-Dependency CLI (`radar`)**: Instant, offline static analysis with clean ASCII reports and machine-readable JSON gates.
- **Composite GitHub Action**: Seamless integration into automated pull request workflows.
- **Pre-Commit Hook Support**: Prevents insecure toolbox definitions from entering git history.
