---
title: AI Cost Receipt
date: 2026-06-30 15:08:56 +00:00
tags:
  - noah-thing
  - GitHub Actions
draft: false
repo: https://github.com/noah-thing/receipt
marketplace: https://github.com/marketplace/actions/ai-cost-receipt
version: v0.2.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/noah-thing/receipt** to version **v0.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-cost-receipt) to find the latest changes.

## What's Changed

Hardening and polish for the usage-awareness feature shipped in 0.2.0. No breaking changes.

- **Provider-aware lever.** The what-if suggestion now picks the cheapest model from the *same* provider — an OpenAI-heavy branch is told about `gpt-4.1-nano`, not a Claude model.
- **Foolproof plan lookup.** A malformed or hand-edited plan id (e.g. `toString`) can no longer resolve to an inherited object member and poison the budget. `budget plan` validates strictly.
- **Cleaner distribution.** Task sizes and records ignore unscoped proxy-only usage, so "≈ 2 PRs" reflects your real branches.
- **Quieter proxy.** Rate-limit capture skips no-op disk writes.
- **Opt-out.** Set `"usage": false` in `.receipt/config.json` to drop the block from the PR comment and `receipt show`.

67 tests, typecheck clean. Verified end-to-end across empty / no-plan / full scenarios. MIT.
