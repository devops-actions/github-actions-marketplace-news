---
title: JaCoCo Report to PR Comment
date: 2026-06-16 06:54:43 +00:00
tags:
  - MoranaApps
  - GitHub Actions
draft: false
repo: https://github.com/MoranaApps/jacoco-report
marketplace: https://github.com/marketplace/actions/jacoco-report-to-pr-comment
version: v3.0.3
dependentsNumber: "8"
actionType: Composite
---


Version updated for **https://github.com/MoranaApps/jacoco-report** to version **v3.0.3**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jacoco-report-to-pr-comment) to find the latest changes.

## What's Changed

### Bugfixes 🛠
- #193 _Remove GITHUB_TOKEN format test_ developed by @miroslavpojer in #194
  - **Bug fix:** Removed local token format validation that incorrectly rejected valid  `GITHUB_TOKEN` values (e.g. JWT-style tokens from newer GitHub Actions runners) with  `'token' must be a valid GitHub token.` before reaching the API.
  - Token is now accepted as any non-empty string; the GitHub API remains the authoritative  validator.

#### Full Changelog
https://github.com/MoranaApps/jacoco-report/compare/v3.0.2...v3.0.3
