---
title: Upload a new image to docker
date: 2026-03-20 13:36:26 +00:00
tags:
  - Snr1s3
  - GitHub Actions
draft: false
repo: https://github.com/Snr1s3/upload-to-docker-action
marketplace: https://github.com/marketplace/actions/upload-a-new-image-to-docker
version: 1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Snr1s3/upload-to-docker-action** to version **1.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/upload-a-new-image-to-docker) to find the latest changes.

## Action Summary

The "Upload to Docker Action" is a GitHub Action that automates the process of building a multi-platform Docker image and uploading it to a Docker registry, such as Docker Hub. It simplifies container deployment by handling Docker authentication, multi-platform builds, and image tagging, making it easier to consistently package and distribute applications. Key capabilities include support for custom Dockerfiles, multiple tags, and platform-specific builds.

## Release notes

# Upload to Docker Action v1.0.0

## What's New

This is the initial release of the Upload to Docker Action - a streamlined GitHub Action for building and pushing Docker images to Docker Hub with full multi-platform support.

## Features

✅ **Multi-platform builds** - Build for multiple architectures (e.g., `linux/amd64`, `linux/arm64`) in a single action  
✅ **Docker Buildx integration** - Leverages Docker's advanced BuildKit for optimized builds  
✅ **Flexible tagging** - Support multiple image tags in a single push  
✅ **Custom Dockerfile support** - Specify any Dockerfile location in your repository  
✅ **Simple configuration** - Minimal required inputs with clear descriptions  

## Getting Started

Add this action to your GitHub workflow:

```yaml
- name: Upload to Docker
  uses: your-username/upload-to-docker-action@v1
  with:
    docker_username: ${{ secrets.DOCKERHUB_USERNAME }}
    docker_token: ${{ secrets.DOCKERHUB_TOKEN }}
    docker_tags: your-username/your-app:latest,your-username/your-app:v1.0.0
    docker_platforms: linux/amd64,linux/arm64
    docker_file: ./Dockerfile
```

## Prerequisites

- Repository must be checked out before this action runs (use `actions/checkout@v4`)
- Docker Hub credentials stored as repository secrets

## Inputs

- **docker_username** (required) - Docker Hub username
- **docker_token** (required) - Docker Hub access token
- **docker_tags** (required) - Comma-separated image tags
- **docker_platforms** (required) - Target build platforms
- **docker_file** (required) - Path to Dockerfile

See [README.md](README.md) for detailed documentation and examples.

## Changelog

### v1.0.0 (Initial Release)
- Initial release with core Docker build and push functionality
- Multi-platform build support
- Docker Hub authentication
- Flexible Docker image tagging

