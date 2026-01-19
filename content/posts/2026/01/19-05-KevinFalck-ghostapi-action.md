---
title: GhostAPI Security Scan
date: 2026-01-19 05:54:41 +00:00
tags:
  - KevinFalck
  - GitHub Actions
draft: false
repo: https://github.com/KevinFalck/ghostapi-action
marketplace: https://github.com/marketplace/actions/ghostapi-security-scan
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/KevinFalck/ghostapi-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghostapi-security-scan) to find the latest changes.

## Action Summary

The **GhostAPI Security Scan** GitHub Action integrates an AI-powered API security audit into your CI/CD pipeline, ensuring that API specifications meet security standards before deployment. It automates the detection of vulnerabilities in OpenAPI files, assigns a security grade (A-F), and blocks pull requests or deployments if the security grade falls below a specified threshold. This action helps prevent insecure APIs from being deployed by providing actionable insights and detailed scan reports.

## Release notes

# GhostAPI Security Scan v1.0.0

AI-powered API security audit for your CI/CD pipeline. Block insecure deployments automatically.

## Features
- 🔍 Scan OpenAPI specs for OWASP API Top 10 vulnerabilities
- ✅ Pass/fail based on configurable grade threshold (A-F)
- 📊 Get security score (0-100) as output
- 🚫 Block PRs with low security grades

Requirements
CI/CD Pro subscription ($49/mo) - [Get one here](https://ghost-systems.pages.dev/pricing)

## Usage

```yaml
- uses: KevinFalck/ghostapi-action@v1
  with:
    api-key: ${{ secrets.GHOST_API_KEY }}
    openapi-path: ./openapi.json
    min-grade: B
