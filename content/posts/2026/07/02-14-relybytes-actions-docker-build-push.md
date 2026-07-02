---
title: Build & Push to Registry
date: 2026-07-02 14:51:49 +00:00
tags:
  - relybytes
  - GitHub Actions
draft: false
repo: https://github.com/relybytes/actions-docker-build-push
marketplace: https://github.com/marketplace/actions/build-push-to-registry
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/relybytes/actions-docker-build-push** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-push-to-registry) to find the latest changes.

## What's Changed

## Build & Push to Registry v1.0.0

First stable release of `actions-docker-build-push`, a GitHub Action for building Docker images and pushing them to container registries with a predictable naming convention.

### Main features

- Build Docker images using Docker Buildx
- Push images to GitHub Container Registry by default
- Support any container registry, including Docker Hub, Harbor, OVHcloud Managed Private Registry, and custom registries
- Default authentication with GitHub actor and `GITHUB_TOKEN`
- Automatic image naming based on branch, tag, or pull request
- Environment suffixes such as `prod`, `dev`, `staging`, `rc`, `hotfix`, `feat`, and `pr-{number}`
- Auto-generated version tags using `YYYY-MM-DD.shortsha`
- Optional `:latest` tag on main/master builds
- Support for additional tags
- Support for multi-platform builds
- Support for build arguments
- Support for multi-stage Dockerfile targets
- Automatic OCI labels
- Optional local build validation with `push: "false"`
- Output image reference, repository, version, suffix, tags, digest, and build timestamp

### Default behavior

With no registry credentials passed, the action defaults to GitHub Container Registry:

```text
ghcr.io/{owner}/{repo}-{suffix}:YYYY-MM-DD.shortsha
