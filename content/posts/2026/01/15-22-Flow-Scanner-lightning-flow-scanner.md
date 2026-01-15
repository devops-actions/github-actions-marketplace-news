---
title: Lightning Flow Scan
date: 2026-01-15 22:04:03 +00:00
tags:
  - Flow-Scanner
  - GitHub Actions
draft: false
repo: https://github.com/Flow-Scanner/lightning-flow-scanner
marketplace: https://github.com/marketplace/actions/lightning-flow-scan
version: action-v3.4.0
dependentsNumber: "0"
---


Version updated for **https://github.com/Flow-Scanner/lightning-flow-scanner** to version **action-v3.4.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lightning-flow-scan) to find the latest changes.

## Action Summary

The Lightning Flow Scanner is a tool designed to analyze Salesforce Flows for common anti-patterns and unsafe practices, such as DML operations in loops, hardcoded IDs, and hardcoded URLs. It automates the detection of issues that can compromise functionality, security, or deployment success, providing actionable insights to optimize and maintain Flow quality. This action is particularly valuable for improving Flow performance, ensuring best practices, and preventing deployment failures in Salesforce environments.

## Release notes

## New Rule: Hardcoded Secret

Action tag: action-v3.4.0
CLI tag: v6.17.1
Core tag: core-v6.17.2
VSX Version: v3.2.2

We’ve introduced a new rule to help prevent security risks caused by embedding sensitive values directly in Flows such as API keys, tokens, passwords, or credentials defined directly within Salesforce Flows.

Hardcoding sensitive values can lead to accidental exposure, difficult rotations, and security vulnerabilities. Instead, secrets should be stored and managed securely.

**Recommended alternatives**

When a hardcoded secret is detected, we recommend using one of the following secure storage options:

- Named Credentials
- Custom Settings
- Custom Metadata
- External secret management systems
