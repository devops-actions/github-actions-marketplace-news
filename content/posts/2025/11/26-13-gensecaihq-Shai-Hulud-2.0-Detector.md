---
title: Shai-Hulud 2.0 Detector
date: 2025-11-26 13:11:30 +00:00
tags:
  - gensecaihq
  - GitHub Actions
draft: false
repo: https://github.com/gensecaihq/Shai-Hulud-2.0-Detector
marketplace: https://github.com/marketplace/actions/shai-hulud-2-0-detector
version: v1.0.0
dependentsNumber: "7"
---


Version updated for **https://github.com/gensecaihq/Shai-Hulud-2.0-Detector** to version **v1.0.0**.
- This action is used across all versions by **7** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shai-hulud-2-0-detector) to find the latest changes.

## Release notes

# Shai-Hulud 2.0 Detector v1.0.0

Protect your projects from the Shai-Hulud 2.0 npm supply chain attack.

## Features

### Package Detection
- Database of **790+ compromised packages** from the November 2025 attack
- Scans `package.json`, `package-lock.json`, `yarn.lock`, and `pnpm-lock.yaml`
- Monorepo support with automatic subdirectory scanning

### Security Findings Detection
- **Malicious scripts**: `setup_bun.js`, `bun_environment.js` in install hooks
- **TruffleHog activity**: Credential scanning patterns
- **SHA1HULUD runners**: Malicious GitHub Actions self-hosted runners
- **Secrets exfiltration**: `actionsSecrets.json` and other output files
- **Malicious workflows**: `formatter_*.yml`, `discussion.yaml` patterns
- **Webhook exfiltration**: `webhook.site` endpoints and known malicious UUIDs
- **Shai-Hulud references**: Repository names, git branches, remote URLs

### Output Formats
- **Text**: Human-readable console output
- **JSON**: Machine-parseable results
- **SARIF**: GitHub Security tab integration

### CI/CD Integration
- GitHub Actions (recommended)
- GitLab CI
- Jenkins
- Azure DevOps
- CircleCI

## Quick Start

```yaml
- uses: gensecaihq/Shai-Hulud-2.0-Detector@v1
  with:
    fail-on-critical: true
```

## Affected Organizations

Zapier, ENS Domains, PostHog, AsyncAPI, Postman, Voiceflow, BrowserBase, Oku UI, and many more.

## Links

- [Full Documentation](https://github.com/gensecaihq/Shai-Hulud-2.0-Detector#readme)
- [Report Compromised Package](https://github.com/gensecaihq/Shai-Hulud-2.0-Detector/issues/new?template=package-report.yml)
- [Report False Positive](https://github.com/gensecaihq/Shai-Hulud-2.0-Detector/issues/new?template=false-positive.yml)
