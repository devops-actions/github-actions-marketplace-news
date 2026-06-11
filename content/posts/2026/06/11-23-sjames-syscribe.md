---
title: Validate Syscribe Model
date: 2026-06-11 23:38:59 +00:00
tags:
  - sjames
  - GitHub Actions
draft: false
repo: https://github.com/sjames/syscribe
marketplace: https://github.com/marketplace/actions/validate-syscribe-model
version: v0.21.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sjames/syscribe** to version **v0.21.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-syscribe-model) to find the latest changes.

## What's Changed

Patch: `trade-study` no longer silently resolves an MoE variable that matches the final `.`/`::` segment of two or more `parameterBindings` keys. An exact key still wins; the final-segment convenience match resolves **only when exactly one** binding matches — an ambiguous bare token now makes the cell `n/a` (excluded from weight normalisation) instead of guessing. (`REQ-TRS-MG-012`, `TC-TRS-MG-012`; qual suite 179/179.)
