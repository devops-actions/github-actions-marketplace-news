---
title: Mipiti Verify
date: 2026-07-29 23:03:17 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.48.1
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  This GitHub Action, `mipiti-verify`, automates the verification of Mipiti threat model assertions against various AI models. It supports OpenAI and Anthropic models, allowing security controls to remain up-to-date without manual intervention. The action can verify all models in a workspace or a single model, check local code for specific assertion types, batch verify assertions from a JSON file, list pending assertions, report verification results, audit signed reports, and manage bundle bindings.
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.48.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

This GitHub Action, `mipiti-verify`, automates the verification of Mipiti threat model assertions against various AI models. It supports OpenAI and Anthropic models, allowing security controls to remain up-to-date without manual intervention. The action can verify all models in a workspace or a single model, check local code for specific assertion types, batch verify assertions from a JSON file, list pending assertions, report verification results, audit signed reports, and manage bundle bindings.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.48.1@sha256:80f0d10150e91db66be59147142c07f4c3eb97c90357651c6ac6cc69a6487793
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.48.1`
Digest: `sha256:80f0d10150e91db66be59147142c07f4c3eb97c90357651c6ac6cc69a6487793`
