---
title: Mipiti Verify
date: 2026-07-20 07:32:15 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.48.0
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  Mipiti-verify is a CI verification tool for Mipiti threat model assertions that automates security controls, ensuring they never drift. It supports both OpenAI and Anthropic AI providers to verify assertions against models, providing options for local Tier 1 verification and offline batch verification from JSON files. The tool also offers features like list, report, audit, and check commands to manage and verify Mipiti assertions effectively.
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.48.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

Mipiti-verify is a CI verification tool for Mipiti threat model assertions that automates security controls, ensuring they never drift. It supports both OpenAI and Anthropic AI providers to verify assertions against models, providing options for local Tier 1 verification and offline batch verification from JSON files. The tool also offers features like list, report, audit, and check commands to manage and verify Mipiti assertions effectively.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.48.0@sha256:ed46a5641c48615a8ec36e215c8b0d6ba3b818643a88bb6ab0bd90e7913cf9ce
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.48.0`
Digest: `sha256:ed46a5641c48615a8ec36e215c8b0d6ba3b818643a88bb6ab0bd90e7913cf9ce`
