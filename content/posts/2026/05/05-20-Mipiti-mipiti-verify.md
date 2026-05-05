---
title: Mipiti Verify
date: 2026-05-05 20:53:58 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.35.1
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.35.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

**Summary:**  
The `mipiti-verify` GitHub Action automates the verification of threat model assertions for ensuring the alignment of security controls with defined models. It streamlines tasks such as running local or API-based checks, detecting drifts in security controls, and validating signed reports for integrity and provenance. This tool helps organizations maintain compliance and reduce the risk of security gaps in their systems by integrating automated checks into CI pipelines.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.35.1@sha256:03ca7c3f1207eae994d2794021c903ada0f6f5d19704af1aaf71dd5795c5ee93
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.35.1`
Digest: `sha256:03ca7c3f1207eae994d2794021c903ada0f6f5d19704af1aaf71dd5795c5ee93`
