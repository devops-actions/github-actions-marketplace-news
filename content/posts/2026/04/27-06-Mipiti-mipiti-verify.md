---
title: Mipiti Verify
date: 2026-04-27 06:36:58 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.31.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.31.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The **mipiti-verify** GitHub Action automates the verification of threat model assertions for Mipiti, ensuring that security controls remain accurate and do not drift over time. It provides capabilities for local, CI, and offline assertion verification, supports AI-driven analysis using providers like OpenAI and Anthropic, and includes tools for auditing signed reports. This action streamlines security validation workflows, enabling teams to maintain consistent and automated compliance checks throughout the development lifecycle.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.31.0@sha256:a65d43cd60249c4b7d1e8452139a8db47aa389c4fa16de2448125544585f069d
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.31.0`
Digest: `sha256:a65d43cd60249c4b7d1e8452139a8db47aa389c4fa16de2448125544585f069d`
