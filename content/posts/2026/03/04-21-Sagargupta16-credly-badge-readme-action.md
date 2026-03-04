---
title: Credly Badge README Updater
date: 2026-03-04 21:27:02 +00:00
tags:
  - Sagargupta16
  - GitHub Actions
draft: false
repo: https://github.com/Sagargupta16/credly-badge-readme-action
marketplace: https://github.com/marketplace/actions/credly-badge-readme-updater
version: v1.0.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/Sagargupta16/credly-badge-readme-action** to version **v1.0.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/credly-badge-readme-updater) to find the latest changes.

## Action Summary

The **Credly Badge README Updater** GitHub Action automates the process of syncing Credly certifications and badges to your GitHub profile README. It fetches badge data from the Credly API, categorizes them, and updates a designated section in your README without altering other content. This action eliminates the need for manual badge updates, supports dark/light themes, and provides badge counts for further workflow automation.

## Release notes

## Credly Badge README Updater - Initial Release

Auto-sync your Credly certifications and badges to your GitHub profile README.

### Features
- Fetches all badges from Credly public API with retry logic
- Categorizes into **Industry Certifications**, **Professional/Partner**, and **Knowledge/Learning**
- Updates README between `<!-- CREDLY-BADGES:START -->` / `<!-- CREDLY-BADGES:END -->` markers
- Configurable badge size, keywords, and retry attempts
- Outputs badge counts for downstream workflow steps

### Quick Start
```yaml
- uses: Sagargupta16/credly-badge-readme-action@v1
  with:
    credly-username: "your-credly-username"

