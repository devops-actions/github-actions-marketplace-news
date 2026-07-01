---
title: AI Cost Receipt
date: 2026-07-01 06:59:31 +00:00
tags:
  - noah-thing
  - GitHub Actions
draft: false
repo: https://github.com/noah-thing/receipt
marketplace: https://github.com/marketplace/actions/ai-cost-receipt
version: v0.5.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/noah-thing/receipt** to version **v0.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-cost-receipt) to find the latest changes.

## What's Changed

Builds on 0.4.0's session health with automation, history, and a reviewer-facing note.

- **`receipt guard`** — a Claude Code hook entrypoint. Stays silent until a session crosses your gate, then prints the single most important move where the agent sees it. With `--notify` it exits 2 so Claude Code feeds the nudge back to the model — strongest on the `PreCompact` hook, right before lossy auto-compaction.
- **`receipt health --json` / `--quiet --gate`** — machine-readable output and severity exit codes (0 / 10 watch / 20 degrading / 30 critical) for hooks and CI.
- **`receipt health --all`** — scores every past session and learns your personal pattern ("you tend to drift around turn ~12; X% of sessions compacted too late").
- **Context tax** — shows how much of a session is just re-sending itself (the quadratic cost behind both rising spend and fading quality).
- **PR-comment health note** — a collapsed, reviewer-facing `<details>` block when the work ran under degrading conditions; silent otherwise; opt out with `"health": false`. It never claims the code is wrong — only points to where to look.

**Honest constraint:** the token-only ledger cannot detect redundant file reads, identical-command loops, or semantic issues (hallucinations, drift) — those need data Receipt deliberately never stores. Features only ever flag "conditions correlated with drift," documented in docs/SESSION-HEALTH.md.

Still deterministic and local. 104 tests, typecheck clean. MIT.
