---
title: UNPWNED Security Scan
date: 2026-04-21 22:00:56 +00:00
tags:
  - razazu
  - GitHub Actions
draft: false
repo: https://github.com/razazu/unpwned-action
marketplace: https://github.com/marketplace/actions/unpwned-security-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/razazu/unpwned-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unpwned-security-scan) to find the latest changes.

## Action Summary

The **UNPWNED Security Scan GitHub Action** automates security checks for web applications by scanning domains for vulnerabilities, such as missing security headers, expired certificates, exposed sensitive files, and misconfigured DNS or CORS policies. It runs on every push or pull request and can fail builds based on critical findings, helping developers catch security regressions early. Key features include generating security scores, identifying data breaches, and optionally commenting results on pull requests.

## What's Changed

First public release of the UNPWNED Security Scan GitHub Action.

## What it does

Runs the [UNPWNED CLI](https://github.com/razazu/unpwned-cli) against your domain on every push or pull request. Surfaces a score, grade, and severity breakdown in the Actions tab, and fails the workflow when findings exceed your configured threshold.

## Checks included

Security Headers, SSL/TLS, DNS Security, Cookie Security, CORS Policy, Sensitive Files, Tech Stack, Data Breaches.

## Quick start

` + '```yaml' + `
- uses: razazu/unpwned-action@v1
  with:
    domain: yoursite.com
` + '```' + `

See the [README](https://github.com/razazu/unpwned-action#readme) for full input/output documentation and examples.

## Want more?

The full [unpwned.io](https://www.unpwned.io) platform adds 700+ checks, AI fix prompts, continuous monitoring, PDF reports, and GitHub Issues integration.
