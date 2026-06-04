---
title: Remyx Outrider
date: 2026-06-04 07:12:53 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.3.3
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.3.3**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## v1.3.3 — Documentation accuracy

No code changes — README only. Three drifts caught during audit:

- **Inputs table**: documents `claude-timeout` and `pin-arxiv`. Both shipped in v1.2.0 but were missing from the table.
- **Status-codes section**: corrected outcome count to **17** (the prior "16" and "15" before that were both off-by-one — `error` was already in the table).
- **Guardrails default allowlist**: documented value now matches the `DEFAULT_ALLOWLIST_GLOBS` constant in `src/run.py` — Markdown anywhere (`**/*.md`), not just `README.md`. The "append-only attribution" framing came from a prompt instruction to Claude, not from any enforced guardrail.

No behavior change. Existing customers don't need to update any workflow inputs.

