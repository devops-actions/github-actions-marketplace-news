---
title: Mipiti Verify
date: 2026-05-29 22:47:39 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.45.2
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.45.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

**Summary:**  
The `mipiti-verify` GitHub Action automates the validation of security controls and threat model assertions in CI workflows, ensuring they remain accurate and up-to-date. It provides capabilities for verifying assertions locally, in batch, or via API, detecting configuration drift, and generating signed audit reports to validate the integrity and provenance of security verifications. This tool streamlines compliance and security checks, reducing manual effort and building trust in security practices.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.45.2@sha256:bca0219924538c25a3f4b2317d10b0ad08a47e2cfacf34de921ae3c3d8244d5d
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.45.2`
Digest: `sha256:bca0219924538c25a3f4b2317d10b0ad08a47e2cfacf34de921ae3c3d8244d5d`
