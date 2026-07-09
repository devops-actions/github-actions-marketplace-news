---
title: SkillTotal AI Component Security Scan
date: 2026-07-09 06:56:17 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.36.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.36.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Changed
- **Declarative combination registry (`skilltotal/combinations.py`).** The four synthesized
  *combination* findings — emergent risk from co-occurring signals (`ST-COMBO-EXFIL`,
  `ST-FLOW-TRIFECTA`, `ST-INSTALL-DROPPER`, `ST-CONVERGENCE`) — are now declared in one ordered
  registry, each with a short technique label (for the public per-technique benchmark) and an
  evaluator adapter. The engine iterates the registry in two phases (pre-/post-threat-class
  assignment) instead of four hardcoded calls, so a new combination is a registry entry, not an
  edit to the engine's control flow. **Behavior is byte-identical** — the calibrated detection
  logic stays in `scoring.py`, guarded by the recall gate and the per-finding golden set;
  `RULESET_VERSION` (39) and the report shape (schema 1.5) are unchanged. Each combination id is
  kept in sync with its `RuleSpec` and `ComponentTrait` by `tests/test_combinations.py`.


