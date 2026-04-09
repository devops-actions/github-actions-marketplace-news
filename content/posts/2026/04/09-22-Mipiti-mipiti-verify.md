---
title: Mipiti Verify
date: 2026-04-09 22:02:36 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.23.3
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.23.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of security controls and threat model assertions in CI pipelines using both local static checks (Tier 1) and AI-based semantic analysis (Tier 2). It ensures security controls remain accurate and up-to-date, preventing drift and identifying regressions. Key capabilities include batch verification, drift detection, signed report auditing, and integration with AI providers like OpenAI for advanced reasoning.

## What's Changed


---

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.23.3@sha256:557d4fbc83ead970561509fbe7c2e66efb386ece2f129ee1dc8bbefcab9bfd10
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.23.3`
Digest: `sha256:557d4fbc83ead970561509fbe7c2e66efb386ece2f129ee1dc8bbefcab9bfd10`
