---
title: Setup Cog
date: 2024-05-17 19:29:41 +00:00
tags:
  - replicate
  - GitHub Actions
draft: false
repo: replicate/setup-cog
marketplace: https://github.com/marketplace/actions/setup-cog
version: v2.0.0
dependentsNumber: "47"
---


Version updated for **replicate/setup-cog** to version **v2.0.0**.
- This action is used across all versions by **47** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-cog) to find the latest changes.

## Release notes

This release includes two breaking changes:

- The [`install_cuda`](https://github.com/replicate/setup-cog/blob/0f18c46613ba2a7033978dd545aff4e69e9904e5/README.md#install-cuda) input now defaults to `false`. Most models don't need CUDA at build time, a workflows run faster without it.
- The default version of Cog installed by the Action is now [v0.9.8](https://github.com/replicate/cog/releases/tag/v0.9.8). (bumped from `0.8.6` in v1)

```yml
name: Release

on:
  push:
    branches:
      - main
  workflow_dispatch:

jobs:
  setup-build-publish-deploy:
    name: Setup, Build, Publish & Deploy
    runs-on: ubuntu-latest
    steps:
      - name: Free disk pace
        uses: jlumbroso/free-disk-space@main

      - name: Checkout
        uses: actions/checkout@v4

      - name: Setup Cog
        uses: replicate/setup-cog@v1
        with:
          token: ${{ secrets.REPLICATE_API_TOKEN }}

      - name: Push to Replicate
        run: cog push r8.im/your/model
```
