---
title: Agent Security Harness
date: 2026-07-03 06:36:33 +00:00
tags:
  - msaleme
  - GitHub Actions
draft: false
repo: https://github.com/msaleme/red-team-blue-team-agent-fabric
marketplace: https://github.com/marketplace/actions/agent-security-harness
version: v4.8.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaleme/red-team-blue-team-agent-fabric** to version **v4.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-security-harness) to find the latest changes.

## What's Changed

Promotes the funding-instrument checks that were a single dimension of the AP2 harness (AP2-015) into a **first-class module** — the tokenized card credential (Visa Trusted Agent Protocol / Mastercard Agentic Tokens) that sits *inside* an AP2 Payment Mandate as the instrument that actually moves money.

## New: `card_token_harness.py` — 12 tests (CTK-001..012), #229
Stdlib-only, deterministic reference verifier, **every check fails closed**.

- **Binding:** agent holder-key, channel/domain, cross-network substitution
- **Scope:** merchant, per-transaction amount cap (both bounds — negative amounts rejected), cumulative velocity cap, consent policy
- **Cryptogram:** freshness (monotonic-counter replay), amount-binding (no re-pricing)
- **Lifecycle:** expiry, revocation/suspension ("identify and revoke")
- **Supply chain:** PAN de-tokenization protection

Grounded in EMV payment tokenisation + TAVV/DTVV dynamic cryptograms. AP2 answers *"is this agent authorized to pay for this cart"*; the card token answers *"is this credential valid, unrevoked, fresh, and bound to this agent/merchant/amount/channel"* — they compose.

**520 → 532 tests, 36 → 37 modules.** Two fail-open gaps (negative-amount, `None==None` binding) surfaced by Bugbot were fixed and are now guarded by negative tests before merge.

The harness now covers all four layers of the agentic-payments stack **plus** the card-network funding rail underneath them. Verified by `scripts/count_tests.py` (definitive: 532).
