---
title: Mipiti Verify
date: 2026-04-29 14:41:45 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.32.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.32.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action is designed to automate the verification of security controls and threat model assertions in CI pipelines. It ensures that security measures remain consistent and detects drift or regressions across codebases by validating local and API-based assertions, analyzing models, and generating detailed reports. Key capabilities include offline and AI-assisted verification, batch processing, signature auditing, and integration with GitHub workflows for streamlined security compliance.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.32.0@sha256:affc440d2d6f1e76c549725ad95bab275e86c4ccc86b37be454027776f44bf6a
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.32.0`
Digest: `sha256:affc440d2d6f1e76c549725ad95bab275e86c4ccc86b37be454027776f44bf6a`
