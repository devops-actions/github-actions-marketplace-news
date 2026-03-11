---
title: GitHub Actions Security Scanner
date: 2026-03-11 21:45:21 +00:00
tags:
  - PJDev0
  - GitHub Actions
draft: false
repo: https://github.com/PJDev0/GHA-Security-Scanner
marketplace: https://github.com/marketplace/actions/github-actions-security-scanner
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/PJDev0/GHA-Security-Scanner** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-actions-security-scanner) to find the latest changes.

## Action Summary

The GitHub Actions Workflow Security Scanner is a tool designed to enhance the security of GitHub Actions workflows by detecting supply chain vulnerabilities, enforcing security best practices, and automating remediation. It identifies issues such as unpinned actions, dangerous triggers, and overprivileged tokens, while also generating security reports and SBOMs for workflow dependencies. This action helps organizations automate the detection and resolution of security risks, reducing exposure to common vulnerabilities in CI/CD pipelines.

## Release notes

Initial production release of the GitHub Actions Workflow Security Scanner.

## What's Included

- **5 Security Rules**: Detects critical vulnerabilities including unpinned actions, dangerous triggers, and overprivileged tokens
- **Auto-Remediation**: Automatically creates PRs to pin actions to immutable commit SHAs
- **SARIF Integration**: Uploads findings directly to GitHub Advanced Security
- **SBOM Generation**: Produces CycloneDX SBOMs for workflow dependencies
- **GitHub Marketplace Ready**: Easy installation across all repositories

## Security Impact

Addresses the #1 attack vector in modern software supply chains:
- Prevents Shai Hulud v2 style attacks (25,000+ repos compromised)
- Blocks GhostAction token theft (3,325 secrets stolen)
- Enforces OpenSSF Scorecard best practices

## Usage

```yaml
- uses: your-username/gha-security-scanner@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    auto-fix: true
