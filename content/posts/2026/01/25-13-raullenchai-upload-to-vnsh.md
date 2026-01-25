---
title: Upload to vnsh
date: 2026-01-25 13:41:13 +00:00
tags:
  - raullenchai
  - GitHub Actions
draft: false
repo: https://github.com/raullenchai/upload-to-vnsh
marketplace: https://github.com/marketplace/actions/upload-to-vnsh
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/raullenchai/upload-to-vnsh** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/upload-to-vnsh) to find the latest changes.

## Action Summary

This GitHub Action simplifies debugging CI failures by securely uploading error logs to the encrypted platform [vnsh](https://vnsh.dev) and automatically posting a link to the logs in the relevant pull request. It eliminates the need to manually sift through long logs or copy sensitive data into external tools, enabling seamless analysis with AI tools like Claude. Key capabilities include end-to-end encryption, auto-expiring logs, and native integration with Claude for instant insights into CI issues.

## Release notes

# Upload to vnsh - GitHub Action

**Debug CI failures with Claude in one click.**

## Features

- 🔐 AES-256-CBC encryption (compatible with vnsh CLI/MCP)
- 💬 Auto-posts PR comment with secure link
- ⏰ Configurable TTL (1-168 hours, default 24h)
- 🤖 Claude-friendly output format

## Usage

```yaml
- name: Debug with vnsh
  if: failure()
  uses: raullenchai/upload-to-vnsh@v1
  with:
    file: test.log
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

## How it works

1. CI fails → Action uploads encrypted logs to vnsh
2. Secure link posted to PR comment
3. Copy link → Paste to Claude → Instant analysis

🔒 End-to-end encrypted. Server never sees your logs.
