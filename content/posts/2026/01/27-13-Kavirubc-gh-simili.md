---
title: Simili - Issue Intelligence
date: 2026-01-27 13:45:15 +00:00
tags:
  - Kavirubc
  - GitHub Actions
draft: false
repo: https://github.com/Kavirubc/gh-simili
marketplace: https://github.com/marketplace/actions/simili-issue-intelligence
version: v2.3.2
dependentsNumber: "?"
---


Version updated for **https://github.com/Kavirubc/gh-simili** to version **v2.3.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/simili-issue-intelligence) to find the latest changes.

## Action Summary

Simili - Issue Intelligence is a GitHub Action that uses AI-powered semantic search to detect duplicate issues and find related issues across repositories. It automates tasks such as cross-repo similarity searches, issue routing based on predefined rules, and posting helpful comments linking related issues. This tool streamlines issue management by improving organization and reducing redundant reporting.

## Release notes

## 🐛 Bug Fix Release v2.3.2

### Critical Fix

**Duplicate Closing Now Respects Delayed Actions Configuration**

Previously, duplicate issues were being closed immediately even when delayed actions were enabled. This caused issues to be closed before users could react, even though transfers had the 24-hour delay.

### What Changed

- Duplicate closing now checks if delayed actions are enabled
- If enabled, duplicates are scheduled for closure after 24 hours (matching transfer behavior)
- Users can react 👍 to approve or 👎 to cancel duplicate closure
- Consistent behavior: both transfers and duplicate closes now use the same delay mechanism

### Impact

- **Before**: Duplicate issues closed immediately → Users couldn't react
- **After**: Duplicate issues scheduled for closure after 24 hours → Users can react to approve/cancel

### Example Flow

1. Issue detected as duplicate (98% similarity)
2. Warning comment posted: "⚠️ This issue will be closed as a duplicate in 24 hours"
3. Users can react 👍 to approve or 👎 to cancel
4. After 24 hours (if not cancelled), issue is closed

This ensures users have control over both transfers and duplicate closures.
