---
title: Artifact Policy Engine
date: 2026-03-25 06:00:38 +00:00
tags:
  - Helixar-AI
  - GitHub Actions
draft: false
repo: https://github.com/Helixar-AI/ReleaseGuard
marketplace: https://github.com/marketplace/actions/artifact-policy-engine
version: v0.1.5
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Helixar-AI/ReleaseGuard** to version **v0.1.5**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/artifact-policy-engine) to find the latest changes.

## Action Summary

ReleaseGuard is an open-source artifact security engine designed to secure and validate final build outputs in software development pipelines. It automates artifact scanning for sensitive data, applies hardening transforms, generates SBOMs, signs and attests artifacts, and enforces release policies, helping to prevent issues like leaked secrets, metadata, or unsigned executables. Key capabilities include advanced scanning, reproducible hardening, obfuscation, DRM, and compliance with security standards, addressing gaps left by traditional supply-chain security tools.

## Release notes

## ReleaseGuard v0.1.5

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
* e3b02c8e16d336cb9e8d241176ed225365ad5f19 Merge pull request #5 from Helixar-AI/fix/upload-hidden-evidence-dir
* 4bc8a05e33e92670f099f7d8a3e3d3863b5c1f0f fix: set include-hidden-files: true on evidence bundle upload

**Full Changelog**: https://github.com/Helixar-AI/ReleaseGuard/compare/v0.1.4...v0.1.5


