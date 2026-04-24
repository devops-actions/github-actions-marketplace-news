---
title: ShieldCI — DevSecOps Pipeline Generator
date: 2026-04-24 05:56:08 +00:00
tags:
  - Richonn
  - GitHub Actions
draft: false
repo: https://github.com/Richonn/ShieldCI
marketplace: https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator
version: v1.13.3
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Richonn/ShieldCI** to version **v1.13.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator) to find the latest changes.

## Action Summary

ShieldCI is a GitHub Action designed to automatically generate robust CI/CD DevSecOps workflows tailored to a repository's technology stack and security needs. It streamlines the creation of pipelines by detecting the stack, integrating security tools (e.g., CodeQL, Trivy, Gitleaks), and opening a pull request with the generated workflows. This action simplifies pipeline setup while ensuring best practices for security and automation are followed.

## What's Changed

## Improvements

### Structured issue templates

Three issue templates have been added to the repository under `.github/ISSUE_TEMPLATE/`:

- **Bug report** — pre-filled with description, reproduction steps, expected vs actual behavior, and environment details
- **Feature request** — structured around motivation and proposed solution
- **Security vulnerability** — blank issues are disabled; the template redirects reporters to [GitHub Security Advisories](https://github.com/Richonn/ShieldCI/security/advisories/new) to avoid public disclosure of vulnerabilities

The `CONTRIBUTING.md` has been updated to reflect the availability of these templates.

