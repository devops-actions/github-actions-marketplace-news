---
title: Git X-Ray
date: 2026-02-23 21:46:21 +00:00
tags:
  - bot-anica
  - GitHub Actions
draft: false
repo: https://github.com/bot-anica/git-xray-action
marketplace: https://github.com/marketplace/actions/git-x-ray
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/bot-anica/git-xray-action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/git-x-ray) to find the latest changes.

## Action Summary

Git X-Ray is a GitHub Action that performs automated risk analysis on pull requests by assessing factors like hotspot files, bus factor risks, and missing coupled files, all based on the repository's git history. It provides actionable insights through a detailed PR comment, helping teams identify high-risk changes, knowledge silos, and overlooked dependencies. The action runs entirely within the GitHub Actions environment, requiring no external services or configurations, making it a secure and efficient tool for improving code quality and collaboration.

## Release notes

## Git X-Ray — PR Deployment Risk Analysis

Automatically analyzes every pull request for deployment risk:

- 🔥 **Hotspot Detection** — flags files that change most frequently (where bugs concentrate)
- ⚠️ **Bus Factor Warnings** — surfaces knowledge concentration risk
- 🔗 **Missing Coupled Files** — detects files that usually change together but weren't included
- 🧠 AI Insights (Pro) — per-section AI analysis explaining what each finding means and what to do about it

### Quick Setup

```yaml
- uses: bot-anica/git-xray-action@v1
```

Free for public repos. [Get a license key](https://github.com/bot-anica/git-xray-action#pricing) for private repos.
