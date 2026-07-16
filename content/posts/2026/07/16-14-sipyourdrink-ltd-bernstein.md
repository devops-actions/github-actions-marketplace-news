---
title: Bernstein — Multi-Agent Orchestration
date: 2026-07-16 14:47:48 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v3.5.0
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  Bernstein automates multi-agent deterministic scheduling of CLIs such as Claude Code, Codex, and Gemini CLI in parallel Git worktrees. It uses an HMAC-signed audit chain to track each step of the process and provides signed agent cards for secure delegation. The lineage feature records every adapter file write, ensuring artifact provenance.
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v3.5.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein automates multi-agent deterministic scheduling of CLIs such as Claude Code, Codex, and Gemini CLI in parallel Git worktrees. It uses an HMAC-signed audit chain to track each step of the process and provides signed agent cards for secure delegation. The lineage feature records every adapter file write, ensuring artifact provenance.

## What's Changed

# v3.5.0

Released 2026-07-16.

A feature release that hardens the two guarantees the orchestrator is built on: audit identity that survives protocol change, and replay that notices when a provider rewrites what the model saw. Plus a security dependency bump and a round of CI reliability work.

## MCP: stateless, chain-anchored call identity (#2506)

The MCP client, remote transport, and gateway no longer depend on protocol sessions. Every call carries content-derived trace and span ids in `_meta`, input-required retries resume from an echoed request state on any server instance, and each served or proxied call is recorded as an `mcp.stateless_call` entry bound to the audit-chain head. In practice:

- A tool-call sequence completes correctly even when consecutive requests land on different transport instances with no shared memory.
- `bernstein audit verify` reconstructs the full MCP call ordering of a run from chain entries alone, and tampering with any single entry fails verification at exactly that entry.
- Legacy clients that still send a session header keep working through a compatibility shim with an explicit removal window.

This also sweeps deprecated protocol surfaces (Roots, Sampling, Logging advertisement) behind the same shim, ahead of the upcoming MCP specification revision.

## Replay: provider-side context mutations are now recorded (#2507)

Byte-identical replay assumed context-as-sent equals context-as-consumed. Providers can now mutate context server side (context compaction and similar opaque state), so the journal records every such mutation as a content-addressed chain entry:

- Deterministic runs request suppression and fail loudly if a mutation arrives anyway.
- Replay flags an unrecorded mutation as divergence at the exact step, instead of drifting silently.
- Two replays of a run with recorded mutations produce byte-identical journal heads.

## Security

- pillow raised to 12.3.0, clearing eight published advisories (PYSEC-2026-2253 through 2257, 3451 through 3453). (#2498)
- Code-scanning findings addressed: unique salt derivation, cookie security flags, workflow hardening. (#2495)
- SonarQube SARIF export scoped to security-relevant findings so the Security tab stays signal-only. (#2501)

## CI reliability

- The workflow topology report now self-heals on main after workflow-editing merges, removing a recurring transient red. (#2531)
- The weekly CI digest counts real failures only (cancelled, superseded runs excluded) and keeps a single rolling issue. (#2496)
- Observability snapshots collect from all backends again, and metric regressions now page instead of rotting in a file. (#2502)
- The aider adapter conformance probe no longer misreads a broken help probe as full flag drift. (#2497)
- CodeQL analyses on main are no longer cancelled mid-run. (#2477)

## Community

- The web UI overview docs now match the shipped seven-route surface. Thanks @Om-Rohilla. (#2505)
- The web UI tracking issue (#1262) carries a prioritized contributor roadmap with good first picks.

## Housekeeping

Dependency digest updates via Renovate, coverage-report retention extended to 14 days, GlitchTip regression cases imported into the eval corpus, adapter last-green table refreshed from canary receipts.

**Full Changelog**: https://github.com/sipyourdrink-ltd/bernstein/compare/v3.4.4...v3.5.0

