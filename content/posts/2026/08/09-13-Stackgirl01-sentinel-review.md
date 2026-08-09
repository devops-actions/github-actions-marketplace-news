---
title: Sentinel Review
date: 2026-08-09 13:46:10 +00:00
tags:
  - Stackgirl01
  - GitHub Actions
draft: false
repo: https://github.com/Stackgirl01/sentinel-review
marketplace: https://github.com/marketplace/actions/sentinel-review
version: v1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  Sentinel Review is an AI-powered security review action that analyzes pull requests by reading diffs and reasoning about them with Claude. It catches reasoning-based issues like hardcoded secrets, SQL injection, auth bypasses, and more. The action posts inline comments on PRs, providing context for human reviewers to address potential security vulnerabilities.
---


Version updated for **https://github.com/Stackgirl01/sentinel-review** to version **v1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sentinel-review) to find the latest changes.

## Action Summary

Sentinel Review is an AI-powered security review action that analyzes pull requests by reading diffs and reasoning about them with Claude. It catches reasoning-based issues like hardcoded secrets, SQL injection, auth bypasses, and more. The action posts inline comments on PRs, providing context for human reviewers to address potential security vulnerabilities.

## What's Changed

Fixes an edge case where a diff hunk's line number could be valid on
both the old and new file (common in hunks with a small edit inside a
large context block). Previously the code guessed which side to use,
which could silently attach a comment to the wrong physical line.

Findings now explicitly declare which side (old/new file) a line
number refers to, and the mapping is validated against the actual
diff hunk before posting.

v1 remains unchanged and available for anyone still pinned to it.
