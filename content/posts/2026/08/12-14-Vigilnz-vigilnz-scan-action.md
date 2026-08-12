---
title: Vigilnz Security Scan
date: 2026-08-12 14:42:00 +00:00
tags:
  - Vigilnz
  - GitHub Actions
draft: false
repo: https://github.com/Vigilnz/vigilnz-scan-action
marketplace: https://github.com/marketplace/actions/vigilnz-security-scan
version: v1.3.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  The Vigilnz Security Scan Action automates security scanning tasks such as SCA, SBOM, SAST, IAC SCAN, SECRET SCAN, DAST, and CONTAINER SCAN on GitHub repositories. It integrates with Vigilnz's API to perform these scans and provides outputs directly in the GitHub Actions workflow. The action is easy to use, requiring an API key stored securely in GitHub Secrets and adding a simple step to your workflow YAML file.
---


Version updated for **https://github.com/Vigilnz/vigilnz-scan-action** to version **v1.3.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vigilnz-security-scan) to find the latest changes.

## Action Summary

The Vigilnz Security Scan Action automates security scanning tasks such as SCA, SBOM, SAST, IAC SCAN, SECRET SCAN, DAST, and CONTAINER SCAN on GitHub repositories. It integrates with Vigilnz's API to perform these scans and provides outputs directly in the GitHub Actions workflow. The action is easy to use, requiring an API key stored securely in GitHub Secrets and adding a simple step to your workflow YAML file.

## What's Changed

- Implement the includes field for folder vise selection scan
- Also added the excludes field for to ignore the folder to scan
