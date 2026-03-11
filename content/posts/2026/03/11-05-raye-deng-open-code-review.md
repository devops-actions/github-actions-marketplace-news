---
title: Open Code Review
date: 2026-03-11 05:53:58 +00:00
tags:
  - raye-deng
  - GitHub Actions
draft: false
repo: https://github.com/raye-deng/open-code-review
marketplace: https://github.com/marketplace/actions/open-code-review
version: v1.0.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/raye-deng/open-code-review** to version **v1.0.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/open-code-review) to find the latest changes.

## Action Summary

Open Code Review is a CI/CD quality gate designed to identify defects in AI-generated code that traditional tools often miss, such as hallucinated imports, stale APIs, and security anti-patterns. It automates code quality analysis with fast, local scans and provides detailed issue reports, helping developers enhance code reliability and security. This self-hostable, open-source tool stands out by leveraging AI for advanced defect detection while ensuring data privacy.

## Release notes

## 🎉 Open Code Review v1.0.0

First stable release for GitHub Marketplace!

### ✨ Features

- **3 Scan Levels**: L1 (structural), L2 (embedding), L3 (LLM)
- **AI-Specific Defects**: Hallucinations, stale APIs, context issues
- **PR Automation**: Automated quality comments on pull requests
- **Diff Mode**: Fast scanning of changed files only
- **100% Local**: Optional Ollama support for L2/L3

### 📊 Quality

- Self-scanned score: **78/100** (L2)
- All tests passing ✅
- Production-ready ✅

### 📦 Usage

```yaml
- name: Open Code Review
  uses: raye-deng/open-code-review@v1
  with:
    sla: L1
    threshold: 70
    scan-mode: diff
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

### 📜 License

BSL 1.1 (Personal free, Commercial requires license)

---

**Full Changelog**: https://github.com/raye-deng/open-code-review/commits/v1.0.0
