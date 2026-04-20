---
title: Mipiti Verify
date: 2026-04-20 06:26:20 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.26.10
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.26.10**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of security threat model assertions in CI pipelines, ensuring compliance with defined security controls and detecting configuration drift. It provides capabilities like local and CI-based assertion checks, batch verification, signed report auditing, and integration with AI providers for advanced semantic verification. This action streamlines security validation processes and enhances codebase integrity across development workflows.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.26.10@sha256:7ba571a4daadfc04e6843f042135cb3c80e5f4d57549a1a3ce4abf8cd816e5c6
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.26.10`
Digest: `sha256:7ba571a4daadfc04e6843f042135cb3c80e5f4d57549a1a3ce4abf8cd816e5c6`
