---
title: Mipiti Verify
date: 2026-07-19 14:46:15 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.47.0
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  This GitHub Action, mipiti-verify, automates the verification of threat model assertions for Mipiti tools. It can verify assertions against OpenAI or Anthropic models or check them locally using Tier 1 controls. It supports multiple commands including running all models, verifying a single assertion, checking assertions from a JSON file, listing pending assertions, reporting results, and auditing signed reports. The audit envelope contract ensures the integrity and authenticity of the verification results by leveraging public cryptographic chains and signatures.
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.47.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

This GitHub Action, mipiti-verify, automates the verification of threat model assertions for Mipiti tools. It can verify assertions against OpenAI or Anthropic models or check them locally using Tier 1 controls. It supports multiple commands including running all models, verifying a single assertion, checking assertions from a JSON file, listing pending assertions, reporting results, and auditing signed reports. The audit envelope contract ensures the integrity and authenticity of the verification results by leveraging public cryptographic chains and signatures.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.47.0@sha256:12dff163f7c7f8e8b03d313b449bf53b55555f73bec5faed1fbd291d85e3a86f
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.47.0`
Digest: `sha256:12dff163f7c7f8e8b03d313b449bf53b55555f73bec5faed1fbd291d85e3a86f`
