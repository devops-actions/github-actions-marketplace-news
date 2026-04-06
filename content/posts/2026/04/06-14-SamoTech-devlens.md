---
title: DevLens Repo Health
date: 2026-04-06 14:05:12 +00:00
tags:
  - SamoTech
  - GitHub Actions
draft: false
repo: https://github.com/SamoTech/devlens
marketplace: https://github.com/marketplace/actions/devlens-repo-health
version: v1.0.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/SamoTech/devlens** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/devlens-repo-health) to find the latest changes.

## Action Summary

DevLens Repo Health is a GitHub Action that evaluates repository health across seven dimensions (e.g., README quality, commit activity, CI/CD setup) and assigns a health score, automating insights into project maintenance and quality. It updates the README with live metrics, provides analytics badges, sends weekly development digests, and offers a web dashboard for real-time health tracking, simplifying repository monitoring and enhancing transparency. This tool helps teams maintain high-quality repositories without additional costs or vendor lock-in.

## What's Changed

## 🔭 DevLens v1.0.3

### What's New
- ✅ `groq_model` input — override the AI model without touching any code
- ✅ `<!-- DEVLENS:START / END -->` markers now auto-injected into README
- ✅ Groq errors now logged visibly in Actions output (no more silent failures)
- ✅ `v1` tag moved to this release — `@v1` always gets latest stable code
- ✅ Workflow now uses `@main` internally for zero-lag updates

### Full end-to-end verified ✅
Health engine → Groq AI (200 OK) → README badge injected → bot commit pushed

### Usage
```yaml
- uses: SamoTech/devlens@v1
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    groq_api_key: ${{ secrets.GROQ_API_KEY }}
    groq_model: 'llama-3.1-8b-instant'  # new in v1.0.3
```
