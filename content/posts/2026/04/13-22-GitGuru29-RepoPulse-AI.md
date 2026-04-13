---
title: RepoPulse AI Analyzer
date: 2026-04-13 22:11:33 +00:00
tags:
  - GitGuru29
  - GitHub Actions
draft: false
repo: https://github.com/GitGuru29/RepoPulse-AI
marketplace: https://github.com/marketplace/actions/repopulse-ai-analyzer
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/GitGuru29/RepoPulse-AI** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repopulse-ai-analyzer) to find the latest changes.

## Action Summary

RepoPulse AI is a GitHub Action that analyzes repositories to provide a health score, identify risk signals, and deliver actionable recommendations for improving project quality. It automates repository evaluation through multiple interfaces, including a CLI, web dashboard, REST/GraphQL APIs, and a GitHub Probot app, which can comment health summaries on pull requests. Its key capabilities include robust analysis with retry mechanisms, in-memory caching, and telemetry hooks for monitoring performance and reliability.

## What's Changed

## 🚀 Initial Release of RepoPulse AI

This is the very first official release of the **RepoPulse AI Analyzer** GitHub Action! 

### 🌟 Features
* **Automated Architecture Checks**: Automatically scans the structural health of your repository the moment a Pull Request is opened.
* **Risk Flags**: Identifies dangerous code silos (high Bus Factor), stale issues, and abandoned code paths.
* **Dependency Analysis**: Flags critical dependency risks directly inside your Pull Request.
* **Zero-Config**: Completely serverless. No external tracking, no accounts, and no subscriptions required.

### 🛠️ How to Use
Add the following to a `.github/workflows/repopulse.yml` file in your repository:

```yaml
name: RepoPulse PR Analysis
on:
  pull_request:
    types: [opened, synchronize]

permissions:
  pull-requests: write
  contents: read

jobs:
  analyze:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: GitGuru29/RepoPulse-AI@v1.0
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}

