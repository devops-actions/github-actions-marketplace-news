---
title: Docker Scout
date: 2024-02-16 19:21:39 +00:00
tags:
  - docker
  - GitHub Actions
draft: false
repo: docker/scout-action
marketplace: https://github.com/marketplace/actions/docker-scout
version: v1.5.0
dependentsNumber: "205"
---


Version updated for **docker/scout-action** to version **v1.5.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **205** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-scout) to find the latest changes.

## Release notes

## Highlights

- Cache SBOM and attestations using the image index digest if exists
- Add file hashes/digest when generating SBOMs
- Upgrade `syft` to [0.105.0](https://github.com/anchore/syft/releases/tag/v0.105.0)
- Support local attestations from a containerd image store or OCI export

## Bug fixes / Improvements

- fix reading SBOM for `gcr.io/distroless` images
- read distribution in SBOM from attestations

