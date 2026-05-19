---
title: Mipiti Verify
date: 2026-05-19 15:23:34 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.44.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.44.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action provides automated verification for Mipiti threat model assertions, ensuring security controls remain aligned and do not drift. It streamlines tasks like validating security assertions, auditing cryptographic signatures, and detecting configuration or dependency issues in CI pipelines. Key capabilities include local and API-driven assertion checks, batch verification, detailed reporting, and secure auditing of signed reports to ensure integrity and trust in the verification process.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.44.0@sha256:412151f8ac01afdad4a68678089e5315b143909cff42131d5ddea0df44fbba69
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.44.0`
Digest: `sha256:412151f8ac01afdad4a68678089e5315b143909cff42131d5ddea0df44fbba69`
