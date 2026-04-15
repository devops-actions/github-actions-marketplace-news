---
title: Mipiti Verify
date: 2026-04-15 06:21:21 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.26.3
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.26.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of security controls and threat model assertions for the Mipiti platform, ensuring that they remain up-to-date and aligned with defined models. It supports local checks, CI pipeline integration, and advanced semantic validation using AI providers like OpenAI and Anthropic. Key features include drift detection, batch verification, signed report auditing, and flexible scope options, streamlining compliance and security analysis workflows.

## What's Changed


---

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.26.3@sha256:165c9f5aa75cc21a0180e810137018b74fabf698c91936acd21735b7bc8c6b18
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.26.3`
Digest: `sha256:165c9f5aa75cc21a0180e810137018b74fabf698c91936acd21735b7bc8c6b18`
