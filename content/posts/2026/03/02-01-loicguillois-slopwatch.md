---
title: slopwatch
date: 2026-03-02 01:58:40 +00:00
tags:
  - loicguillois
  - GitHub Actions
draft: false
repo: https://github.com/loicguillois/slopwatch
marketplace: https://github.com/marketplace/actions/slopwatch
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/loicguillois/slopwatch** to version **v0.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slopwatch) to find the latest changes.

## Action Summary

The GitHub Action "slopwatch" is designed to detect and mitigate slopsquatting attacks, where malicious actors register fake packages (often AI-hallucinated names) in dependency registries like npm and PyPI. It automates the scanning of dependency files and evaluates packages using a trust model based on metadata, identifying suspicious or potentially malicious packages to safeguard against supply-chain vulnerabilities. Its key capabilities include statistical analysis of package metadata, severity scoring, and integration into CI pipelines for automated security checks.

## Release notes

## slopwatch v0.1.0

Detect **slopsquatting** attacks — AI-hallucinated packages registered by attackers in your npm and PyPI dependencies.

### Features

- Statistical trust scoring (0-100) based on package metadata — no dictionary of known-bad names
- Supports `package.json`, `requirements.txt`, `pyproject.toml`
- Output formats: terminal (colored), JSON, SARIF
- GitHub Action with automatic SARIF upload to Security tab
- Pre-built binaries for Linux, macOS (Intel + Apple Silicon), Windows

### Usage as GitHub Action

```yaml
- uses: loicguillois/slopwatch@v0.1.0
  with:
    path: "."
    format: "sarif"

