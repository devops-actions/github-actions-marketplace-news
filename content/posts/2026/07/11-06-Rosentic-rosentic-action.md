---
title: Rosentic - Cross-Branch Compatibility Check
date: 2026-07-11 06:12:10 +00:00
tags:
  - Rosentic
  - GitHub Actions
draft: false
repo: https://github.com/Rosentic/rosentic-action
marketplace: https://github.com/marketplace/actions/rosentic-cross-branch-compatibility-check
version: v1.8.0
dependentsNumber: "5"
actionType: Docker
---


Version updated for **https://github.com/Rosentic/rosentic-action** to version **v1.8.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rosentic-cross-branch-compatibility-check) to find the latest changes.

## What's Changed

Catches when AI-agent branches break each other's contracts before merge. **13 languages**, AST-level, runs on your CI runners. The engine goes to the code; the code never goes to the engine unless you send it.

### What's new since 1.7.0

- **Dart is the 13th language** - L1 signature analysis (free functions and class methods; named, optional-positional, and required parameters).
- **Reachability** - every UNSAFE finding now says whether the broken contract is actually reachable from an entrypoint or export (or test-only / unreachable / unknown), with the shortest path. `unreachable` requires closed-world proof; uncertainty degrades to unknown, never suppresses.
- **Enforced merge gate** - policy-driven exit codes in CI. The gate fetches your effective policy at scan time; advisory fails open, blocking fails closed, never silent.
- **Agent-facing next steps** - when the gate blocks, the output and the PR comment tell a coding agent exactly how to fetch the SHA-keyed verdict JSON and how to load the Rosentic MCP tools, so an agent can act on a block without a human.
- **Tamper-evident audit trail** - hash-chained, append-only ledger of every gate verdict, replayable, JSON/CSV export. `verify-chain` recomputes from genesis.
- **Govern** - versioned per-repo/org policy (gate mode, severity, per-layer enforce/advisory); overrides require who + reason and land in the ledger.
- **Agent attribution** - which agent authored each branch, multi-signal (branch + commit identity + trailers + `.rosentic/agents.yml`), with confidence tiers.
- **MCP server** - six in-loop tools (check before the write, check before the push) for Cursor / Windsurf / Claude Code / Codex and more. Offline-capable. `pip install rosentic-mcp`.
- **Anonymized telemetry contract** - branch names and commit SHAs are hashed on your runner; raw names/SHAs never leave in no-key mode.
- **Cross-repo drift (experimental)** - detects the same contract drifting across your repos (proto lane). Standalone; not yet in the default scan.

No workflow changes required. `@v1` users get everything automatically.

