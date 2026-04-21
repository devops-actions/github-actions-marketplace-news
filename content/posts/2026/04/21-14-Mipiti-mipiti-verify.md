---
title: Mipiti Verify
date: 2026-04-21 14:27:23 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.30.1
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.30.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

This GitHub Action, **mipiti-verify**, automates the verification of security controls and threat model assertions within CI pipelines using the Mipiti framework. It ensures that security controls remain up-to-date and detects configuration drift by verifying assertions locally, in batch mode, or against AI-assisted models. Key capabilities include automated verification, signed report auditing, and integration with AI models for enhanced analysis.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.30.1@sha256:6a202cc6994e8425dc216593bc23c7685d552ab68486bbddba28007d1ce53544
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.30.1`
Digest: `sha256:6a202cc6994e8425dc216593bc23c7685d552ab68486bbddba28007d1ce53544`
