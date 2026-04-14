---
title: Mipiti Verify
date: 2026-04-14 06:38:35 +00:00
tags:
  - Mipiti
  - GitHub Actions
draft: false
repo: https://github.com/Mipiti/mipiti-verify
marketplace: https://github.com/marketplace/actions/mipiti-verify
version: v0.26.2
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Mipiti/mipiti-verify** to version **v0.26.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mipiti-verify) to find the latest changes.

## Action Summary

The **mipiti-verify** GitHub Action automates the verification of threat model assertions for security controls, ensuring they remain accurate and up-to-date. It facilitates CI/CD pipeline integration by validating security controls locally, in batches, or across entire projects, with optional support for advanced AI-powered semantic checks via Tier 2 providers like OpenAI and Anthropic. Key capabilities include assertion verification, drift detection, audit trail validation, and automated reporting, streamlining security compliance and reducing manual effort.

## What's Changed


---

### Docker Image

Pre-built image for faster CI (pulls cached image instead of building from source):

```yaml
- uses: docker://ghcr.io/mipiti/mipiti-verify:v0.26.2@sha256:c151f69389150215ec0969151452b42d3f309e3444c3ce6f7a48409f2cea345a
```

Image: `ghcr.io/mipiti/mipiti-verify:v0.26.2`
Digest: `sha256:c151f69389150215ec0969151452b42d3f309e3444c3ce6f7a48409f2cea345a`
