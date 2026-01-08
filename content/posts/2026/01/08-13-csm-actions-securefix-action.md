---
title: Fix Code securely
date: 2026-01-08 13:21:20 +00:00
tags:
  - csm-actions
  - GitHub Actions
draft: false
repo: https://github.com/csm-actions/securefix-action
marketplace: https://github.com/marketplace/actions/fix-code-securely
version: v0.4.3
dependentsNumber: "2"
---


Version updated for **https://github.com/csm-actions/securefix-action** to version **v0.4.3**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fix-code-securely) to find the latest changes.

## Action Summary

Securefix Action is a GitHub Action designed to securely automate code fixes directly within CI workflows, eliminating the need to share sensitive credentials like GitHub App private keys or rely on external services. It enhances workflow security by using a unique server/client architecture entirely within GitHub Actions, reducing exposure to potential vulnerabilities while simplifying the process of automating secure code changes.

## Release notes

[Issues](https://github.com/csm-actions/securefix-action/issues?q=is%3Aissue+is%3Aclosed+milestone%3Av0.4.3) | [Pull Requests](https://github.com/csm-actions/securefix-action/pulls?q=is%3Apr+is%3Aclosed+milestone%3Av0.4.3) | https://github.com/csm-actions/securefix-action/compare/v0.4.2...v0.4.3 | [Base revision](https://github.com/csm-actions/securefix-action/tree/7e972729b7ddeaf68b01ff7dc9e63ec9924071e8)

## 🐛 Bug Fixes

#428 #429 Fix a bug of zod validation

```json
[
  {
    "code": "invalid_type",
    "expected": "object",
    "received": "null",
    "path": [
      "project"
    ],
    "message": "Expected object, received null"
  }
]
```
