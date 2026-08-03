---
title: aicheck-scan
date: 2026-08-03 22:37:29 +00:00
tags:
  - unauthdev
  - GitHub Actions
draft: false
repo: https://github.com/unauthdev/aicheck-scan
marketplace: https://github.com/marketplace/actions/aicheck-scan
version: v1.1.6
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action, `aicheck`, evaluates AI stack services used in a job by live-probing them. It checks if any exposed self-hosted AI services are present and reports their exposure grade (A–F) along with links to fix cards in the run summary and SARIF format for code scanning. The action is useful for ensuring AI services in PRs are secure and not exposed without proper authentication.
---


Version updated for **https://github.com/unauthdev/aicheck-scan** to version **v1.1.6**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aicheck-scan) to find the latest changes.

## Action Summary

This GitHub Action, `aicheck`, evaluates AI stack services used in a job by live-probing them. It checks if any exposed self-hosted AI services are present and reports their exposure grade (A–F) along with links to fix cards in the run summary and SARIF format for code scanning. The action is useful for ensuring AI services in PRs are secure and not exposed without proper authentication.

## What's Changed

## What's new
- Detect exposed RedisInsight / Redis Commander consoles (GET-only, ASI06 agent-memory framing)
- Marketplace README badge points at the live listing

## Install
```yaml
- uses: unauthdev/aicheck-scan@v1
  with:
    target: localhost
```

Pin `@v1.1.6` for this release. SARIF code scanning remains on by default.
