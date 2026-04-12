---
title: Mipiti Verify
date: 2026-04-12 06:25:26 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.26.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.26.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of threat model assertions in CI/CD pipelines, ensuring the accuracy and consistency of security controls. It supports both local and cloud-based verification of assertions using static analysis and optional AI-powered semantic checks, helping to detect configuration drift, validate control sufficiency, and ensure compliance with security requirements. Key features include batch verification, signed report auditing, and the ability to perform granular or full-workspace validations.

## What's Changed


---

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.26.0@sha256:9eb48bd269fb8a188cd1e66a3cbd6a6d8391f801dcc9efb23f3e0ac9247c796c
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.26.0`
Digest: `sha256:9eb48bd269fb8a188cd1e66a3cbd6a6d8391f801dcc9efb23f3e0ac9247c796c`
