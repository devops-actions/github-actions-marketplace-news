---
title: KeySentinel PR Secret Scanner
date: 2026-02-20 21:28:39 +00:00
tags:
  - Vishrut19
  - GitHub Actions
draft: false
repo: https://github.com/Vishrut19/KeySentinel
marketplace: https://github.com/marketplace/actions/keysentinel-pr-secret-scanner
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Vishrut19/KeySentinel** to version **v0.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/keysentinel-pr-secret-scanner) to find the latest changes.

## Action Summary

KeySentinel is a GitHub Action and CLI tool designed to prevent secrets such as API keys, tokens, and passwords from being accidentally leaked into codebases. It automates secret detection by scanning pull requests, local commits, and repository diffs using entropy-based analysis and over 50 secret patterns. This solution enhances security by blocking sensitive data leaks early in development workflows, offering fast, efficient, and configurable detection for both local environments and CI pipelines.

## Release notes

Initial stable release of KeySentinel.

Features:
- PR diff secret scanning
- Smart PR comments
- Entropy detection
- Configurable rules
- Local pre-commit prevention

Recommended usage:

uses: Vishrut19/KeySentinel@v0.1.0
