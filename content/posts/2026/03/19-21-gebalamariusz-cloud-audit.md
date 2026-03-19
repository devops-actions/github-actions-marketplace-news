---
title: cloud-audit - AWS Security Scanner
date: 2026-03-19 21:49:14 +00:00
tags:
  - gebalamariusz
  - GitHub Actions
draft: false
repo: https://github.com/gebalamariusz/cloud-audit
marketplace: https://github.com/marketplace/actions/cloud-audit-aws-security-scanner
version: v0.9.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gebalamariusz/cloud-audit** to version **v0.9.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cloud-audit-aws-security-scanner) to find the latest changes.

## Action Summary

**cloud-audit** is an open-source AWS security scanner that performs 47 checks across 15 AWS resource types and maps findings to 16 CIS AWS Foundations Benchmark controls. It uniquely identifies and correlates vulnerabilities into exploitable attack paths using 16 attack chain rules, helping users prioritize and remediate real-world security risks. Additionally, it provides actionable fixes with AWS CLI commands, Terraform configurations, and documentation links, streamlining cloud security management and reducing manual effort.

## Release notes

## What's new

- **GitHub Actions Marketplace** - use cloud-audit as a reusable Action with SARIF upload, OIDC auth, and diff baseline support
- **pre-commit hooks** - scan and diff hooks for the pre-commit framework (pre-push stage)
- Version bump to 0.9.1

### GitHub Action usage

```yaml
- uses: gebalamariusz/cloud-audit@v0
  with:
    format: sarif
    output: results.sarif
    fail-on-findings: "false"
```

### pre-commit usage

```yaml
repos:
  - repo: https://github.com/gebalamariusz/cloud-audit
    rev: v0.9.1
    hooks:
      - id: cloud-audit
```
