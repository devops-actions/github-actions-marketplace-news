---
title: SkillTotal AI Component Security Scan
date: 2026-06-20 07:11:35 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.17.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.17.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Added
- **OWASP Agentic Skills Top 10 mapping.** Every finding now carries machine-readable `owasp`
  category ids (e.g. `["AST04"]`) in the JSON report, and SARIF output emits the taxonomy as
  native `taxonomies` + per-rule `relationships`. Deterministic projection over the rule registry
  (`skilltotal/owasp.py`); no execution, no LLM. Findings with no honest static fit (raw
  capabilities, classic code-level vulns) carry an empty list rather than a forced category — see
  `docs/owasp-agentic-skills-mapping.md`. Report schema **1.4** (adds `finding.owasp`); ruleset 18.


