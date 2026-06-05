---
title: Remyx Outrider
date: 2026-06-05 06:43:41 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.3.6
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.3.6**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## v1.3.6 — Selection timeout hotfix

Hotfix for selection-pass timeouts observed after the v1.3.4 / v1.3.5 prompt extensions.

The agentic verification loop with the extended schema needs roughly 5–6 minutes of wall budget for 20–25 verification turns (code searches + per-candidate contract checks). The prior `180s` default was too tight on real production pools and induced fall-back to the top-ranked candidate — bypassing the agentic verification entirely. Observed on a `remyxai/VQASynth` run earlier today where selection should have surfaced a substitution Issue but instead emitted a standard `issue_opened_preflight`.

### What changed

- `select_recommendation`'s default wall timeout: `180s` → `360s`
- New env var `REMYX_SELECTION_TIMEOUT_S` lets customers tune the wall budget without re-tagging (default `360`)

No other behavior changes. No breaking changes to `action.yml` inputs or outputs.
