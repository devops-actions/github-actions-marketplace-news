---
title: Agentic Workflow Guard
date: 2026-07-17 06:58:07 +00:00
tags:
  - jinyounghub
  - GitHub Actions
draft: false
repo: https://github.com/jinyounghub/agentic-workflow-guard
marketplace: https://github.com/marketplace/actions/agentic-workflow-guard
version: v0.2.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
actionSummary: |
  The GitHub Action `agentic-workflow-guard` is a static analyzer designed to detect and prevent AI-agent-specific vulnerabilities in GitHub Actions workflows. It focuses on identifying potential risks where untrusted event data, such as issue bodies, PR comments, branch names, or commit messages, are passed into AI agent prompts, potentially leading to write permissions, scripts, release commands, or secrets being executed with elevated privileges. This action helps ensure the security of CI/CD pipelines by monitoring for these high-risk patterns without requiring access to API keys or sending sensitive workflow content to external models.
---


Version updated for **https://github.com/jinyounghub/agentic-workflow-guard** to version **v0.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentic-workflow-guard) to find the latest changes.

## Action Summary

The GitHub Action `agentic-workflow-guard` is a static analyzer designed to detect and prevent AI-agent-specific vulnerabilities in GitHub Actions workflows. It focuses on identifying potential risks where untrusted event data, such as issue bodies, PR comments, branch names, or commit messages, are passed into AI agent prompts, potentially leading to write permissions, scripts, release commands, or secrets being executed with elevated privileges. This action helps ensure the security of CI/CD pipelines by monitoring for these high-risk patterns without requiring access to API keys or sending sensitive workflow content to external models.

## What's Changed

## What's changed

- Added a 30-second advisory GitHub Action quick start near the top of the README.
- Added a real synthetic report preview plus direct links to the successful demo run and Marketplace listing.
- Declared the Action's `report-path`, `findings`, and severity-count outputs in `action.yml`.
- Added metadata coverage so declared outputs stay aligned with the runtime.
- Stabilized the committed baseline fixture test across Windows path aliases.

## Install

```bash
npm install --save-dev @jin0/agentic-workflow-guard@0.2.1
```

GitHub Actions users can continue using `jinyounghub/agentic-workflow-guard@v0`, which now points to this release.

**Full changelog:** https://github.com/jinyounghub/agentic-workflow-guard/compare/v0.2.0...v0.2.1

