---
title: Mipiti Verify
date: 2026-04-23 21:43:07 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.30.2
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.30.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of threat model assertions for security controls using Mipiti. It ensures compliance and prevents security drift by validating assertions locally, in CI pipelines, or through batch processing, with optional integration of AI-based analysis. Key features include model-wide or targeted verification, assertion status reporting, offline verification, and cryptographic auditing of signed reports.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.30.2@sha256:bee3a3964ce5a47775e3bdf27bdc0821d6ead1d0e6973824042019558ebb5508
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.30.2`
Digest: `sha256:bee3a3964ce5a47775e3bdf27bdc0821d6ead1d0e6973824042019558ebb5508`
