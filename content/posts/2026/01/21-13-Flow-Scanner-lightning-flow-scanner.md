---
title: Lightning Flow Scan
date: 2026-01-21 13:46:04 +00:00
tags:
  - Flow-Scanner
  - GitHub Actions
draft: false
repo: https://github.com/Flow-Scanner/lightning-flow-scanner
marketplace: https://github.com/marketplace/actions/lightning-flow-scan
version: action-v3.4.1
dependentsNumber: "0"
---


Version updated for **https://github.com/Flow-Scanner/lightning-flow-scanner** to version **action-v3.4.1**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lightning-flow-scan) to find the latest changes.

## Action Summary

The Lightning Flow Scanner is a tool designed to analyze Salesforce Flows for potential issues, such as unsafe practices, anti-patterns, and errors that may lead to functionality failures, security vulnerabilities, or deployment issues. It automates the detection of problems like DML operations in loops, hardcoded Salesforce IDs or URLs, and other risky configurations, helping developers optimize and maintain their Flows more effectively. This action provides critical insights and recommendations to improve Flow performance, portability, and compliance with best practices.

## Release notes

## Patch: Missing Fault Path

Action tag: action-v3.4.1
CLI tag: v6.17.2
Core tag: core-v6.17.3
VSX Version: v3.2.3

This patch release contains no major breaking changes or new rules. The focus has been on reducing false positives in the following rules:

1. Missing Fault Path rule:
Reduced false positives by excluding elements that are already part of defined fault paths.
Also improved handling to skip scenarios where a formula is used as a condition (avoiding unnecessary flags on valid conditional logic).
(Related commits: patch(core): exclude results when a formula is used as a condition and patch(core): improve Missing Fault Path to exclude elements already part of fault paths)

2. Missing Trigger Filter rule:
Fixed false positives (specific details on the adjustment are internal to the core engine updates in this release).
