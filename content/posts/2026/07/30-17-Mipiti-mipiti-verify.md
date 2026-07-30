---
title: Mipiti Verify
date: 2026-07-30 17:36:05 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.48.3
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  The `mipiti-verify` GitHub Action automates the verification of threat model assertions by leveraging AI-based models from OpenAI and Anthropic. It can verify all models in a workspace, run a single model locally, check individual assertions in codebases offline, process JSON files for batch verification, list pending assertions, report verification results, and independently audit signed reports using ECDSA signatures. The action ensures that security controls are never out of date by automatically re-evaluating them against the latest models when necessary.
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.48.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of threat model assertions by leveraging AI-based models from OpenAI and Anthropic. It can verify all models in a workspace, run a single model locally, check individual assertions in codebases offline, process JSON files for batch verification, list pending assertions, report verification results, and independently audit signed reports using ECDSA signatures. The action ensures that security controls are never out of date by automatically re-evaluating them against the latest models when necessary.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.48.3@sha256:188ce2cce62c99e3cc3eff1f81a2652916a8aa8aa319365a4aee089517e92a10
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.48.3`
Digest: `sha256:188ce2cce62c99e3cc3eff1f81a2652916a8aa8aa319365a4aee089517e92a10`
