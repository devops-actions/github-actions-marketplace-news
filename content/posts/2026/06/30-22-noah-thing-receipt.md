---
title: AI Cost Receipt
date: 2026-06-30 22:47:53 +00:00
tags:
  - noah-thing
  - GitHub Actions
draft: false
repo: https://github.com/noah-thing/receipt
marketplace: https://github.com/marketplace/actions/ai-cost-receipt
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/noah-thing/receipt** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-cost-receipt) to find the latest changes.

## What's Changed

Receipt now tells you how to spend fewer tokens — **without making the work worse.** 💡

```bash
receipt advice          # this branch
receipt advice --all    # the whole ledger
```

It reads your usage, names **what's driving the cost**, and recommends fixes that only target *waste* — never "think less" or "explain less." Output and reasoning are the value; the advisor leaves them alone. What it catches:

- context re-sent at full price instead of cached,
- the cache rebuilt faster than it's reused,
- retries that re-send everything for no new output,
- premium prices paid for mechanical reads a cheaper model handles at the same quality.

Each tip is ranked by impact with the dollar saving where it's computable, and the single biggest win rides along on every PR receipt and `receipt show`.

Deterministic and local — no API key, no network. 75 tests, typecheck clean. MIT.
