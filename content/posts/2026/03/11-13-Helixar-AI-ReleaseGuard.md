---
title: Artifact Policy Engine
date: 2026-03-11 13:36:17 +00:00
tags:
  - Helixar-AI
  - GitHub Actions
draft: false
repo: https://github.com/Helixar-AI/ReleaseGuard
marketplace: https://github.com/marketplace/actions/artifact-policy-engine
version: v0.1.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Helixar-AI/ReleaseGuard** to version **v0.1.2**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/artifact-policy-engine) to find the latest changes.

## Action Summary

ReleaseGuard is an open-source artifact security engine designed to secure and validate build outputs before distribution. It automates scanning for sensitive or risky content, applies hardening transforms, generates SBOMs, signs and attests artifacts, and enforces release policies within CI/CD pipelines. By focusing on final distributables, it addresses supply-chain vulnerabilities often missed by other tools, ensuring artifacts are safe, compliant, and production-ready.

## Release notes

## ReleaseGuard v0.1.2

The artifact policy engine — scan, harden, sign, and verify release artifacts before they ship.

### Install

```bash
# macOS / Linux (shell installer)
curl -sSfL https://raw.githubusercontent.com/Helixar-AI/ReleaseGuard/main/scripts/install.sh | sh

# Homebrew
brew install Helixar-AI/tap/releaseguard
```

### GitHub Action

```yaml
- uses: Helixar-AI/ReleaseGuard@v0
  with:
    path: ./dist
```

## Changelog
* 229a90dff5a31d7805e5df43bb9230f9fe5ec75c fix(skill): address ClawHub security scan flags
* 3fda026857ba333e7fde7f1559c7e1be8cf3f929 fix: rename action to 'Artifact Policy Engine' for Marketplace uniqueness
* c58b313a3c4314ae1c57d303f8ccc388b2684e3b feat: add OpenClaw skill for ClawHub

**Full Changelog**: https://github.com/Helixar-AI/ReleaseGuard/compare/v0.1.1...v0.1.2


