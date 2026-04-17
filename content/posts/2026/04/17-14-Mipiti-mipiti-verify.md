---
title: Mipiti Verify
date: 2026-04-17 14:11:24 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.26.4
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.26.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of security controls and threat model assertions in CI/CD pipelines, ensuring compliance and mitigating configuration drift. It provides capabilities for local and batch verification, API-driven model validation, and integration with AI providers for advanced semantic checks. Additionally, it supports reporting, auditing, and integrity validation of verification results.

## What's Changed


---

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.26.4@sha256:823b1526076178579d1eda84f26784ce192d7538b58b61a402ac0f9c6a454edd
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.26.4`
Digest: `sha256:823b1526076178579d1eda84f26784ce192d7538b58b61a402ac0f9c6a454edd`
