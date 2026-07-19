---
title: Mipiti Verify
date: 2026-07-19 22:15:35 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.47.3
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  Mipiti-verify automates the verification of Mipiti threat model assertions using AI models, offering local and online verification options. It supports OpenAI and Anthropic models for Tier 2 verification and provides a command-line interface for running and checking individual assertions locally. The action also includes features to list and report on pending and verified assertions, as well as audit signed reports for integrity and provenance.
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.47.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

Mipiti-verify automates the verification of Mipiti threat model assertions using AI models, offering local and online verification options. It supports OpenAI and Anthropic models for Tier 2 verification and provides a command-line interface for running and checking individual assertions locally. The action also includes features to list and report on pending and verified assertions, as well as audit signed reports for integrity and provenance.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.47.3@sha256:92cd7948a5c902adfc16d844916569a9c6a54d18e01e62ef95de38d1fbdd6fd6
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.47.3`
Digest: `sha256:92cd7948a5c902adfc16d844916569a9c6a54d18e01e62ef95de38d1fbdd6fd6`
