---
title: Korext Enforce
date: 2026-04-08 22:09:01 +00:00
tags:
  - Korext
  - GitHub Actions
draft: false
repo: https://github.com/Korext/enforce-action
marketplace: https://github.com/marketplace/actions/korext-enforce
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Korext/enforce-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/korext-enforce) to find the latest changes.

## Action Summary

The **Korext Enforce Action** is a GitHub Action designed to enforce security, compliance, and quality standards on AI-generated code by scanning repositories against predefined policy packs. It automates code analysis, identifies policy violations, and surfaces them as annotations on pull requests using GitHub Code Scanning, while optionally gating workflows based on critical or high-severity issues. This action helps streamline code quality assurance and ensures adherence to organizational or industry standards.

## What's Changed

Updated Korext CLI from 0.9.4 to 0.9.5.

Includes:
- Watch mode file change detection fix
- - Nonexistent directory now exits with error code 2
- - Offline enforcement shows rule availability count
- - Policy commands default to production API
