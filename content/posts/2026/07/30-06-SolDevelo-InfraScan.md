---
title: InfraScan – IaC Cost & Security Scanner
date: 2026-07-30 06:48:28 +00:00
tags:
  - SolDevelo
  - GitHub Actions
draft: false
repo: https://github.com/SolDevelo/InfraScan
marketplace: https://github.com/marketplace/actions/infrascan-iac-cost-security-scanner
version: v1.1.0
dependentsNumber: "3"
actionType: Composite
actionSummary: |
  InfraScan is an open-source infrastructure auditing tool that helps engineering teams detect cost waste, security risks, and container vulnerabilities in CI/CD pipelines. It automates these tasks using a GitHub Action that runs locally or inside the pipeline, ensuring full transparency and auditability. The action supports various scanners including Terraform, Kubernetes, Helm, CloudFormation, Ansible, and containers, making it suitable for organizations with security-conscious needs.
---


Version updated for **https://github.com/SolDevelo/InfraScan** to version **v1.1.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/infrascan-iac-cost-security-scanner) to find the latest changes.

## Action Summary

InfraScan is an open-source infrastructure auditing tool that helps engineering teams detect cost waste, security risks, and container vulnerabilities in CI/CD pipelines. It automates these tasks using a GitHub Action that runs locally or inside the pipeline, ensuring full transparency and auditability. The action supports various scanners including Terraform, Kubernetes, Helm, CloudFormation, Ansible, and containers, making it suitable for organizations with security-conscious needs.

## What's Changed

* Step summary: full results in workflow run's Summary tab
* PR comments: grade table + cost estimate + new CRITICAL/HIGH findings (requires pull-requests: write)
* Auto-baseline: cost delta tracking with automatic baseline management
* Smart skipping: skips scan when no matching files changed in PRs
* Inline annotations: ::error and ::warning markers in PR diff view
* Cost estimation improvements

**Full Changelog**: https://github.com/SolDevelo/InfraScan/compare/v1.0.10...v1.1.0
