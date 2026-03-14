---
title: Open Code Review
date: 2026-03-14 21:27:35 +00:00
tags:
  - raye-deng
  - GitHub Actions
draft: false
repo: https://github.com/raye-deng/open-code-review
marketplace: https://github.com/marketplace/actions/open-code-review
version: v2.0.2
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/raye-deng/open-code-review** to version **v2.0.2**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/open-code-review) to find the latest changes.

## Action Summary

Open Code Review is a CI/CD quality gate designed to analyze and detect defects in AI-generated code that traditional tools often miss, such as hallucinated imports, stale APIs, and security anti-patterns. It automates code reviews to ensure better code quality by providing local, fast, and privacy-focused analysis, making it ideal for teams using AI coding assistants or security-conscious developers. Key capabilities include detailed issue reports, SARIF output, and integration with GitHub and GitLab workflows.

## Release notes

## What's New

### 🔍 npm Search Optimization
- CLI: 22 keywords for better discoverability (was 4)
- Core: 12 keywords covering security, supply-chain, static-analysis
- Improved descriptions highlighting AI hallucination detection
- Added repository, homepage, and bugs links

### 🏠 GitHub Community
- **Discussions enabled** — Join the conversation!
- Welcome discussion: [Introductions & Feature Requests](https://github.com/raye-deng/open-code-review/discussions/2)
- Issue templates: Bug Report + Feature Request
- FUNDING.yml added

### 📝 README Improvements
- New "Who Is This For?" section
- New "Why Open Code Review?" section
- SEO-optimized description

### 🔧 Bug Fixes
- CLI `--version` now shows correct version (2.0.2, was 0.4.0)
- SARIF report version now uses dynamic VERSION constant
- CLI package.json license: MIT → BUSL-1.1 (consistency)

## Installation

```bash
npm install -g @opencodereview/cli
ocr scan src/ --sla L1
```

**Full Changelog**: https://github.com/raye-deng/open-code-review/compare/v2.0.0...v2.0.2
