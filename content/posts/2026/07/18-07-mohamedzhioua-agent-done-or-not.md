---
title: Agent Done Or Not
date: 2026-07-18 07:01:38 +00:00
tags:
  - mohamedzhioua
  - GitHub Actions
draft: false
repo: https://github.com/mohamedzhioua/agent-done-or-not
marketplace: https://github.com/marketplace/actions/agent-done-or-not
version: v0.12.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The agent-done-or-not action ensures that an AI code agent doesn't declare a task as complete without running checks first. It records each check's evidence (command, exit code, and SHA-256 hash) and blocks the agent from finishing until it has a fresh, passing check. This helps prevent agents from making false claims of completion and ensures that tasks are completed reliably.
---


Version updated for **https://github.com/mohamedzhioua/agent-done-or-not** to version **v0.12.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-done-or-not) to find the latest changes.

## Action Summary

The agent-done-or-not action ensures that an AI code agent doesn't declare a task as complete without running checks first. It records each check's evidence (command, exit code, and SHA-256 hash) and blocks the agent from finishing until it has a fresh, passing check. This helps prevent agents from making false claims of completion and ensures that tasks are completed reliably.

## What's Changed

## [0.12.0] — 2026-07-18

The claim-audit release. Adds a new `audit` subcommand that diffs what an agent
**claimed** against the content-hashed **receipts** of what it actually ran.
Additive — no change to `capture`, `assert`, `verify`, `show`, or the receipt
format.

### Added
- **`audit` subcommand** (`done-gate.sh audit` / `done-gate.ps1 audit`), with
  `--transcript <file|->`, `--run`, and `--json`. Extracts an agent's claims from
  two sources: structured markers (`<agent-done:claim label=… exit=… sha256=… />`)
  and a conservative transcript heuristic fallback (tagged `inferred`, never
  silently upgraded). Per-claim verdicts: **BACKED**, **UNBACKED** (asserted,
  never run), **MISREPORTED** (claimed exit 0, recorded non-zero),
  **INTEGRITY_MISMATCH** (claimed hash ≠ recorded hash), and **UNPARSED**
  (claim-shaped text with no bindable label — reported, never counted as backed).
  Never the word "TAMPERED": a hash proves a mismatch, not who caused it. Only
  execution receipts can back a claim. Exits non-zero on any unbacked,
  misreported, or integrity-mismatched claim. Human table + `--json`; coverage
  (marker vs inferred, unparsed count) is always reported.
- **`subagent-audit.sh` / `subagent-audit.ps1`** — a SubagentStop hook that audits
  a subagent's summary before the parent trusts it. Blocks (exit 2) only on a real
  finding and **fails open** on an ambiguous payload or missing ledger, so it
  never wedges a session. Loop-guarded via `stop_hook_active`; escape hatch
  `AGENT_DONE_OFF=1`.
- **`docs/markers.md`** — the paste-ready claim-marker contract and agent
  instruction snippet, plus the SubagentStop hook wiring.


