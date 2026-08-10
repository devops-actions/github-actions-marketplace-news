---
title: Oculum Security Scan
date: 2026-08-10 14:30:38 +00:00
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
  The GitHub Action Oculum Security Scan is an AI-driven security tool designed to detect various vulnerabilities in LLM-powered applications. It combines both traditional static application security testing (SAST) and AI techniques to identify prompt injection, hardcoded secrets, SQL injection, XSS, and more. The action can be integrated into GitHub workflows to automatically scan code changes and provide real-time feedback through PR comments or inline annotations. It supports two scan depths: cheap for free pattern matching scans and validated for AI-assisted validation with a required API key.
---


Version updated for **https://github.com/OculumDev/oculum-action** to version **v1.0.4**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oculum-security-scan) to find the latest changes.

## Action Summary

The GitHub Action Oculum Security Scan is an AI-driven security tool designed to detect various vulnerabilities in LLM-powered applications. It combines both traditional static application security testing (SAST) and AI techniques to identify prompt injection, hardcoded secrets, SQL injection, XSS, and more. The action can be integrated into GitHub workflows to automatically scan code changes and provide real-time feedback through PR comments or inline annotations. It supports two scan depths: cheap for free pattern matching scans and validated for AI-assisted validation with a required API key.

## What's Changed

- Update README and action.yml for marketplace (d43812a)
- reduced description length for marketplace publish (f19893e)
- change description (ae151d7)
- Improve annotation fix details - use fixSteps when available (3b55e59)
- first commit (16010ba)
