---
title: Ground Cyber Closure Audit
date: 2026-06-27 22:13:00 +00:00
tags:
  - sergiumargan-sudo
  - GitHub Actions
draft: false
repo: https://github.com/sergiumargan-sudo/ground-cyber-plugin
marketplace: https://github.com/marketplace/actions/ground-cyber-closure-audit
version: v0.5.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sergiumargan-sudo/ground-cyber-plugin** to version **v0.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ground-cyber-closure-audit) to find the latest changes.

## What's Changed

Ground Cyber v0.5.0 adds false-closure and risk-relocation detection.

This release checks whether a closed GitHub security alert actually closed the underlying risk, or whether the same causal risk remains live elsewhere inside the audited scope.

New in v0.5.0:

- Relocation / migration detection
- Detection based only on observed alerts
- Same causal class matching:
  - same secret SHA-256 hash
  - same advisory
  - same code-scanning rule
- Markdown and JSON report integration
- Relocation tests
- README update

Principle:

Closed is a status. Revoked is evidence.

The relocation detector only reports when both ends are observed: a closed origin alert and a live destination alert in the same causal class at a different location.

A single alert never produces a relocation finding.

Absence of a relocation finding does not prove the risk did not move. It only means relocation was not observed inside the audited scope.

Read-only. Local-first. No AI in closure decisions.
