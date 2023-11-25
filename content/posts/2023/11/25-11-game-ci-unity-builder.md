---
title: Unity - Builder
date: 2023-11-25 11:12:06 +00:00
tags:
  - game-ci
  - GitHub Actions
draft: false
repo: game-ci/unity-builder
marketplace: https://github.com/marketplace/actions/unity-builder
version: v4.1.0
dependentsNumber: "4,313"
---


Version updated for **game-ci/unity-builder** to version **v4.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **4,313** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unity-builder) to find the latest changes.

## Release notes

## What's Changed
- Added `runAsHostUser` to allow running the container as the same user as the host system. This fixes most permissions issues on self-hosted runners. Should be set to true on self-hosted runners so the docker container won't run as root
- Generates a new uuid for machineID to ensure separate containers are unique to reduce license activation errors
- Added exponential delay retry strategy for Ubuntu license activations. Should reduce failed builds due to license activation errors.


**Full Changelog**: https://github.com/game-ci/unity-builder/compare/v4...v4.1.0
