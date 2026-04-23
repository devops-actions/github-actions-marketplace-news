---
title: Sekrd Security Scan
date: 2026-04-23 05:54:37 +00:00
tags:
  - sekrdcom
  - GitHub Actions
draft: false
repo: https://github.com/sekrdcom/sekrd-action
marketplace: https://github.com/marketplace/actions/sekrd-security-scan
version: v1.0.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sekrdcom/sekrd-action** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sekrd-security-scan) to find the latest changes.

## Action Summary

The Sekrd GitHub Action automates deep security scans for deployed web applications, identifying vulnerabilities such as leaked secrets, insecure configurations, and compliance issues across 15 security domains. It integrates with GitHub workflows to provide actionable security insights by uploading results to the Security tab as SARIF files and posting PR comments with scores and critical findings. This action helps development teams streamline security checks during CI/CD processes without requiring self-hosted scanning infrastructure.

## What's Changed

Adds retry-with-backoff (5 attempts, 30/60/90/120/150s) on 429 Too Many Requests from /api/v1/scan/*. Prior versions failed the workflow with curl exit code 22 on any rate-limit hit; now the action survives transient 429s and only bails loud on sustained rate-limiting.

No migration required; v1 tag moved to v1.0.3.
