---
title: AI Changelog Summary
date: 2026-03-18 13:33:10 +00:00
tags:
  - qte77
  - GitHub Actions
draft: false
repo: https://github.com/qte77/gha-ai-changelog
marketplace: https://github.com/marketplace/actions/ai-changelog-summary
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/qte77/gha-ai-changelog** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-changelog-summary) to find the latest changes.

## Action Summary

The `gha-ai-changelog` GitHub Action automates the generation of changelog entries by summarizing pull request commits using GitHub Models AI API. It streamlines the process of documenting changes by inserting AI-generated summaries into a specified changelog file, saving time and ensuring consistent documentation. Key capabilities include customizable integration with changelog files, support for GitHub AI models, and optional automatic pull request creation for the updates.

## Release notes

## AI Changelog Summary v1.0.0

Summarize PR commits into changelog entries using GitHub Models AI API.

### Usage

```yaml
- uses: qte77/gha-ai-changelog@v1
  with:
    PR_NUMBER: ${{ github.event.pull_request.number }}
    AI_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

See [README](https://github.com/qte77/gha-ai-changelog#readme) for full documentation.

### What's included

- Composite action with 9 configurable inputs
- GitHub Marketplace branding (file-text icon, orange)
- BSD-3-Clause license
- Self-test, bumpversion, and job summary workflows
