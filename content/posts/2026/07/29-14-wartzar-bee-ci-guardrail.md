---
title: wartzar-bee CI Cost Guardrail
date: 2026-07-29 14:50:53 +00:00
tags:
  - wartzar-bee
  - GitHub Actions
draft: false
repo: https://github.com/wartzar-bee/ci-guardrail
marketplace: https://github.com/marketplace/actions/wartzar-bee-ci-cost-guardrail
version: v1.8.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action monitors a PR's token cost against its base branch and comments on the responsible files if there is a significant increase. It can block builds if the cost exceeds a specified threshold and offers an idempotent report in the Actions run UI, including details on the token cost delta and top consumers.
---


Version updated for **https://github.com/wartzar-bee/ci-guardrail** to version **v1.8.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wartzar-bee-ci-cost-guardrail) to find the latest changes.

## Action Summary

This GitHub Action monitors a PR's token cost against its base branch and comments on the responsible files if there is a significant increase. It can block builds if the cost exceeds a specified threshold and offers an idempotent report in the Actions run UI, including details on the token cost delta and top consumers.

## What's Changed

Two conversion-focused increments folded into one release (supersedes the un-fired v1.7.0 request — fire v1.8.0 only).

### New: `max-usd` — an absolute DOLLAR budget gate
The product's headline unit is dollars, but until now the only absolute ceiling was `max-tokens`. Teams budget in $ ("no agent run over $0.50"), so `max-usd` blocks the build when the PR (HEAD) branch's estimated run cost — at the resolved price, honouring the `model` preset — exceeds a dollar ceiling. The dollar-native twin of `max-tokens`.
- New `max-usd` input (decimal, e.g. `0.50`). `0` (default) disables it — fully backward compatible.
- New `over-usd-budget` output; PR comment shows a `Cost budget (max-usd)` row (over/within) and a block message naming the $ breach; `::error::`/`::warning::` annotation per mode.
- Malformed value fails open (gate disabled) — correct for an opt-in ceiling.

### Also: `model` price presets (accurate USD without looking up a price)
- New `model` input resolves `price-per-1m-tokens` from a known model's published input price. Presets (input $/1M, 2026-05-26): opus/claude-opus-* = 5.00, fable/claude-fable-* = 10.00, sonnet/claude-sonnet-* = 3.00, haiku/claude-haiku-* = 1.00.
- Precedence: explicit `price-per-1m-tokens` > `model` preset > unchanged $3.00 default. Unknown model warns + falls back.

Tested: RED→GREEN in test/run-test.sh — TEST 22 (max-usd: over/under ceiling, disabled-default, model-preset-priced ceiling) + TEST 21 (model presets). 111/111 passing; the 8 max-usd assertions were proven failing before the feature and passing after. Pre-publish audit CLEAN; action.yml valid YAML with inputs/env wired.
