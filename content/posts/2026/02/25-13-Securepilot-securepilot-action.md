---
title: SecurePilot Security Scan
date: 2026-02-25 13:26:29 +00:00
tags:
  - Securepilot
  - GitHub Actions
draft: false
repo: https://github.com/Securepilot/securepilot-action
marketplace: https://github.com/marketplace/actions/securepilot-security-scan
version: v1.0.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Securepilot/securepilot-action** to version **v1.0.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/securepilot-security-scan) to find the latest changes.

## Action Summary

SecurePilot Security Scan is a GitHub Action that automatically scans code changes in pull requests for over 165 security vulnerabilities, including AI/LLM-specific risks like prompt injection. It provides a security score, detailed findings, and integrates with GitHub Code Scanning by uploading SARIF reports. This action helps teams identify and address critical security issues early, automate vulnerability detection, and enforce secure coding practices in their workflows.

## Release notes

## What's New

Initial release of the SecurePilot GitHub Action.

### Features
- 🔍 **165+ security rules** across 21 categories — injection, secrets, auth, prompt injection, XSS, CSRF, SSRF, and more
- 🤖 **AI/LLM-specific rules** — the only scanner with 21 rules targeting prompt injection, unsafe eval, LLM output trust
- 📊 **PR comment** with security score (0–100) + top findings — visible to the whole team on every PR
- 📋 **SARIF output** for GitHub Code Scanning — findings appear inline in "Files Changed"
- 🚫 **Configurable fail-on-severity** — block merges on critical findings
- 🔒 **Privacy-first** — runs entirely in your CI, no code sent to external servers

### Usage

```yaml
- uses: Securepilot/securepilot-action@v1

