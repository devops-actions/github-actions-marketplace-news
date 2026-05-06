---
title: Mipiti Verify
date: 2026-05-06 15:05:19 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.37.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.37.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action provides automated verification of threat model assertions for Mipiti-based security controls, ensuring they remain aligned and free from drift. It streamlines tasks such as validating assertions locally or in CI pipelines, auditing signed reports, and performing batch verification from JSON files. Key capabilities include integration with Tier 2 large language models for enhanced verification, support for API key-based scoped access, and detailed reporting on control verification and drift detection.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.37.0@sha256:ef8c7e670e9750a839dd29902f3b235cefa035bec15272d2c2f04ea0f51b0e16
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.37.0`
Digest: `sha256:ef8c7e670e9750a839dd29902f3b235cefa035bec15272d2c2f04ea0f51b0e16`
