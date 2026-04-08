---
title: VICE Security Audit
date: 2026-04-08 13:57:23 +00:00
tags:
  - Webba-Creative-Technologies
  - GitHub Actions
draft: false
repo: https://github.com/Webba-Creative-Technologies/vice
marketplace: https://github.com/marketplace/actions/vice-security-audit
version: v3.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Webba-Creative-Technologies/vice** to version **v3.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vice-security-audit) to find the latest changes.

## Action Summary

The VICE GitHub Action is a security auditing tool that automates vulnerability detection for web applications. It performs black-box (remote scans) and white-box (local audits) testing, identifying issues such as SQL injection, XSS, and misconfigurations. By integrating into CI workflows, it comments on pull requests with security findings, updates a live security badge, and enforces score thresholds to prevent vulnerable code from merging.

## What's Changed

VICE now ships as a GitHub Action that scans your code on every pull request and push, posts findings as a PR comment, and maintains a security badge in your repo.

  ## Quickstart

  ```yaml
  uses: Webba-Creative-Technologies/vice@v3  
  ```

  That's it. The action runs all 7 local audit modules, posts a comment on PRs with the score and findings, and updates a .github/vice-badge.json file on push for embeddable security badges.

  ### What's new

  #### GitHub Action
  - Composite action with sensible defaults (min-score 70, fail-on-score true, comment PRs, update badge)
  - PR comment posted via gh CLI, updated in place on every commit (no spam)
  - Security badge auto-committed via Contents API on push to default branch
  - Diff vs base branch shown in PR comments when a baseline badge exists
  - Action and CLI share the same version: @v3.1.0 pins both at once

 ####  CLI improvements
  - New --json flag on vice audit for clean stdout JSON output
  - New vice badge command to generate a shields.io endpoint badge from a report
  - New VICE_ACCEPT_TERMS=1 environment variable to bypass the disclaimer in CI
  - Local audits now respect .viceignore in code-vulnerabilities and auth modules
  - Fixed duplicate findings in code vulnerability detection (dedup by file, line, rule)

  ### Documentation

  See the https://github.com/Webba-Creative-Technologies/vice#github-action for inputs, outputs, permissions, and badge embedding.

  ### Required permissions

  ```yaml
  permissions:
  contents: write  # to commit the badge file
  pull-requests: write  # to post PR comments
  ```
