---
title: IAM Permission Scanner
date: 2026-05-20 07:01:42 +00:00
tags:
  - mkkltech
  - GitHub Actions
draft: false
repo: https://github.com/mkkltech/iam-risk-scanner
marketplace: https://github.com/marketplace/actions/iam-permission-scanner
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/mkkltech/iam-risk-scanner** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/iam-permission-scanner) to find the latest changes.

## Action Summary

The IAM Risk Scanner GitHub Action analyzes Terraform and CloudFormation files in pull requests to identify IAM permission changes and potential privilege escalation risks. It automatically detects high-risk permissions and privilege escalation paths, posts a detailed report as a PR comment, and optionally fails checks based on severity thresholds. This action streamlines security reviews by highlighting IAM risks directly in the development workflow, ensuring safer infrastructure-as-code practices.

## What's Changed

Initial release of IAM Risk Scanner - a GitHub Action that scans Terraform and CloudFormation for IAM privilege escalation risks on every pull request.

**What's included:**
- 40+ high-risk IAM permission rules (single and combo escalation paths)
- Supports Terraform (.tf) and CloudFormation (.json, .yaml, .yml)
- Posts or updates a single PR comment per scan
- Configurable severity threshold (HIGH or MEDIUM)
- Report-only mode via fail-on-findings: false

