---
title: Polygraph MCP gate
date: 2026-07-02 22:18:44 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.23.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.23.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## What's Changed

**litmus-v11** — C-02 gains expected-upstream inference, fixing a first-party-egress false positive.

An honest API-wrapper server — a tool that transparently calls the API it advertises (`openai_chat` → `api.openai.com`) — made an *undeclared* egress attempt and was capped at **D**, even though the upstream is the very API its own surface names. Before an undeclared host is now counted as overreach, the harness infers whether it is a plausible upstream for the server's own tool surface: a host named **verbatim** in the tool text (strong), or an egress host whose **registrable label** matches a non-generic **brand token** drawn from the surface and the package owner/name (medium, plain-TLD hosts only). A match reclassifies the attempt from overreach into an informational `egress-inferred` finding — **disclosure, not exoneration**.

Guardrails keep lookalikes out: whole-label (never substring) matching, a generic-label stoplist, registrable-label-only matching (so `openai.evil-cdn.com` is not cleared), and shared-tenant suffixes (`github.io`, `vercel.app`, …) treated as their own level (so `attacker.github.io` does not inherit `foo.github.io`'s match). This only ever turns a false **D → a correct pass**, never the reverse, so every `litmus-v1…v10` attestation stays valid. The independent **C-03 probe 4.2** canary-in-egress check is unchanged and still floors real exfiltration at **F**. The A–F rubric and the on-chain EAS schema are unchanged; the evidence bundle schema advances to `1.7.0` (adds the `egress-inferred` finding kind).

Ships #83 (the fix) and #84 (the release bump). `methodologyVersion` → `litmus-v11`.
