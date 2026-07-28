---
title: SST Operations
date: 2026-07-28 15:04:38 +00:00
tags:
  - kodehort
  - GitHub Actions
draft: false
repo: https://github.com/kodehort/sst-ops-action
marketplace: https://github.com/marketplace/actions/sst-operations
version: v0.7.20
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action simplifies SST operations across various stages (deploy, diff, remove, stage) by consolidating multiple composite actions into a single package. It automates tasks such as deploying applications to different stages, previewing infrastructure changes without deployments, and managing PR lifecycle events. The action supports various runtime environments and provides detailed outputs for each operation, making it easy to integrate into CI/CD pipelines.
---


Version updated for **https://github.com/kodehort/sst-ops-action** to version **v0.7.20**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sst-operations) to find the latest changes.

## Action Summary

This GitHub Action simplifies SST operations across various stages (deploy, diff, remove, stage) by consolidating multiple composite actions into a single package. It automates tasks such as deploying applications to different stages, previewing infrastructure changes without deployments, and managing PR lifecycle events. The action supports various runtime environments and provides detailed outputs for each operation, making it easy to integrate into CI/CD pipelines.

## What's Changed

# Release v0.7.20

**Release Date:** 2026-07-28
**Previous Version:** v0.7.19

## 🚀 What's New


### 🐛 Bug Fixes

- fix(deps): bump fast-xml-builder from 1.1.5 to 1.3.0 (#109) (`e3d831c`)

### 🔧 Improvements & Maintenance

- chore(deps): update dependency js-yaml to v5 (#113) (`c9a8080`)
- chore(deps): bump undici from 6.24.1 to 6.28.0 (#106) (`03ed6a8`)
- chore(deps): update actions/checkout action to v7 (#111) (`25a1e96`)
- chore(deps): update actions/setup-node action to v7 (#112) (`79a9991`)
- chore(deps): bump minimatch (#66) (`9b466e2`)
- chore(deps): bump brace-expansion (#87) (`092094d`)

## 📦 Bundle Information

- **Bundle Size:** 1.51MB (1578264 bytes)
- **Integrity Hash:** `507e33413e2de6d0...`
- **Format:** ES Modules for GitHub Actions
- **Target:** Node.js 20+
- **Source Maps:** Included for debugging
- **Distribution:** Files included in repository at tagged version

## 🚀 Usage

```yaml
- name: SST Operations
  uses: kodehort/sst-ops-action@v0.7.20
  with:
    operation: deploy  # deploy, diff, or remove
    stage: production
    token: \ghs_15368_eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJhdXRobmQiLCJjdHgiOiJYYm1JNjRBMHJBem91MHJNZ3dxNnRjMEtXd05OWXhILWt5Y21hdmE5dmFvVEpIbUtiRGtxMHBRIiwiZXhwIjoxNzg1MjMwNDc2LCJpYXQiOjE3ODUyMjY4NzYsImlzcyI6ImdpdGh1YiIsImp0aSI6IjJmNWM0YjIyLTc0ZmItNGVhMS05ZjM1LTI5Y2VhZTYwNDlmZiIsInZlciI6M30._pcR2jV2i4igNNPqpiISJTUCiwUEXH6BTdFqj5A0Zw1Z1ftxOLrBmTHVezIafdJ6NS2T49io85pb1tHcFlKnRA
```

## 🔗 Links

- [Full Changelog](https://github.com/kodehort/sst-ops-action/compare/v0.7.19...v0.7.20)
- [Documentation](https://github.com/kodehort/sst-ops-action/blob/v0.7.20/README.md)
- [Action Marketplace](https://github.com/marketplace/actions/sst-operations)

---

**Full Changelog**: https://github.com/kodehort/sst-ops-action/compare/v0.7.19...v0.7.20

