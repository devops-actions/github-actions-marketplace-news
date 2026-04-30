---
title: Mipiti Verify
date: 2026-04-30 14:12:42 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.33.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.33.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

Mipiti-Verify is a GitHub Action designed to automate the verification of threat model assertions and security controls in CI pipelines. It ensures compliance and prevents drift by validating assertions locally, in batch, or against AI-assisted models. Key capabilities include verifying code-level security controls, auditing signed reports, and leveraging AI models for advanced verification, streamlining security assurance processes for developers and DevSecOps teams.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.33.0@sha256:140193a5a7614cd95285bd6be41d79b08cd9d6fe9641ccf62a93ff114678b018
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.33.0`
Digest: `sha256:140193a5a7614cd95285bd6be41d79b08cd9d6fe9641ccf62a93ff114678b018`
