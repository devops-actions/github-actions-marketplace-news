---
title: AI Commit Review
date: 2026-08-20 06:40:32 +00:00
tags:
  - leek
  - GitHub Actions
draft: false
repo: https://github.com/leek/ai-commit-review
marketplace: https://github.com/marketplace/actions/ai-commit-review
version: v1.3.4
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action reviews a single commit with Claude, GPT, Agy (Gemini), and Grok to identify issues. It deduplicates findings, files them as a GitHub Issue, and optionally opens a draft PR with high-confidence fixes that multiple models agree on. The action is triggered by pushes to a branch, enumerates SHAs, and runs one job per commit in a matrix strategy to ensure independent reviews even if some fail.
---


Version updated for **https://github.com/leek/ai-commit-review** to version **v1.3.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-commit-review) to find the latest changes.

## Action Summary

This GitHub Action reviews a single commit with Claude, GPT, Agy (Gemini), and Grok to identify issues. It deduplicates findings, files them as a GitHub Issue, and optionally opens a draft PR with high-confidence fixes that multiple models agree on. The action is triggered by pushes to a branch, enumerates SHAs, and runs one job per commit in a matrix strategy to ensure independent reviews even if some fail.

## What's Changed

## What’s changed

- Seed Agy credentials into `~/.gemini/antigravity-cli/jetski-standalone-oauth-token` (the CLI app data dir), not only `~/.gemini/`.
- Keep both the Keychain `{token, auth_method}` wrapper and the inner oauth2 token on disk.
- Point D-Bus at a non-existent socket so Linux runners cannot silently use an empty system keyring.
- Pass `JETSKI_OAUTH_TOKEN` / `JETSKI_APP_DATA_DIR`, and dump Agy's internal auth log lines if login still fails.
