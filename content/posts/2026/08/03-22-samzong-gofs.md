---
title: GoFS File Server
date: 2026-08-03 22:43:15 +00:00
tags:
  - samzong
  - GitHub Actions
draft: false
repo: https://github.com/samzong/gofs
marketplace: https://github.com/marketplace/actions/gofs-file-server
version: v0.4.0
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  This GitHub Action is a lightweight, fast HTTP file server written in Go that provides a simple web interface for browsing files, supports secure path handling, optional authentication, modern UI with advanced features like upload and folder creation, WebDAV support, production-ready features such as structured logs and graceful shutdown, and can mount multiple directories.
---


Version updated for **https://github.com/samzong/gofs** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gofs-file-server) to find the latest changes.

## Action Summary

This GitHub Action is a lightweight, fast HTTP file server written in Go that provides a simple web interface for browsing files, supports secure path handling, optional authentication, modern UI with advanced features like upload and folder creation, WebDAV support, production-ready features such as structured logs and graceful shutdown, and can mount multiple directories.

## What's Changed

## What's Changed

### Docker Images

Multi-architecture Docker images are available on GitHub Container Registry and Docker Hub:

```bash
# Pull from GitHub Container Registry
docker pull ghcr.io/samzong/gofs:v0.4.0
docker pull ghcr.io/samzong/gofs:latest

# Pull from Docker Hub
docker pull samzong/gofs:v0.4.0
docker pull samzong/gofs:latest

# Run the container
docker run -p 8000:8000 -v $(pwd):/data:ro samzong/gofs:v0.4.0
```

Supported architectures: `linux/amd64`, `linux/arm64`

## Changelog
* d7ac6d43ddd5cead18a869e0edd62f6d4cd610d5 Add DeepWiki to README.md
* bc87cce91a1435cd7de3dc010a4189cba19b0f87 chore(deps): bump golang.org/x/crypto
* 38ef280b75053d5f990449c7b79b8e7ef17b7b24 feat(skill): add bundled gofs agent support (#15)
* b9f0b8c9e4802a497a64bf5ab45d680695f76781 fix(ci): update release Trivy action to v0.36.0 (#16)
* 05e3ff0cd718fae321763dcc0bb66f308c4ca584 ♻️ refactor(config): drop classic theme, fallback to default

**Full Changelog**: https://github.com/samzong/gofs/compare/v0.3.0...v0.4.0


