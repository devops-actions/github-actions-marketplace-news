---
title: Docker Build and Push Multi-Platform and Registry
date: 2026-04-30 06:03:38 +00:00
tags:
  - afreisinger
  - GitHub Actions
draft: false
repo: https://github.com/afreisinger/build-push-action
marketplace: https://github.com/marketplace/actions/docker-build-and-push-multi-platform-and-registry
version: v1.6.0
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/afreisinger/build-push-action** to version **v1.6.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-build-and-push-multi-platform-and-registry) to find the latest changes.

## Action Summary

This GitHub Action automates the process of building and pushing Docker images to Docker Hub and GitHub Container Registry (GHCR), supporting multi-platform builds and OCI-compliant metadata generation. It streamlines CI/CD workflows by enabling dynamic tagging, optimized caching, and flexible registry publishing, making it ideal for reliable and efficient Docker image management. Key features include multi-architecture support, advanced metadata labeling, and post-push validation for enhanced performance and compliance.

## What's Changed

- merge: PR #19 (bf41449)
- merge: PR #18 (a9e761d)
- merge: PR #17 (91988ed)
- merge: PR #16 (d7c221b)
- merge: PR #15 (6247910)
- refactor(tags): reduce noise — keep only latest, tag, and version (d0c8f7b)
- :arrow_up: chore(deps): Bump docker/login-action from 3 to 4 (71e85e1)
- :arrow_up: chore(deps): Bump docker/setup-qemu-action from 3 to 4 (b8e19c2)
- :arrow_up: chore(deps): Bump falti/dotenv-action from 1.1.5 to 1.2.0 (02dc47e)
- :arrow_up: chore(deps): Bump docker/build-push-action (b6dd4ba)
