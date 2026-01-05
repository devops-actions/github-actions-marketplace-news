---
title: SonarQube Community to GitHub Security Tab (SARIF)
date: 2026-01-05 13:23:47 +00:00
tags:
  - vmvarela
  - GitHub Actions
draft: false
repo: https://github.com/vmvarela/sonarqube-ce-sarif-action
marketplace: https://github.com/marketplace/actions/sonarqube-community-to-github-security-tab-sarif
version: v0.3.1
dependentsNumber: "?"
---


Version updated for **https://github.com/vmvarela/sonarqube-ce-sarif-action** to version **v0.3.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sonarqube-community-to-github-security-tab-sarif) to find the latest changes.

## Action Summary

This GitHub Action integrates SonarQube Community Edition (CE) with GitHub, enabling features like pull request (PR) decoration, inline code annotations, issue summaries, and GitHub Security Tab integration that are typically unavailable in the CE version. It automates the process of converting SonarQube scan results into SARIF format, providing actionable insights and better visibility of code quality and security issues directly within the GitHub interface. This eliminates manual context switching and ensures developers can identify and address issues more efficiently.

## Release notes

- Document changes to skip SARIF upload on PRs
- Explain why (SonarQube CE limitation and false positives)
- Document new FAQ entry on Quality Gates relationship
- Clarify that these are documentation-only changes
