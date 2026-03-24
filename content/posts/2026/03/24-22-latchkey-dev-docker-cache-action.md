---
title: Latchkey Docker Cache Build
date: 2026-03-24 22:04:31 +00:00
tags:
  - latchkey-dev
  - GitHub Actions
draft: false
repo: https://github.com/latchkey-dev/docker-cache-action
marketplace: https://github.com/marketplace/actions/latchkey-docker-cache-build
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/latchkey-dev/docker-cache-action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/latchkey-docker-cache-build) to find the latest changes.

## Action Summary

The Latchkey Docker Cache Action automates Docker image builds with layer caching by leveraging Amazon Elastic Container Registry (ECR) on Latchkey-managed runners. It detects and configures caching flags to enable efficient builds across ephemeral runner instances, reducing build times and improving performance. On non-Latchkey runners, it gracefully falls back to standard Docker builds without caching.

## Release notes

## Latchkey Docker Cache Action v1

Build Docker images with automatic ECR-based layer caching on Latchkey managed runners.

### Usage

```yaml
- uses: latchkey-dev/docker-cache-action@v1
  with:
    context: .
    tags: myapp:latest
    push: true
```

### Features

- Auto-detects `ECR_CACHE_REPO` from Latchkey runner environment
- Configures BuildKit `--cache-from` and `--cache-to` for ECR registry cache
- Graceful degradation on non-Latchkey runners (builds normally without cache)
- Supports: `context`, `dockerfile`, `tags`, `push`, `build-args`, `target`, `platforms`, `cache-mode`, `cache-tag`, `extra-cache-from`, `extra-cache-to`
- Outputs: `cache-configured`, `image-digest`
- Masks build-arg values in logs to prevent secret leakage
- Auto-loads images into local daemon for non-push single-platform builds
