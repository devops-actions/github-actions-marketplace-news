---
title: Mipiti Verify
date: 2026-04-24 13:57:48 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.30.7
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.30.7**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of security threat model assertions in CI/CD pipelines, ensuring that implemented security controls remain effective and up-to-date. It supports both local and API-driven validation, leverages AI models for advanced checks, and provides features like drift detection, signed audit reporting, and batch processing to streamline compliance and security assurance workflows. This action simplifies the process of maintaining robust security practices across development environments.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.30.7@sha256:6cd4a252d59f58b78fbb05817b15888d7e630bf3e1ce1673f480e35c04ef4337
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.30.7`
Digest: `sha256:6cd4a252d59f58b78fbb05817b15888d7e630bf3e1ce1673f480e35c04ef4337`
