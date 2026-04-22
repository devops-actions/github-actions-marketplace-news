---
title: Setup aube
date: 2026-04-22 21:23:57 +00:00
tags:
  - verzly
  - GitHub Actions
draft: false
repo: https://github.com/verzly/setup-aube
marketplace: https://github.com/marketplace/actions/setup-aube
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/verzly/setup-aube** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-aube) to find the latest changes.

## Action Summary

The `verzly/setup-aube` GitHub Action automates the installation of the `aube` package manager in CI workflows by downloading official prebuilt binaries, resolving versions from npm dist-tags, and adding the binary to the system `PATH`. It simplifies dependency management and ensures reproducibility across Linux, macOS, and Windows runners, optionally allowing automated execution of install commands for streamlined package handling.

## What's Changed

First public release of the GitHub Action `verzly/setup-aube`, built for use with the [aube package manager](https://aube.en.dev/).

> [!WARNING]
> aube is still in beta, so please use it with caution.

Node.js is not required to use aube, but since it manages JavaScript packages, it is recommended to install Node.js as well (e.g. using `verzly/setup-aube`) if you plan to run those packages.

```yaml
name: CI

on:
  push:
  pull_request:

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v6

      # Optional but recommended if running JS packages
      - uses: actions/setup-node@v6
        with:
          node-version: 24

      - uses: verzly/setup-aube@v1

      # Optional: cache dependencies
      - name: Cache aube store
        uses: actions/cache@v6
        with:
          path: ~/.aube
          key: ${{ runner.os }}-aube-${{ hashFiles('**/aube.lock') }}
          restore-keys: |
            ${{ runner.os }}-aube-

      - run: aube install
      - run: aube test
```
