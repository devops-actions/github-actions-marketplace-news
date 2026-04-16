---
title: JEP Accountability for GitHub
date: 2026-04-16 22:13:21 +00:00
tags:
  - hjs-spec
  - GitHub Actions
draft: false
repo: https://github.com/hjs-spec/jep-github-action
marketplace: https://github.com/marketplace/actions/jep-accountability-for-github
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/hjs-spec/jep-github-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jep-accountability-for-github) to find the latest changes.

## Action Summary

The "JEP Accountability for GitHub" action automates the generation of cryptographically signed Judgment Event Protocol (JEP) accountability receipts for AI or automated operations on GitHub, such as pull request merges, creations, and issue closures. It provides transparency by posting receipts as comments, adding commit status checks, and optionally sending events to a centralized API for storage. This action is designed to enhance accountability and traceability for automated workflows involving bots or AI agents.

## What's Changed

## 🚀 Initial Release

JEP Accountability for GitHub is now available on GitHub Marketplace.

### ✨ Features
- Automatically generate cryptographically signed JEP accountability receipts
- Post receipts as PR comments for full transparency
- Add commit status checks showing accountability verification
- Support dry run mode for testing

### 📦 Usage
```yaml
- uses: hjs-foundation/jep-github-action@v0.1.0
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    operation: "pr_merge"
    actor: "dependabot[bot]"
    reason: "Automated dependency update merge"
