---
title: AI-Driven ADR Enforcer
date: 2026-06-04 15:03:18 +00:00
tags:
  - y-matsuo081991
  - GitHub Actions
draft: false
repo: https://github.com/y-matsuo081991/ai-adr-enforcer
marketplace: https://github.com/marketplace/actions/ai-driven-adr-enforcer
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/y-matsuo081991/ai-adr-enforcer** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-driven-adr-enforcer) to find the latest changes.

## What's Changed

## 🚀 Initial Release (v1.0.0)

We are excited to announce the first stable release of the **AI-Driven ADR Enforcer**! 
This GitHub Action automatically audits your Pull Requests against your project's Architecture Decision Records (ADRs) using the Gemini LLM.

### ✨ Features
- **Context-Aware Review:** Dynamically reads Markdown files from your specified `adr_directory` (default: `docs/adr`).
- **LLM-as-a-Judge:** Uses the advanced `@google/genai` SDK to evaluate if PR diffs violate your established architectural rules.
- **Automated Enforcement:** Posts clear, reasoning-backed inline Review Comments directly to the PR and fails the CI check (`core.setFailed`) if a violation is detected.
- **Zero-Configuration Setup:** Just drop it into your workflow YAML and provide your GitHub and Gemini API keys.
- **Resilience:** Optional `fail_open` flag to prevent blocking CI when the LLM API is down.

### 📖 How to use
Add the following step to your `.github/workflows/adr-enforcer.yml`:

```yaml
- name: AI-Driven ADR Enforcer
  uses: y-matsuo081991/ai-adr-enforcer@v1.0.0
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    gemini_api_key: ${{ secrets.GEMINI_API_KEY }}
    adr_directory: 'docs/adr'
```

For more details, please refer to the [README](https://github.com/y-matsuo081991/ai-adr-enforcer).
