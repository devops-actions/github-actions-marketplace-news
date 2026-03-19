---
title: VibeSafe Security Scan
date: 2026-03-19 21:47:29 +00:00
tags:
  - vibesafeio
  - GitHub Actions
draft: false
repo: https://github.com/vibesafeio/vibesafe-action
marketplace: https://github.com/marketplace/actions/vibesafe-security-scan
version: v0.1.0
dependentsNumber: "1"
actionType: Docker
---


Version updated for **https://github.com/vibesafeio/vibesafe-action** to version **v0.1.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibesafe-security-scan) to find the latest changes.

## Action Summary

VibeSafe Security Scan is a GitHub Action that performs automated security scanning on AI-generated code during pull requests, identifying vulnerabilities like SQL injection, XSS, and hardcoded secrets. It streamlines static application security testing (SAST) with domain-specific rules, actionable fix suggestions, and PR-based comments, enabling teams without dedicated security resources to proactively address code risks. Key features include fast, diff-only scans, support for multiple languages, and free setup with no additional configuration required.

## Release notes

## What's New

First public release of VibeSafe Security Scan GitHub Action.

### Features
- **SAST scanning** — OWASP Top 10 (SQL injection, XSS, command injection, path traversal, etc.)
- **Secret detection** — API keys, tokens, credentials (OpenAI, AWS, Stripe, GitHub, JWT, etc.)
- **PR comments** — File, line, code snippet, and **fix suggestions** for every finding
- **Merge blocking** — `fail-on` input (default: critical) makes the check fail so branch protection actually works
- **Domain-specific rules** — Auto-detects your stack and applies relevant rules (ecommerce, fintech, healthcare, etc.)
- **Framework-aware filtering** — Reduces false positives (e.g., Django rules won't fire on Flask apps)
- **32 fix suggestion patterns** — Actionable remediation for common vulnerabilities
- **Pre-commit hook** — Catch secrets before they enter git history
- **MCP server** — Real-time security scanning in Claude Code and Cursor

### Setup
24-line YAML, 30-second install. See [README](https://github.com/vibesafeio/vibesafe-action#install-30-seconds).

### Benchmark
OWASP Juice Shop: 36 findings, 0/100 Grade F. Reproduce: `./test/benchmark_juiceshop.sh`

---
Free, open-source, no external service. Code never leaves your GitHub Actions runner.
