---
title: Mipiti Verify
date: 2026-05-03 13:54:05 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.35.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.35.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of threat model assertions for the Mipiti security platform, ensuring that security controls remain consistent and free from drift. It provides tools for validating individual assertions, running batch verifications, checking for regressions, and auditing signed reports, leveraging AI models for advanced checks when needed. This action streamlines the continuous integration process by enabling automated security control validation and reporting within CI/CD pipelines.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.35.0@sha256:83adcfe73dedb6fa7742fb6bca7fafcf460814fa295c1a276ceddf90b0ed0d96
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.35.0`
Digest: `sha256:83adcfe73dedb6fa7742fb6bca7fafcf460814fa295c1a276ceddf90b0ed0d96`
