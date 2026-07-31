---
title: Oculum Security Scan
date: 2026-07-30 23:50:59 +00:00
tags:
  - OculumDev
  - GitHub Actions
draft: false
repo: https://github.com/OculumDev/oculum-action
marketplace: https://github.com/marketplace/actions/oculum-security-scan
version: v1.0.4
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
actionSummary: |
  Oculum Security Scan is a GitHub Action that automates security scanning of LLM-powered applications. It detects prompt injection, hardcoded secrets, SQL injection, XSS, and other vulnerabilities using both AI-assisted validation and traditional static analysis techniques. The action integrates with GitHub to provide PR comments and inline annotations on code changes. It supports various scan depths (free and validated) and can be configured to fail the workflow based on different severity levels or categories of findings.
---


Version updated for **https://github.com/OculumDev/oculum-action** to version **v1.0.4**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oculum-security-scan) to find the latest changes.

## Action Summary

Oculum Security Scan is a GitHub Action that automates security scanning of LLM-powered applications. It detects prompt injection, hardcoded secrets, SQL injection, XSS, and other vulnerabilities using both AI-assisted validation and traditional static analysis techniques. The action integrates with GitHub to provide PR comments and inline annotations on code changes. It supports various scan depths (free and validated) and can be configured to fail the workflow based on different severity levels or categories of findings.

## What's Changed

- Update README and action.yml for marketplace (d43812a)
- reduced description length for marketplace publish (f19893e)
- change description (ae151d7)
- Improve annotation fix details - use fixSteps when available (3b55e59)
- first commit (16010ba)
