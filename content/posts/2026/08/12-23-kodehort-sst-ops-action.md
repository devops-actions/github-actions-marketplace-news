---
title: SST Operations
date: 2026-08-12 23:01:14 +00:00
tags:
  - kodehort
  - GitHub Actions
draft: false
repo: https://github.com/kodehort/sst-ops-action
marketplace: https://github.com/marketplace/actions/sst-operations
version: v0.7.42
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates various operations related to Serverless Stack (SST) applications, including deploying, diffing infrastructure changes, removing resources on PR closure, and staging deployments. It consolidates multiple composite actions into a single tool to streamline SST management workflows. The action supports deployment to specific stages, handling pull request-related operations, and provides customizable features like comment modes and output truncation.
---


Version updated for **https://github.com/kodehort/sst-ops-action** to version **v0.7.42**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sst-operations) to find the latest changes.

## Action Summary

This GitHub Action automates various operations related to Serverless Stack (SST) applications, including deploying, diffing infrastructure changes, removing resources on PR closure, and staging deployments. It consolidates multiple composite actions into a single tool to streamline SST management workflows. The action supports deployment to specific stages, handling pull request-related operations, and provides customizable features like comment modes and output truncation.

## What's Changed

# Release v0.7.42

**Release Date:** 2026-08-12
**Previous Version:** v0.7.41

## 🚀 What's New


## 📦 Bundle Information

- **Bundle Size:** 1.51MB (1584536 bytes)
- **Integrity Hash:** `3ffa6987e95304a4...`
- **Format:** ES Modules for GitHub Actions
- **Target:** Node.js 20+
- **Source Maps:** Included for debugging
- **Distribution:** Files included in repository at tagged version

## 🚀 Usage

```yaml
- name: SST Operations
  uses: kodehort/sst-ops-action@v0.7.42
  with:
    operation: deploy  # deploy, diff, or remove
    stage: production
    token: ${{ secrets.GITHUB_TOKEN }}
```

## 🔗 Links

- [Full Changelog](https://github.com/kodehort/sst-ops-action/compare/v0.7.41...v0.7.42)
- [Documentation](https://github.com/kodehort/sst-ops-action/blob/v0.7.42/README.md)
- [Action Marketplace](https://github.com/marketplace/actions/sst-operations)

---

**Full Changelog**: https://github.com/kodehort/sst-ops-action/compare/v0.7.41...v0.7.42

