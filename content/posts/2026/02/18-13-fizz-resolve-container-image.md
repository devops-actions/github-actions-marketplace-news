---
title: Resolve Container Image
date: 2026-02-18 13:28:01 +00:00
tags:
  - fizz
  - GitHub Actions
draft: false
repo: https://github.com/fizz/resolve-container-image
marketplace: https://github.com/marketplace/actions/resolve-container-image
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/fizz/resolve-container-image** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/resolve-container-image) to find the latest changes.

## Action Summary

The `resolve-container-image` GitHub Action automates the resolution of container images for deployments by prioritizing explicit input, Terraform state, or the latest release branch, ensuring consistent and accurate image selection. It solves the problem of accidental image rollbacks during infrastructure-only Terraform applies and provides safety mechanisms to prevent unintended updates. Key capabilities include state-based image resolution, digest pinning for image immutability, and release branch discovery for deploying the latest images.

## Release notes

Resolve container images from explicit input, terraform state, or release branch.

## What it does

Prevents accidental image rollbacks during infra-only terraform applies by reading the current image from state instead of requiring hardcoded defaults.

## Priority chain

1. Explicit image override → use it
2. Terraform state has image → use it (default)
3. Neither → resolve from latest releases/* branch

## Features

- `update_images` safety gate separates infra ops from image deployments
- Always pins sha256 digest (tags are mutable)
- aws-error-utils for specific ECR error messages
- Auto-discovers latest releases/* branch via GitHub API

## Registry support

ECR (default). Pattern generalizes to any OCI registry — PRs welcome.
