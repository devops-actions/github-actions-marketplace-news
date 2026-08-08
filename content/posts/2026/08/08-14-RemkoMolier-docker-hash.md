---
title: docker-hash
date: 2026-08-08 14:30:09 +00:00
tags:
  - RemkoMolier
  - GitHub Actions
draft: false
repo: https://github.com/RemkoMolier/docker-hash
marketplace: https://github.com/marketplace/actions/docker-hash
version: v0.3.18
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This action computes a deterministic SHA-256 hash for a Docker image build, based on the Dockerfile content, any build arguments, and files referenced by COPY/ADD instructions within the build context. It helps in cache-busting, change detection, and creating deterministic CI pipelines by ensuring that the hash changes whenever there are updates to the Dockerfile or its dependencies.
---


Version updated for **https://github.com/RemkoMolier/docker-hash** to version **v0.3.18**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-hash) to find the latest changes.

## Action Summary

This action computes a deterministic SHA-256 hash for a Docker image build, based on the Dockerfile content, any build arguments, and files referenced by COPY/ADD instructions within the build context. It helps in cache-busting, change detection, and creating deterministic CI pipelines by ensuring that the hash changes whenever there are updates to the Dockerfile or its dependencies.

## What's Changed

## Changelog
### Bug fixes
* fix(deps): update module github.com/moby/buildkit to v0.32.1 (#194)


