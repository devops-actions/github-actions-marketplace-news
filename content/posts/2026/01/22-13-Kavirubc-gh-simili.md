---
title: Simili - Issue Intelligence
date: 2026-01-22 13:41:40 +00:00
tags:
  - Kavirubc
  - GitHub Actions
draft: false
repo: https://github.com/Kavirubc/gh-simili
marketplace: https://github.com/marketplace/actions/simili-issue-intelligence
version: v2.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/Kavirubc/gh-simili** to version **v2.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/simili-issue-intelligence) to find the latest changes.

## Action Summary

Simili - Issue Intelligence is a GitHub Action and CLI tool designed to streamline issue management by using AI-powered semantic search to detect duplicate issues and identify related ones. It automates tasks such as cross-repo search, issue routing, and posting smart comments linking to relevant issues. This action enhances collaboration and reduces manual effort in managing large repositories or organizations with multiple projects.

## Release notes

## What's New

### Dual Token Support
This release adds support for using separate tokens for comments and transfers:

- **`github_token`** - Used for posting comments (supports GitHub App tokens for bot identity)
- **`transfer_token`** - Used for issue transfers (supports PATs with elevated permissions)

This enables showing comments as a bot (e.g., `simili-bot[bot]`) while still being able to transfer issues across repositories.

### Usage

```yaml
- name: Run Simili Issue Intelligence
  uses: Kavirubc/gh-simili@v2.1.0
  with:
    config_path: '.github/simili.yaml'
    github_token: ${{ steps.app-token.outputs.token }}  # Bot token for comments
    transfer_token: ${{ secrets.TRANSFER_PAT }}         # PAT for transfers
```

If `transfer_token` is not provided, `github_token` will be used for both operations.

## Changes
- Add `NewClientWithToken` for custom token authentication
- Add dual-token support in processor for transfers and comments  
- Add `transfer_token` input to action.yml
- Update CLI to read `TRANSFER_TOKEN` environment variable

**Full Changelog**: https://github.com/Kavirubc/gh-simili/compare/v2.0.0...v2.1.0
