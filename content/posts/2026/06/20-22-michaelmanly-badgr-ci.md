---
title: Badgr Agent CI
date: 2026-06-20 22:12:09 +00:00
tags:
  - michaelmanly
  - GitHub Actions
draft: false
repo: https://github.com/michaelmanly/badgr-ci
marketplace: https://github.com/marketplace/actions/badgr-agent-ci
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/michaelmanly/badgr-ci** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/badgr-agent-ci) to find the latest changes.

## What's Changed

Initial GitHub Marketplace release of Badgr Agent CI.

Badgr Agent CI diagnoses failed GitHub Actions runs and posts a pull request comment with:

- Likely cause
- Evidence from logs
- Suggested fix
- Confidence level

Install:

```yaml
- uses: michaelmanly/badgr-ci@v1
  if: failure()
  with:
    badgr_api_key: ${{ secrets.BADGR_API_KEY }}
    github_token: ${{ secrets.GITHUB_TOKEN }}
```

The action is diagnosis-only. It does not modify code, rerun workflows, merge pull requests, or change infrastructure.
