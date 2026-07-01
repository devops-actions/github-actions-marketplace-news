---
title: Remyx Outrider
date: 2026-07-01 14:54:38 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.6.34
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.6.34**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

When the agentic selection call fails (429, timeout, unparseable output), Outrider's fallback picks the highest-relevance candidate. Ties on relevance were previously broken by list position — Python's `max()` returns the first element at the max value.

## Fix

Ties now break by `license_compat`. A permissive candidate with a code link (compat=1.00) beats a no-code-link candidate (compat=0.30) at the same relevance.

## Motivating case

GLM C-arm study batch, 2026-06-30: unsloth run hit a selection 429 and the fallback picked a no-code-link candidate over a permissive alternative at the same relevance. Fires exactly when we least want it — the fallback path is where the primary reasoning is unavailable and the safer default matters most.

Fixes REMYX-169.
