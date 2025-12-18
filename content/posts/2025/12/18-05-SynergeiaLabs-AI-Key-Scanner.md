---
title: AI API Key Scanner
date: 2025-12-18 05:19:29 +00:00
tags:
  - SynergeiaLabs
  - GitHub Actions
draft: false
repo: https://github.com/SynergeiaLabs/AI-Key-Scanner
marketplace: https://github.com/marketplace/actions/ai-api-key-scanner
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/SynergeiaLabs/AI-Key-Scanner** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-api-key-scanner) to find the latest changes.

## Release notes

Initial release of **AI API Key Scanner**.

### Features
- Detects OpenAI, Anthropic, and Google AI API keys in pull requests
- Scans PR diffs only (added lines)
- Adds inline GitHub annotations with file and line numbers
- Posts a clear PR comment summary
- Fails the workflow to block merges when keys are detected
- Supports ignore paths and allowlist regex configuration

This release is designed as a focused, low-noise preventive control for teams using AI APIs.

