---
title: Mipiti Verify
date: 2026-04-26 13:38:53 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.30.8
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.30.8**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of threat model assertions for Mipiti, ensuring that security controls remain consistent and do not drift. It offers functionality to validate assertions locally, in CI pipelines, and offline, leveraging AI models for advanced checks while integrating with version control systems to track changes. Key capabilities include batch verification, signed report auditing, drift detection, and comprehensive reporting on verification results.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.30.8@sha256:55ba5294dd9c732601a5ac7439c982dde2fcf70154cbf8a8ccee7b8acde8dc00
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.30.8`
Digest: `sha256:55ba5294dd9c732601a5ac7439c982dde2fcf70154cbf8a8ccee7b8acde8dc00`
