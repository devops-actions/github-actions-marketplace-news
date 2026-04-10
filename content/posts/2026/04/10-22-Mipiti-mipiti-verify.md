---
title: Mipiti Verify
date: 2026-04-10 22:01:44 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.25.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.25.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action provides automated verification of threat model assertions to ensure security controls remain consistent and effective in CI pipelines. It enables local and CI-based checks for codebase security, verifies assertions against AI models for deeper analysis, and offers features like drift detection, signed report auditing, and batch assertion validation. This action streamlines security verification processes, reducing manual effort and enhancing the reliability of security controls.

## What's Changed


---

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.25.0@sha256:0effca61aeee5c3591de916c2befd2a5b8b894030ff26a7e584ae02693d6a5bc
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.25.0`
Digest: `sha256:0effca61aeee5c3591de916c2befd2a5b8b894030ff26a7e584ae02693d6a5bc`
