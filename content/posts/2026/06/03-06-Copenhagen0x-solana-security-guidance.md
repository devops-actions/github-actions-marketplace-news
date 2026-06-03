---
title: Solana Security Standard
date: 2026-06-03 06:58:57 +00:00
tags:
  - Copenhagen0x
  - GitHub Actions
draft: false
repo: https://github.com/Copenhagen0x/solana-security-guidance
marketplace: https://github.com/marketplace/actions/solana-security-standard
version: v1.3.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Copenhagen0x/solana-security-guidance** to version **v1.3.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/solana-security-standard) to find the latest changes.

## What's Changed

**Solana Security Standard — now installable everywhere.**

The SOL-0XX rule set (28 Solana/Anchor bug classes drawn from real audits) now runs wherever you work, all from one source of truth:

- **GitHub Action** — scan every PR in CI: `uses: Copenhagen0x/solana-security-guidance@v1`. Uploads SARIF for inline annotations + an adoption badge.
- **CLI** — `npx @jelleo/solana-security-standard scan ./programs` (human / JSON / SARIF output; non-zero exit gates CI).
- **VS Code extension** — inline SOL-0XX squiggles as you type, in VS Code, Cursor, and Windsurf. 100% local, no telemetry.
- **Semgrep ruleset** — `semgrep --config` for any Semgrep pipeline.
- **Claude Code plugin** — the original guidance file + patterns.

Same 17 deterministic patterns + 28 documented rules, no logic duplicated. SOL-001 is backed by two confirmed bounty wins. Built by [Jelleo](https://jelleo.com) — the team that finds the bugs.
