---
title: Mipiti Verify
date: 2026-04-12 22:00:03 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.26.1
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.26.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of security threat model assertions for projects using the Mipiti platform. It ensures that security controls remain consistent and aligned by checking assertions locally or against remote models, using both static analysis and AI-powered verification. Key features include batch verification, drift detection, audit trail validation, and support for tiered verification (local and AI-assisted), making it an effective tool for maintaining robust security practices in CI pipelines.

## What's Changed


---

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.26.1@sha256:8a7993b8bcb729826fe10ea5c7dbd2df806bf4c4a7962e20f38a6f8c82e4a914
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.26.1`
Digest: `sha256:8a7993b8bcb729826fe10ea5c7dbd2df806bf4c4a7962e20f38a6f8c82e4a914`
