---
title: Polygraph MCP gate
date: 2026-07-02 14:53:29 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.22.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.22.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## What's Changed

Patch release shipping the security and correctness fixes from the 2026-07-02 engineering review.

**False-pass paths (grading correctness):**
- A1 — iptables add-op is now atomic (`set -e`): a partial rule insertion exits non-zero so the caller falls back to `--internal` instead of running with broken NAT and silently missing IP-literal/DoH egress
- A2 — `readOnlyHint:true` can no longer bypass the exercise skip gate: `unsafeToExerciseToolNames` now checks the broad `STATE_CHANGING_VERBS` set regardless of the annotation, so a lying `swap_*`/`buy_*`/`approve_*`/`mint_*` tool is never actively bait-called
- A3 — content in a JSON-RPC error response is now scanned: `callToolArgs` carries `errorText`; probes 1.2, 1.3 run `scanInjection` on it, probe 3.1 runs `internalsLeak`
- A5 — MCP progress forwarding: `void sendNotification(…)` → `.catch(() => {})` so a client disconnect during a run can't kill the server process

**Sandbox observability:**
- A4 — `selectedNetwork()` defaults to `base` (mainnet); `server.json` and the plugin `.mcp.json` now ship `NEXT_PUBLIC_POLYGRAPH_NETWORK=base`
- A6 — `removeHostDnat` emits a stderr warning on failure so dangling host iptables rules are visible in operator logs

**Verify tools:**
- B6 — `verify_attestation` / `verify_skill_attestation`: found-but-null now surfaces as `lookup_failed` rather than `not_available` (a trusted index disagreeing with the chain is not unevaluated)
- B7 — revoked attestations show `status:"revoked"`, expired ones `status:"expired"`; `expirationTime` included in the payload

**Housekeeping:**
- B11 — dead `MINTER_PRIVATE_KEY` removed from `.env.example`
- B12 — `action.yml` default version pin updated; CONTRIBUTING release flow now documents all six steps including the `v1` retag
