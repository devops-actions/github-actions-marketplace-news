---
title: Mipiti Verify
date: 2026-04-24 05:56:49 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.30.6
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.30.6**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of threat model assertions for projects using the Mipiti framework, ensuring security controls remain consistent and up-to-date. It provides features for validating assertions locally or via an API, detecting drift in security controls, and generating detailed verification reports. This action streamlines CI workflows by enabling automated, scalable security checks, including integration with Tier 2 AI providers for advanced analysis.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.30.6@sha256:f92342c06a0eea7fe9fb31eafbe94028f541cb60b9062d0b446ceb0ab6ba1fa9
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.30.6`
Digest: `sha256:f92342c06a0eea7fe9fb31eafbe94028f541cb60b9062d0b446ceb0ab6ba1fa9`
