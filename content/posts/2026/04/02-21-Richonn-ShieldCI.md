---
title: ShieldCI — DevSecOps Pipeline Generator
date: 2026-04-02 21:55:36 +00:00
tags:
  - Richonn
  - GitHub Actions
draft: false
repo: https://github.com/Richonn/ShieldCI
marketplace: https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator
version: v1.7.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Richonn/ShieldCI** to version **v1.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator) to find the latest changes.

## Action Summary

ShieldCI is a GitHub Action designed to automate the creation of secure CI/CD DevSecOps pipelines by detecting your project's stack, generating optimized workflow configurations, and opening a pull request with the proposed workflows. It simplifies the setup of security-enhanced pipelines by including tools for static analysis (CodeQL/Semgrep), secret scanning (Gitleaks), container vulnerability scanning (Trivy), and more, while supporting multiple languages, Docker, and Kubernetes environments. This action streamlines the implementation of best practices in CI/CD pipeline development, saving time and ensuring robust security compliance.

## What's Changed

## What's new

ShieldCI now generates an OpenSSF Scorecard job in the `security.yml` workflow. Scorecard analyses your repository against ~20 security best practices and uploads the results to the GitHub Security tab as SARIF.

### What Scorecard checks

- Dependency pinning (SHA hashes)
- Branch protection and code review requirements
- Workflow permissions (least privilege)
- Presence of security policy (`SECURITY.md`)
- Test coverage
- And more — full list at [github.com/ossf/scorecard](https://github.com/ossf/scorecard)

### Triggers

- Weekly on Monday at 06:00 UTC
- On every push to `main`

No configuration required — Scorecard is enabled automatically in all generated security workflows.

