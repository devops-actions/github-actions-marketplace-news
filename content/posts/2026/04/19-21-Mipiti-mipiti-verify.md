---
title: Mipiti Verify
date: 2026-04-19 21:43:16 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.26.9
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.26.9**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of threat model assertions for the Mipiti security framework, ensuring that security controls remain consistent and effective. It enables local, CI, and batch validation of assertions using both static analysis and AI-powered semantic verification, while also supporting drift detection, signed report auditing, and granular control over verification scope. This action streamlines security verification workflows, reducing manual effort and enhancing confidence in system compliance.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.26.9@sha256:172f26d50c79d7cfcc876fc8dc7c0eb96b6bd03153b4000f1335880e8185a921
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.26.9`
Digest: `sha256:172f26d50c79d7cfcc876fc8dc7c0eb96b6bd03153b4000f1335880e8185a921`
