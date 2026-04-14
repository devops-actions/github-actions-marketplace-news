---
title: docker-hash
date: 2026-04-14 22:20:54 +00:00
tags:
  - RemkoMolier
  - GitHub Actions
draft: false
repo: https://github.com/RemkoMolier/docker-hash
marketplace: https://github.com/marketplace/actions/docker-hash
version: v0.2.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/RemkoMolier/docker-hash** to version **v0.2.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-hash) to find the latest changes.

## Action Summary

`docker-hash` is a GitHub Action and CLI tool that generates a deterministic SHA-256 hash for Docker image builds based on the content of the Dockerfile, build arguments, and files referenced by `COPY`/`ADD` instructions. It helps automate cache-busting, detect changes in builds, and ensure consistency in CI pipelines. Its key feature is the ability to track and reflect changes in the build context, providing reliable hash values for managing Docker image versions.

## What's Changed

## Changelog
### Bug fixes
* fix: ARG quoted empty-string defaults being treated as literal "\"\"" (#78)
### Build & infrastructure
* build: enable Renovate auto-merge for non-major updates (#73)
* build: migrate GoReleaser docker config to dockers_v2 (#72)


