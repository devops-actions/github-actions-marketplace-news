---
title: AntigravityCI
date: 2026-08-20 06:32:26 +00:00
tags:
  - nivinvysakh
  - GitHub Actions
draft: false
repo: https://github.com/nivinvysakh/AntigravityCi
marketplace: https://github.com/marketplace/actions/antigravityci
version: v1.1.0
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  **Summary:** AntigravityCI is an AI-powered PR assistant that automates the process of refactoring and improving code changes in GitHub Pull Requests. It uses Google Gemini models to analyze diffs, generate improved code snippets, and open pull requests with committed changes. The action supports various commands for different types of changes and provides features like fast execution times, built-in security checks, and branch isolation.
---


Version updated for **https://github.com/nivinvysakh/AntigravityCi** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/antigravityci) to find the latest changes.

## Action Summary

**Summary:** AntigravityCI is an AI-powered PR assistant that automates the process of refactoring and improving code changes in GitHub Pull Requests. It uses Google Gemini models to analyze diffs, generate improved code snippets, and open pull requests with committed changes. The action supports various commands for different types of changes and provides features like fast execution times, built-in security checks, and branch isolation.

## What's Changed

# 🌌 AntigravityCI v1.1.0

Release **v1.1.0** brings workflow refinements, automated dependency maintenance, and full community contribution templates!

### ✨ What's New:
- 🧹 **Minimal Workflow Template**: Streamlined `.github/workflows/antigravityci.yml` with clean, modern syntax and zero comment clutter.
- 🤖 **Dependabot Integration**: Automated weekly dependency tracking for GitHub Actions, Python (`pip`), and Docker.
- 📋 **Community & Contribution Standards**: Added issue templates, PR template, Code of Conduct, Contributing Guide, and Security Policy.
- ⚡ **Cleaner Action Logs**: Resolved deprecated action inputs and silenced internal SDK notices for crystal-clear execution logs.
- 📖 **Documentation Polish**: Improved Quick Start guide with clear secret setup reminders and clean Markdown tables.

### 🚀 Quick Start:
```yaml
- uses: nivinvysakh/AntigravityCi@v1.1.0
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    gemini_api_key: ${{ secrets.GEMINI_API_KEY }}
```

👉 See the full setup guide in the [readme](https://github.com/nivinvysakh/AntigravityCi)
