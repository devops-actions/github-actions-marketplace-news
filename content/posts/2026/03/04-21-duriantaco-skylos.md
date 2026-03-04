---
title: Skylos - Python SAST & Dead Code Detection
date: 2026-03-04 21:28:43 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection
version: v3.5.5
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v3.5.5**.
- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection) to find the latest changes.

## Action Summary

Skylos is a hybrid static analysis tool for Python, TypeScript, and Go that automates the detection of dead code, security vulnerabilities (e.g., SQL injection, SSRF, secrets), and code quality issues with high precision. Leveraging both AST-based analysis and optional AI-powered agents, it minimizes false positives, identifies deep logic errors, and offers runtime verification. Designed for CI/CD pipelines, Skylos streamlines code reviews by providing automated security scanning, quality gates, and detailed feedback directly in pull requests.

## Release notes

## [3.5.5] - 2026-03-04

### Added
- Claude Code Security integration — ingest Anthropic's AI vulnerability scanner findings into Skylos dashboard
- `skylos ingest claude-security` CLI subcommand (--input, --token, --no-upload, --json)
- `skylos cicd init --claude-security` generates a 3-job GitHub Actions workflow (Skylos + Claude Security in parallel, upload sequential)
- Blue "Claude Security" badges on scans list, scan detail, and issues list pages
- Example workflow: `.github/workflows/examples/skylos-plus-claude-security.yml`
- Integration docs: `docs/integrations/claude-code-security.mdx`

### Changed
- `normalizeIncomingReport()` in report route now detects Claude Security format (after SARIF check)
- `generate_workflow()` accepts `use_claude_security` parameter
- Credit deduction in report route is now format-aware (2 credits for Claude Security, 1 for native)
