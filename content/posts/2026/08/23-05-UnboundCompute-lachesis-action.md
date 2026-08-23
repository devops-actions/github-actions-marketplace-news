---
title: Lachesis Security Scan
date: 2026-08-23 05:45:22 +00:00
tags:
  - UnboundCompute
  - GitHub Actions
draft: false
repo: https://github.com/UnboundCompute/lachesis-action
marketplace: https://github.com/marketplace/actions/lachesis-security-scan
version: v1.0.5
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Lachesis is a GitHub Action that analyzes your codebase to identify potential security vulnerabilities, specifically focusing on missing authorization checks. It builds a code property graph of your repository and traces untrusted input to dangerous sinks, posting findings as inline comments with severity levels such as `error` or `note`. The action runs entirely locally using your runner and can be integrated into workflows to automatically scan pull requests for security issues.
---


Version updated for **https://github.com/UnboundCompute/lachesis-action** to version **v1.0.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lachesis-security-scan) to find the latest changes.

## Action Summary

Lachesis is a GitHub Action that analyzes your codebase to identify potential security vulnerabilities, specifically focusing on missing authorization checks. It builds a code property graph of your repository and traces untrusted input to dangerous sinks, posting findings as inline comments with severity levels such as `error` or `note`. The action runs entirely locally using your runner and can be integrated into workflows to automatically scan pull requests for security issues.

## What's Changed

De-duplicate inline comments: when one sink is reached by several distinct taint witnesses, the finding is posted once per `(rule, file, line)` instead of once per witness path, so **Lachesis[bot]** no longer stacks identical comments on a line.
