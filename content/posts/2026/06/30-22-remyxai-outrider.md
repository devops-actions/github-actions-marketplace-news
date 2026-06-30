---
title: Remyx Outrider
date: 2026-06-30 22:46:13 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.6.30
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.6.30**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## Changes since v1.6.29

### Selection pass now honors \`claude-timeout\` instead of a hardcoded 480s

The agentic selection pass had a 480s default wall-clock ceiling — fine for Anthropic Opus on a typical candidate pool, but observed timing out on slower non-default backends (GLM-5.2 on a moderate pool routinely runs 500-700s). When the selection times out, the code falls back to the highest-relevance candidate in the broad pool — silently losing the verification + contract-anchoring signal that selection produces.

A single \`claude-timeout\` input now governs every agentic stage:

| Stage | Pre-fix default | Post-fix default |
|---|---|---|
| Preflight routing | 180s (hardcoded) | \`claude-timeout\` (v1.6.28) |
| Selection (agentic) | 480s (hardcoded) | \`claude-timeout\` (this release) |
| Audit / refine | 120s (hardcoded) | \`claude-timeout\` (v1.6.29) |
| Implementation | 900s (already \`claude-timeout\`) | unchanged |

Each stage's legacy env var (\`REMYX_SELECTION_TIMEOUT_S\`, \`REMYX_AUDIT_TIMEOUT_S\`) is preserved as a per-stage escape hatch for CI scenarios that want a tighter ceiling on a specific stage while leaving the implementation timeout large.

### Compatibility

Backwards-compatible. Customers who already set the per-stage env vars see no change. Customers who hadn't see the selection budget bump from 480s → 900s (the default \`claude-timeout\`) — strictly more headroom; calls return when they complete, the ceiling is just a hard kill, so this isn't a cost change unless the call was previously timing out.
