---
title: Agent Security Harness
date: 2026-07-01 22:42:46 +00:00
tags:
  - msaleme
  - GitHub Actions
draft: false
repo: https://github.com/msaleme/red-team-blue-team-agent-fabric
marketplace: https://github.com/marketplace/actions/agent-security-harness
version: v4.7.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaleme/red-team-blue-team-agent-fabric** to version **v4.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-security-harness) to find the latest changes.

## What's Changed

**The harness now tests all four layers of the agentic-payments stack.** Since the last PyPI release (v4.5.0), two conformance layers landed — this release ships both.

## Highlights (v4.5.0 → v4.7.0: 474 → 520 tests, 33 → 36 modules)

### Merchant-journey layer — NEW (UCP/ACP), #228
`ucp_acp_harness.py` — 12 tests, stdlib-only, fail-closed reference verifier.
- **UCP** (Shopify Universal Cart): profile owner-key binding, cross-merchant line-item injection, journey step-order / skip-consent, quote integrity, cart-scope-vs-stated-intent, profile takeover.
- **ACP** (OpenAI/Stripe): checkout-session binding, SharedPaymentToken merchant + amount scope, order idempotency, product-feed authenticity, session expiry.

### Authorization + hardening layer (AP2 + Fireblocks x402), #227
`ap2_harness.py` (17) + `x402_fireblocks_harness.py` (17) — AP2 mandate-chain authorization (FIDO-governed) and the Fireblocks x402 request-integrity / spend-governance / batch-settlement extension. Includes fixes to three fail-open verifier gaps (credential-release flag-trust, scope fail-open, SSRF range gap) surfaced by Bugbot, now guarded by negative tests.

## Coverage now spans
comms (MCP/A2A) → **merchant journey (UCP/ACP)** → authorization/trust (AP2/TAP) → settlement (x402/MPP/L402).

Full inventory: `docs/TEST-INVENTORY.md`. Verified by `scripts/count_tests.py` (definitive: 520).
