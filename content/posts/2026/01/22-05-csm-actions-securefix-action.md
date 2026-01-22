---
title: Fix Code securely
date: 2026-01-22 05:57:37 +00:00
tags:
  - csm-actions
  - GitHub Actions
draft: false
repo: https://github.com/csm-actions/securefix-action
marketplace: https://github.com/marketplace/actions/fix-code-securely
version: v0.5.4
dependentsNumber: "2"
---


Version updated for **https://github.com/csm-actions/securefix-action** to version **v0.5.4**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fix-code-securely) to find the latest changes.

## Action Summary

Securefix Action is a GitHub Action designed to securely automate code fixes within CI workflows. It eliminates the need to share sensitive credentials (e.g., GitHub App private keys with elevated permissions) or rely on external services, enhancing workflow security. This action simplifies secure code fixes and integrates seamlessly without requiring additional server hosting.

## Release notes

[Issues](https://github.com/csm-actions/securefix-action/issues?q=is%3Aissue+is%3Aclosed+milestone%3Av0.5.4) | [Pull Requests](https://github.com/csm-actions/securefix-action/pulls?q=is%3Apr+is%3Aclosed+milestone%3Av0.5.4) | https://github.com/csm-actions/securefix-action/compare/v0.5.3...v0.5.4 | [Base revision](https://github.com/csm-actions/securefix-action/tree/71329ff4ef0418996c97d31be4315302d3b7253d)

## 🐛 Bug Fixes

#464 fix: make PullRequest schema fields optional with defaults

Fix a validation error:

```
 Error: [
    {
      "expected": "array",
      "code": "invalid_type",
      "path": [
        "inputs",
        "pull_request",
        "reviewers"
      ],
      "message": "Invalid input: expected array, received undefined"
    },
    {
      "expected": "array",
      "code": "invalid_type",
      "path": [
        "inputs",
        "pull_request",
        "team_reviewers"
      ],
      "message": "Invalid input: expected array, received undefined"
    }
  ]
```
