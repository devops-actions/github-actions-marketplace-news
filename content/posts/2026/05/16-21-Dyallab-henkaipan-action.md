---
title: HenKaiPan Security Scan
date: 2026-05-16 21:27:35 +00:00
tags:
  - Dyallab
  - GitHub Actions
draft: false
repo: https://github.com/Dyallab/henkaipan-action
marketplace: https://github.com/marketplace/actions/henkaipan-security-scan
version: v1.2.1
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Dyallab/henkaipan-action** to version **v1.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/henkaipan-security-scan) to find the latest changes.

## Action Summary

The HenKaiPan Security Scan GitHub Action integrates automated security scanning into your CI/CD pipeline by leveraging the HenKaiPan security posture manager. It performs multiple types of scans, including static application security testing (SAST), software composition analysis (SCA), secret detection, and vulnerability scanning, helping developers identify and address security issues early in the development process. The action supports customizable scan configurations, automated pull request comments, and detailed result reporting, streamlining security checks within GitHub workflows.

## What's Changed

## v1.2.1 — Fix GITHUB_OUTPUT permission denied

### Fixes

- Removed `USER action` from Dockerfile — container now runs as root to write GitHub Action outputs to `/github/file_commands/`
