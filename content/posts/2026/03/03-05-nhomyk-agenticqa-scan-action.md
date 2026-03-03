---
title: AgenticQA Architecture Scan
date: 2026-03-03 05:51:13 +00:00
tags:
  - nhomyk
  - GitHub Actions
draft: false
repo: https://github.com/nhomyk/agenticqa-scan-action
marketplace: https://github.com/marketplace/actions/agenticqa-architecture-scan
version: v1.0.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/nhomyk/agenticqa-scan-action** to version **v1.0.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agenticqa-architecture-scan) to find the latest changes.

## Action Summary

This GitHub Action, `agenticqa-scan-action`, is designed to automate the identification and mapping of security vulnerabilities and integration points in AI-focused codebases. It scans code written in multiple languages for attack surfaces across 13 Common Weakness Enumeration (CWE) categories, scores the attack surface, highlights untested areas, and uploads findings in SARIF format to GitHub's Security tab. It solves the problem of detecting architectural risks in AI systems before deployment, enabling teams to proactively address security issues.

## Release notes

## AgenticQA Architecture Scan v1.0.0

Map every integration point in your AI codebase — 13 CWE categories, attack surface score (0–100), test coverage gaps — in one GitHub Actions step.

### What it detects
- **SHELL_EXEC** (CWE-78) — Remote Code Execution risk
- **AGENT_FRAMEWORK** (CWE-693) — LangChain, AutoGen, Anthropic SDK, OpenAI
- **EXTERNAL_HTTP** (CWE-918) — SSRF risk
- **DATABASE** (CWE-89) — SQL Injection risk
- **ENV_SECRETS** (CWE-798) — Credential leakage
- **SERIALIZATION** (CWE-502) — Unsafe deserialization
- And 7 more categories across 6 languages

### Quickstart
```yaml
- uses: nhomyk/agenticqa-scan-action@v1
```

Findings upload as SARIF 2.1.0 to GitHub Security tab. No API key required.
