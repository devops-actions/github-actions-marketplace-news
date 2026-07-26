---
title: wartzar-bee CI Cost Guardrail
date: 2026-07-26 06:23:59 +00:00
tags:
  - wartzar-bee
  - GitHub Actions
draft: false
repo: https://github.com/wartzar-bee/ci-guardrail
marketplace: https://github.com/marketplace/actions/wartzar-bee-ci-cost-guardrail
version: v1.6.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action predicts and reports on the token cost changes between the head and base branches of an agent code repository. It posts a comment with the delta, highlights top consumers, and can block builds if costs exceed a specified threshold. The action is useful for identifying potential cost regressions before deployment, offering both report-only and blocking modes.
---


Version updated for **https://github.com/wartzar-bee/ci-guardrail** to version **v1.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wartzar-bee-ci-cost-guardrail) to find the latest changes.

## Action Summary

This GitHub Action predicts and reports on the token cost changes between the head and base branches of an agent code repository. It posts a comment with the delta, highlights top consumers, and can block builds if costs exceed a specified threshold. The action is useful for identifying potential cost regressions before deployment, offering both report-only and blocking modes.

## What's Changed

### Added
- **`min-delta-tokens` noise floor (default 100)** — the `threshold-pct` gate now blocks only when the absolute token increase (HEAD − BASE) is at least this many tokens. This kills the single most common cost-guardrail false positive: a tiny base (e.g. 10 → 30 tokens = +200%) failing the build over a change that costs a fraction of a cent. Set `min-delta-tokens: 0` to gate on percentage alone (the pre-v1.6 behaviour). Independent of the `max-tokens` absolute budget gate. When a percentage would have breached but the floor held it back, the PR comment explains why the eye-catching percentage did not block.

Outputs, `mode` (warn/block), `max-tokens`, responsible-line attribution, and comment-API resilience are unchanged from v1.5.0. Tests: 95/95 passing (dedicated coverage in TEST 20).

**Upgrade:** `uses: wartzar-bee/ci-guardrail@v1` picks this up automatically (the moving `v1` tag advances to v1.6.0).
