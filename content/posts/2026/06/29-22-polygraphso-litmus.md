---
title: Polygraph MCP gate
date: 2026-06-29 22:36:36 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.20.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.20.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## What's Changed

Harden the agent gate and CI action for value-routing and untrusted CI.

- Opt-in `GateOptions` (`allowedAttesters`, `acceptedMethodologyVersions`, `requireEgressVerified`), all default-off; new `PAYMENT_PASSING` ({A}); `DEFAULT_PASSING` → {A,B}.
- On-chain `methodologyVersion` and a derived `egressVerified` surfaced on the read path, so a payment gate can tell an egress-verified local A from a remote/no-sandbox B.
- CI action auto-discovery now defaults off; `ci` warns when discovery is on.

Ships #70 + #71. Backward-compatible (new optional surface only).
