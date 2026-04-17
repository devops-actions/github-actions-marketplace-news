---
title: PQS Check
date: 2026-04-17 21:56:52 +00:00
tags:
  - OnChainAIIntel
  - GitHub Actions
draft: false
repo: https://github.com/OnChainAIIntel/pqs-action
marketplace: https://github.com/marketplace/actions/pqs-check
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/OnChainAIIntel/pqs-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pqs-check) to find the latest changes.

## Action Summary

The `pqs-action` GitHub Action evaluates the quality of AI prompt files in a repository based on an 8-dimension scoring system and automatically fails pull requests if the prompt quality score falls below a specified threshold. It helps automate quality assurance for AI prompts, preventing suboptimal prompts from being merged into production. Key features include recursive directory scanning, customizable thresholds, and output formats for integration into CI/CD pipelines.

## What's Changed

## PQS Check v1.0.0

Score AI prompts in your CI pipeline before they reach production.

### Features
- Scan directories or single files for .md, .txt, .prompt files
- Configurable quality threshold (default 60/80)
- Multiple output formats: text, json, markdown
- Pin specific pqs-quality CLI versions

### Usage

```yaml
- uses: OnChainAIIntel/pqs-action@v1
  with:
    api-key: ${{ secrets.PQS_API_KEY }}
    dir: 'prompts'
    threshold: '60'
```

Get a free API key at https://pqs.onchainintel.net/api-key

