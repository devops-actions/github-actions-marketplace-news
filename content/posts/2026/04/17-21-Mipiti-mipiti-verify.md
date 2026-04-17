---
title: Mipiti Verify
date: 2026-04-17 21:57:11 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.26.7
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.26.7**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of security control assertions against threat models, ensuring they remain accurate and up-to-date. It provides capabilities for local, CI-based, and AI-enhanced validation, helping teams detect security drift, verify compliance, and ensure the sufficiency of implemented controls. Key features include support for local and API-based checks, integration with AI providers for advanced verification, and tools for auditing signed reports.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.26.7@sha256:27d6794cf489bc3f10ee67453c2c6fa09106aef46e29b04292175af7664c427f
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.26.7`
Digest: `sha256:27d6794cf489bc3f10ee67453c2c6fa09106aef46e29b04292175af7664c427f`
