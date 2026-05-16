---
title: Docker Build & Push to GHCR
date: 2026-05-16 13:56:59 +00:00
tags:
  - Ts-sound
  - GitHub Actions
draft: false
repo: https://github.com/Ts-sound/docker-publish-ghcr
marketplace: https://github.com/marketplace/actions/docker-build-push-to-ghcr
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Ts-sound/docker-publish-ghcr** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-build-push-to-ghcr) to find the latest changes.

## Action Summary

The `docker-publish-ghcr` GitHub Action automates the process of building Docker images and pushing them to GitHub Container Registry (ghcr.io). It simplifies Docker image management by providing features like automatic tag management, multi-platform builds, build cache optimization, and QEMU-based cross-platform support. This action is ideal for streamlining CI/CD workflows requiring efficient Docker image creation and deployment.

## What's Changed

- feat: add support for Git submodules in action inputs and README (2edc477)
- ci: update test.yml to use published action @v1 (7814eb1)
- docs: update image_name to repo-only format and add output examples (98b53e2)
- chore: update build-push-action to v7 for Node.js 24 (6fd488e)
- chore: update actions to latest versions for Node.js 24 support (2aeff3b)
- docs: add permissions config to examples (ef596be)
- fix (47a4b79)
- fix: handle owner lowercase and image naming for GHCR (3e43f52)
- fix: convert git tag to lowercase for docker image tag (cab7a06)
- ci: trigger workflow only on tags (7dca4fe)
