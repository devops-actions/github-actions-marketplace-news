---
title: TSGO Readiness Bot
date: 2025-12-23 21:17:23 +00:00
tags:
  - wavesco
  - GitHub Actions
draft: false
repo: https://github.com/wavesco/tsgo-readiness-action
marketplace: https://github.com/marketplace/actions/tsgo-readiness-bot
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/wavesco/tsgo-readiness-action** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tsgo-readiness-bot) to find the latest changes.

## Action Summary

The TSGO Readiness Bot GitHub Action automates the process of running TypeScript native preview (`tsgo`) on pull requests, providing diagnostics as both a sticky PR comment and a job summary. It simplifies type-checking tasks by supporting project and build modes, while offering flexible configuration for diagnostic reporting and error handling. This action helps streamline code reviews by surfacing TypeScript issues directly within the PR workflow without requiring additional setup or installation.

## Release notes

TSGO Readiness Bot v1.0.1

Changes
- Add MIT License
- Marketplace-ready action metadata (branding + documented inputs)
- Add github-token input for sticky PR comments
- Add installMode (default: npx / “no install required”, optional: local)
- Add README with copy/paste workflow + required permissions
