---
title: Diffly PR triage
date: 2026-08-24 05:53:29 +00:00
tags:
  - VIVAAN-DHAWAN
  - GitHub Actions
draft: false
repo: https://github.com/VIVAAN-DHAWAN/diffly-cli
marketplace: https://github.com/marketplace/actions/diffly-pr-triage
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action, diffly, automates the process of reviewing large AI-generated pull requests by analyzing code changes, dependencies, and tests. It provides a one-page summary with a verdict, risk flags, checks, and a blast-radius map, helping developers quickly identify critical issues without needing to review each file individually.
---


Version updated for **https://github.com/VIVAAN-DHAWAN/diffly-cli** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/diffly-pr-triage) to find the latest changes.

## Action Summary

This GitHub Action, diffly, automates the process of reviewing large AI-generated pull requests by analyzing code changes, dependencies, and tests. It provides a one-page summary with a verdict, risk flags, checks, and a blast-radius map, helping developers quickly identify critical issues without needing to review each file individually.

## What's Changed

## Verdict rebalance — PASS for healthy PRs

The headline change: verdicts now match merge-readiness.

| Signal | Before | Now |
| --- | --- | --- |
| Required checks failed | BLOCK | BLOCK |
| Credential-like value in **production** code | BLOCK | BLOCK |
| Credential-like value in tests/fixtures/docs | BLOCK | **QUARANTINE** |
| Newly added dependency (net of removals) | QUARANTINE | QUARANTINE |
| Version bump / lockfile refresh only | QUARANTINE | **PASS + note** |
| Pending required checks | QUARANTINE | **PASS + note** |
| Security-sensitive code, DB/migrations | QUARANTINE | QUARANTINE |

## Fixed

- Arrow keys in the interactive review menu no longer crash with `NameError`, fast keystroke bursts register every press (escape sequences stop at their terminator), a lone Escape never blocks, and keys typed while the menu renders are no longer discarded on Python 3.14+ (`tty.setcbreak` is pinned to `TCSANOW`).
- Diff content lines beginning with `++` or `--` are counted, credential-scanned, and analyzed instead of being mistaken for the file's `---`/`+++` header lines — a `postgresql://…` credential on such a line can no longer hide from `EXPOSED_SECRET`.
- `diffly setup` no longer runs the update check twice in a row.
- EOF/Ctrl-D exits the interactive menu cleanly instead of spinning.

## Changed

- Policy text in the report, README, and JSON reasoning reflects the new routing. Flag codes and the JSON schema are unchanged, so existing automation keeps working.

**Full changelog:** https://github.com/VIVAAN-DHAWAN/diffly-cli/blob/main/CHANGELOG.md
