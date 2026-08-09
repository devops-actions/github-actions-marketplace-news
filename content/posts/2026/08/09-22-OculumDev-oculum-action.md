---
title: Oculum Security Scan
date: 2026-08-09 22:03:23 +00:00
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
  This GitHub Action, Oculum Security Scan, is an AI-driven security scanner designed to detect various vulnerabilities in LLM-powered applications. It combines both AI and traditional static application security testing (SAST) methods to identify prompt injection, hardcoded secrets, SQL injection, XSS, and more. The action provides low false positives by using AI-assisted validation and integrates seamlessly with GitHub workflows to automatically scan pull requests and commits. Users can set different scan depths and fail thresholds based on their needs, and it offers options for customizing the directory and file patterns scanned.
---


Version updated for **https://github.com/OculumDev/oculum-action** to version **v1.0.4**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oculum-security-scan) to find the latest changes.

## Action Summary

This GitHub Action, Oculum Security Scan, is an AI-driven security scanner designed to detect various vulnerabilities in LLM-powered applications. It combines both AI and traditional static application security testing (SAST) methods to identify prompt injection, hardcoded secrets, SQL injection, XSS, and more. The action provides low false positives by using AI-assisted validation and integrates seamlessly with GitHub workflows to automatically scan pull requests and commits. Users can set different scan depths and fail thresholds based on their needs, and it offers options for customizing the directory and file patterns scanned.

## What's Changed

- Update README and action.yml for marketplace (d43812a)
- reduced description length for marketplace publish (f19893e)
- change description (ae151d7)
- Improve annotation fix details - use fixSteps when available (3b55e59)
- first commit (16010ba)
