---
title: Qualys IaC Security (Enhanced)
date: 2026-02-26 21:31:46 +00:00
tags:
  - nelssec
  - GitHub Actions
draft: false
repo: https://github.com/nelssec/qualys-iac
marketplace: https://github.com/marketplace/actions/qualys-iac-security-enhanced
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/nelssec/qualys-iac** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qualys-iac-security-enhanced) to find the latest changes.

## Action Summary

The Qualys IaC Security GitHub Action (Enhanced) automates the scanning of Infrastructure-as-Code (IaC) files for security vulnerabilities using Qualys TotalCloud policies. This enhanced version allows users to specify custom policies via the `policy_name` parameter, addressing the limitation of the official Qualys IaC action which only supports default policies. It streamlines security assessments during CI/CD workflows by providing flexible policy configuration and integration with GitHub Actions.

## Release notes

## Qualys IaC Security GitHub Action (Enhanced) v1.0.0

Enhanced fork of [Qualys/github_action_qiac](https://github.com/Qualys/github_action_qiac) adding `policy_name` support.

### What's New
- **`policy_name` input** — Specify a custom Qualys CSA policy (Build time execution type) to evaluate against, instead of the default policy.

### Usage
```yaml
- uses: nelssec/qualys-iac@v1
  env:
    URL: ${{ secrets.URL }}
    UNAME: ${{ secrets.USERNAME }}
    PASS: ${{ secrets.PASSWORD }}
  with:
    policy_name: 'AWS DISA STIG Build Controls'
```

See [README](https://github.com/nelssec/qualys-iac#readme) for full documentation.
