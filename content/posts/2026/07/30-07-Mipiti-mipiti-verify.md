---
title: Mipiti Verify
date: 2026-07-30 07:04:40 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.48.2
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  This GitHub Action, `mipiti-verify`, automates security verification of threat model assertions using AI-powered models from OpenAI and Anthropic. It supports both open-source (Tier 1) and commercial (Tiers 2) providers, including GPT-4o-mini for OpenAI and Anthropic's Claude model. The action provides commands to run verification against models locally or remotely, check single assertions, batch verify assertions from a JSON file, list pending assertions, show verification results, audit signed reports, and bundle binding verification. It also includes detailed output modes and an audit envelope contract that ensures the trustworthiness of the verification process.
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.48.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

This GitHub Action, `mipiti-verify`, automates security verification of threat model assertions using AI-powered models from OpenAI and Anthropic. It supports both open-source (Tier 1) and commercial (Tiers 2) providers, including GPT-4o-mini for OpenAI and Anthropic's Claude model. The action provides commands to run verification against models locally or remotely, check single assertions, batch verify assertions from a JSON file, list pending assertions, show verification results, audit signed reports, and bundle binding verification. It also includes detailed output modes and an audit envelope contract that ensures the trustworthiness of the verification process.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.48.2@sha256:e88a9d007c75ad7e738d881ac76a4cc5d16faadc28c37bde0e92db5e2edeb348
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.48.2`
Digest: `sha256:e88a9d007c75ad7e738d881ac76a4cc5d16faadc28c37bde0e92db5e2edeb348`
