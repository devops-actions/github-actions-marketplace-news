---
title: Mipiti Verify
date: 2026-05-01 21:49:52 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.34.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.34.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of threat model assertions for security controls using Mipiti's platform. It streamlines the process of ensuring that security controls are implemented and remain consistent by enabling both local and CI-based verification, including integration with AI models for advanced checks. Key features include automated assertion validation, drift detection, signed audit reports, and support for offline and batch verification workflows.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.34.0@sha256:2ed259351bc9c1b85ba7388ea665803f50d3488e5e8d3477bda52a068abab17a
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.34.0`
Digest: `sha256:2ed259351bc9c1b85ba7388ea665803f50d3488e5e8d3477bda52a068abab17a`
