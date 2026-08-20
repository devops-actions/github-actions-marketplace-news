---
title: rung gate
date: 2026-08-20 06:27:22 +00:00
tags:
  - rung-dev
  - GitHub Actions
draft: false
repo: https://github.com/rung-dev/rung
marketplace: https://github.com/marketplace/actions/rung-gate
version: v0.5.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **rung is an AI agent verification tool that records and gates a change by running the real surface, capturing what happens, and providing a verifiable record. It ensures that changes are verified with concrete evidence rather than just self-reported claims, allowing for better code quality and accountability in production deployments.**
---


Version updated for **https://github.com/rung-dev/rung** to version **v0.5.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rung-gate) to find the latest changes.

## Action Summary

**rung is an AI agent verification tool that records and gates a change by running the real surface, capturing what happens, and providing a verifiable record. It ensures that changes are verified with concrete evidence rather than just self-reported claims, allowing for better code quality and accountability in production deployments.**

## What's Changed

rung 0.5.1: evidence-bundle/v2

At which rung did your agent verify?

This release splits the one word "verified" into three questions a checker can
enforce, and gates on all three. It is a breaking schema change from the 0.2.0
line: evidence-bundle/v1 bundles are refused with a regenerate message.

The three concepts
- RUNG {0, 1}. 0 is not a runtime observation of the real surface (reasoning, an
  isolated unit, a green suite); 1 drove the surface and captured its bytes.
- METHOD. single (default), the enforceable differential (an S0/S1 pair whose
  delta matches a declared change or invariance polarity), and advisory
  adversarial / fuzz / property (recorded, never gated).
- CONTEXT {author, independent}. cross-model and cross-lab are per-tier presence
  qualifiers, not higher contexts.

What the default policy now says
Shipped means observed: min_rung 1 at every tier. Medium and up need independent
context; high adds a cross-model qualifier; critical adds cross-lab. Tunable per
operator.

Also in this release
- rung run --rung 0|1 --method ...; --diff records a differential at rung 1
- Opt-in capture hygiene: --redact, --scan-secrets, --env-clear
- rung skill ships the skill from the CLI; new per-surface guidance
- Two self-verification cases under gate/cases/, including an independent
  cross-model panel that clears high and blocks critical
- Closed two STRIDE findings (argv secret leak, symlink-loop artifact)

Upgrading from 0.2.0
- The 0-4 rung ladder is removed. A v1 bundle now exits 2 with a regenerate
  message; recreate it with rung run, or hand-author against evidence-bundle/v2.
- Old rung 3/4 differentials become method differential at rung 1. Rung 0-2 reads
  collapse to rung 0.
- Policies gain require_context, require_cross_model, require_cross_lab,
  require_method; min_rung is now 0..1.

Install: pip install rung-ai . rung gate bundle.json

