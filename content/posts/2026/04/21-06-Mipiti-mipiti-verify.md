---
title: Mipiti Verify
date: 2026-04-21 06:28:57 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.29.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.29.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The `mipiti-verify` GitHub Action automates the verification of threat model assertions for security controls using the Mipiti platform. It streamlines tasks such as validating assertions locally, in CI pipelines, or offline, leveraging AI-powered analysis for advanced checks. This action helps ensure security controls remain accurate, detect configuration drift, and maintain compliance by providing capabilities like batch verification, drift detection, and signed audit report validation.

## What's Changed

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.29.0@sha256:e580e0fb5dbe68acc9cfea588fa5574a5529430422714bad975ce136fb0531af
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.29.0`
Digest: `sha256:e580e0fb5dbe68acc9cfea588fa5574a5529430422714bad975ce136fb0531af`
