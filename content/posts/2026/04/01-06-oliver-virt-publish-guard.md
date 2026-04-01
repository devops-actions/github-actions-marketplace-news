---
title: publish-guard
date: 2026-04-01 06:15:57 +00:00
tags:
  - oliver-virt
  - GitHub Actions
draft: false
repo: https://github.com/oliver-virt/publish-guard
marketplace: https://github.com/marketplace/actions/publish-guard
version: v1.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/oliver-virt/publish-guard** to version **v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-guard) to find the latest changes.

## Action Summary

**Summary:**  
The `publish-guard` GitHub Action is a pre-publish safety tool designed to automatically scan npm packages and block sensitive or unintended files (e.g., source maps, secrets, raw source code) from being published to the registry. It helps prevent common mistakes, such as leaking private data or unnecessarily large files, by enforcing rules and providing actionable feedback directly in CI pipelines. Key capabilities include detecting secrets, large files, misconfigurations, and other risks, ensuring only safe and optimized packages are shipped.

## What's Changed

Pre-publish safety linter for npm packages. Catches source maps, secrets, private keys, and large files before they ship to the registry.

## What it catches
- Source maps (`.map`) — exactly how Anthropic leaked Claude Code. Twice.
- `.env` files with secrets
- File content scanning for API keys (AWS, OpenAI, Anthropic, Stripe, Slack, GitHub...)
- Private keys (`.pem`, `.key`, `.p12`)
- Files/packages over 20MB
- And more (see README)

## Usage

**GitHub Action (3 lines):**
```yaml
- uses: actions/checkout@v4
- uses: oliver-virt/publish-guard@v1
```

**CLI:**
```bash
npx publish-guard
```
