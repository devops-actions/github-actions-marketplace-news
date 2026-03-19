---
title: SonarQube to GitHub Security Tab (SARIF)
date: 2026-03-19 21:47:24 +00:00
tags:
  - vmvarela
  - GitHub Actions
draft: false
repo: https://github.com/vmvarela/sonarqube-sarif
marketplace: https://github.com/marketplace/actions/sonarqube-to-github-security-tab-sarif
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/vmvarela/sonarqube-sarif** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sonarqube-to-github-security-tab-sarif) to find the latest changes.

## Action Summary

This GitHub Action integrates SonarQube analysis results with GitHub by converting SonarQube issues into SARIF format, enabling them to appear in GitHub's Security tab, pull request annotations, and check run summaries. It automates the process of fetching issues from the SonarQube REST API, filtering results to relevant files in pull requests, and optionally posting PR comments or uploading SARIF files for default branch scans. This action bridges the gap between SonarQube's analysis capabilities and GitHub's developer-centric workflows.

## Release notes

## 🐛 Bug Fixes

- Evaluate `fail-on-severity` independently of check run creation — works even without a GitHub token (#28)
- Handle missing `paging.total` in SonarQube paginated responses (#27)
- Paginate `findExistingComment` to handle PRs with >100 comments (#29)

## 🚀 Improvements

- Warn when >50 annotations are truncated by the GitHub API limit (#26)
- Clarify warning message when PR file fetch fails and annotation fallback is used (#31)
- Emit warning summary when rule detail fetches fail instead of silently skipping (#32)

## ⬆️ Dependency Updates

- Bump `flatted` from 3.4.1 to 3.4.2 (#30)

**Full Changelog**: https://github.com/vmvarela/sonarqube-sarif/compare/v1.0.0...v1.1.0
