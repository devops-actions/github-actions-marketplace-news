---
title: HenKaiPan Security Scan
date: 2026-05-17 06:28:02 +00:00
tags:
  - Dyallab
  - GitHub Actions
draft: false
repo: https://github.com/Dyallab/henkaipan-action
marketplace: https://github.com/marketplace/actions/henkaipan-security-scan
version: v1.4.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Dyallab/henkaipan-action** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/henkaipan-security-scan) to find the latest changes.

## Action Summary

The HenKaiPan Security Scan GitHub Action automates security scanning for applications by integrating SAST, SCA, secrets detection, and vulnerability assessments into GitHub Actions CI/CD pipelines. Powered by the HenKaiPan security posture manager, it identifies and reports security risks like vulnerabilities, sensitive information exposure, and dependency issues, with the ability to fail builds based on severity thresholds. The action also provides features such as scanning results in the GitHub Actions summary and optional pull request comments to streamline security reviews.

## What's Changed

## v1.4.0 — PR Comment Fix + Step Summary

### Fixes

- Fixed false "Comment posted successfully" — curl without `-f` returned 0 on HTTP 4xx/5xx
- Now checks actual HTTP status code from GitHub API response
- Shows real error code when posting fails

### Features

- New **Actions Step Summary** — scan results now appear in the GitHub Actions summary tab
- PR comments (on `pull_request` events) + step summary (all events) = dual visibility
