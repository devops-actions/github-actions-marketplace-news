---
title: Bernstein — Multi-Agent Orchestration
date: 2026-07-28 14:48:30 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v3.11.0
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  Bernstein is a deterministic orchestration tool for CLI coding agents, offering reproducible, checkable, and isolated runs. It automates scheduling with plain Python and ensures results are verifiable after the fact through lineage spine and audit logs.
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v3.11.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a deterministic orchestration tool for CLI coding agents, offering reproducible, checkable, and isolated runs. It automates scheduling with plain Python and ensures results are verifiable after the fact through lineage spine and audit logs.

## What's Changed

Most of this release went into a single question: when one of our own signals says "fine", has it actually checked anything?

The answer turned out to be "not always". A CI context could report green on work it never evaluated. A chain record could state a position it was never verified against. A server could answer an unconfigured webhook with a 500 that leaked a rejected receipt id. None of these were loud failures — that is precisely what made them worth a release.

## What changed

**Checks that report on what they ran.** "Ran nothing" and "passed" are now distinct outcomes in the checks that report them. The review-bot acknowledgement context is cancel-proof, queue-honest, published from a `workflow_run` so fork pull requests can pass it, and no longer a side effect of a job name. Test selection follows import aliases and identifies redirect tables by content, so a rename can no longer quietly drop an edge.

**Verification that is byte-exact and total.** Lineage v2 verify no longer samples. The audit chain verifies the position a record claims about itself, a shrunk or crash-damaged history cannot obtain a fresh seal, and tear evidence stays durable until it is acknowledged. JCS property names now sort by UTF-16 code units, per RFC 8785.

**Surfaces that fail closed.** Unconfigured SSO, plan mode and webhook receivers answer 404 instead of improvising. The `merge` command is registered on its own body and enforces the blast-radius ceiling; auth log sinks are sanitised.

**MCP.** The tool surface is consolidated, with per-run cancel, structured results, journal-fold progress, remote hardening, and an honest claim fold.

**Also:** Python 3.14 in the support matrix, the OpenAPI spec snapshot regenerated and guarded against drift, react-router upgraded to v8 with the shipped bundle rebuilt, and the README rebuilt as a front page with the deep material moved to the docs site.

## Contributors

Six people outside the maintainer shipped code in this release. Named individually because each of these landed on its own merits:

- **@Maqbool61** — signed, independently replayable trajectory receipts (#3191, closing #2925). The largest external contribution here.
- **@adity982** — a discoverable skill index for MCP (#3177).
- **@AmirF194** — capped the log-only heartbeat signal instead of riding it, so a stalled agent is still reaped.
- **@Sanjays2402** — trend-scan now fails loudly when no fetcher is configured (#3163), instead of returning a confident empty result.
- **@cnaples79** — MCP reports the actual Bernstein package version (#3153).
- **@0xddneto** — a test pinning what happens to an unverifiable foreign attestation (#3192).

Thank you. Several of these are exactly the "this reported success without doing the work" shape the rest of the release is about.

## Upgrading

No migration steps. `pip install --upgrade bernstein`, or pull `ghcr.io/sipyourdrink-ltd/bernstein:3.11.0`.

