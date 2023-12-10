---
title: Snyk Infrastructure as Code security
date: 2023-12-10 03:19:12 +00:00
tags:
  - Gershon-A
  - GitHub Actions
draft: false
repo: Gershon-A/snyk-iac-code-security-checks
marketplace: https://github.com/marketplace/actions/snyk-infrastructure-as-code-security
version: v1.0.0
dependentsNumber: "1"
---


Version updated for **Gershon-A/snyk-iac-code-security-checks** to version **v1.0.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/snyk-infrastructure-as-code-security) to find the latest changes.

## Release notes

Release v1.0.0 of Snyk Infrastructure as Code Scan GitHub Action
This is the first release of our Snyk Infrastructure as Code Scan GitHub Action. This action allows you to integrate Snyk's Infrastructure as Code security checks into your GitHub workflows.

Features
- Snyk IaC Scan: Scans your Infrastructure as Code files for security vulnerabilities using Snyk.
- Severity Threshold: Allows you to set a severity threshold. The action will fail if vulnerabilities with a severity above this threshold are found.
- File Pattern: Allows you to specify a glob pattern to select the files to scan.
- PR Commenting: If update_pr_with_scan_results is set to true, the action will add a comment to the PR with the scan results.
