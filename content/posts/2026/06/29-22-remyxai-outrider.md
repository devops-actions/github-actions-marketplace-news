---
title: Remyx Outrider
date: 2026-06-29 22:36:03 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.6.23
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.6.23**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

Docs-only fix. v1.6.21's guidance to set both `ANTHROPIC_API_KEY` and `ANTHROPIC_AUTH_TOKEN` conditionally was wrong. When both are set, Claude Code prefers `ANTHROPIC_API_KEY` (x-api-key) — which non-Anthropic backends like z.ai's gateway reject with HTTP 401. The corrected pattern conditionally empties whichever env var isn't for the active backend. Also adds the backend → auth-header → env-var matrix to `docs/customization.md`.
