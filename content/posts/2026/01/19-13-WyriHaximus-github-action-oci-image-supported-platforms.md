---
title: OCI Image Supported Platforms
date: 2026-01-19 13:19:25 +00:00
tags:
  - WyriHaximus
  - GitHub Actions
draft: false
repo: https://github.com/WyriHaximus/github-action-oci-image-supported-platforms
marketplace: https://github.com/marketplace/actions/oci-image-supported-platforms
version: v1.0.0
dependentsNumber: "4"
---


Version updated for **https://github.com/WyriHaximus/github-action-oci-image-supported-platforms** to version **v1.0.0**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oci-image-supported-platforms) to find the latest changes.

## Action Summary

This GitHub Action retrieves the supported platforms (e.g., architectures) for a given OCI image or Dockerfile. It automates the process of identifying the compatible platforms for container images, enabling tasks like multi-platform image building or compatibility validation. The action outputs the platform information in both JSON and CSV formats, streamlining workflows that require platform-specific builds or retagging.

## Release notes

# OCI Image Supported Platforms

Get the OCI Platforms for a given OCI Image or Dockerfile

## Inputs

This action supports the following input.

### dockerfile

The Dockerfile to get its supported platforms

* *Required*: `No`
* *Type*: `string`
* *Default*: `Dockerfile`
* *Example*: `Dockerfile-alpine-zts`

### image

Passing anything into the `image` input will disable checking for the passed `dockerfile` input value, and will get the 
platforms for the image(s) you give it. When you pass it two or more, for example `ghcr.io/home-assistant/home-assistant:2024.12.2,ghcr.io/wyrihaximusnet/php:8.3-zts-alpine-dev`, 
it will get the platforms for all of them but only return the platforms that are supported by all of them.

* *Required*: `No`
* *Type*: `string`
* *Default*: ``
* *Example*: `ghcr.io/wyrihaximusnet/php:8.3-zts-alpine-slim`

## Output

This action only outputs a list of platforms as JSON through `platform`, and as CSV `platform_csv`.

For example when the found platforms are `linux/arm64` and `linux/amd64` the outputs are the following:
* `plarform`: `["linux/arm64","linux/amd64"]`
* `platform_csv`: `linux/arm64,linux/amd64`

## Building Example

The following example build a docker image for each upstream platform:

```yaml
jobs:
  supported-arch-matrix:
    outputs:
      platform: ${{ steps.supported-arch-matrix.outputs.platform }}
    steps:
      # Note: No checkout needed, the action will handle that for you in the most optimized way possible
      # It uses a sparse checkout with only the Dockerfile as the path to check out
      - id: supported-arch-matrix
        name: Generate Arch
        uses: wyrihaximus/github-action-oci-image-supported-platforms@v1
      # You can optionally specify a different Dockerfile path  
      #  with:
      #    dockerfile: Dockerfile-non-default-path
  build-docker-image:
    name: Build ${{ matrix.platform }} image
    strategy:
      fail-fast: false
      matrix:
        platform: ${{ fromJson(needs.supported-arch-matrix.outputs.platform) }}
    needs:
      - supported-arch-matrix
    steps:
      - name: Prepare
        run: |
          platform=${{ matrix.platform }}
          echo "PLATFORM_PAIR=${platform//\//-}" >> $GITHUB_ENV
      - name: Checkout
        uses: actions/checkout@v6
      - run: docker image build --platform=${{ matrix.platform }} -t "ghcr.io/${{ github.repository }}:sha-abc123-${{ env.PLATFORM_PAIR }}" --no-cache .
```

For more details on how to take it from there, please have a look at [this blog post](https://blog.wyrihaximus.net/2024/10/building-secure-images-with-github-actions/).

## Retagging Example

The following example build a docker image for each upstream platform:

```yaml
jobs:
  oci-retag:
    steps:
      - name: Prepare Dockerfile
        run: |
          echo "ghcr.io/${{ github.repository }}:sha-abc123" | tr '[:upper:]' '[:lower:]'
          printf "FROM %s" $(echo "ghcr.io/${{ github.repository }}:sha-abc123" | tr '[:upper:]' '[:lower:]') >> Dockerfile.tag
          cat Dockerfile.tag
      - name: Detect Platform Flag
        id: platform
        uses: wyrihaximus/github-action-oci-image-supported-platforms@v1
      # Since we want to inspect the already build image, we'll pass its location at the registry, and thus 
      # we don't pass it a dockerfile. THose two options are mutually exclusive.
        with:
          image: ghcr.io/${{ github.repository }}:sha-abc123
      - name: Pull, retag, and push image
        run: |
          docker build --platform=${{ steps.platform.outputs.platform_csv }} --output=type=registry --no-cache -f Dockerfile.tag -t $(echo "ghcr.io/${{ github.repository }}:r123" | tr '[:upper:]' '[:lower:]') .
```

v1.0.0
======

- Total issues resolved: **0**
- Total pull requests resolved: **17**
- Total contributors: **2**

Bug 🐞
-----

 - [29: Drop mustCreateCommit from release config](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/29) thanks to @WyriHaximus
 - [28: Set reTagOCIImage to false as this Action doesn't use Docker](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/28) thanks to @WyriHaximus
 - [15: Deduplicate found platforms](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/15) thanks to @WyriHaximus
 - [14: Fix Dockerfile input](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/14) thanks to @WyriHaximus

Bug 🐞,Dependencies 📦
--------------------

 - [11: Enforce lower case](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/11) thanks to @WyriHaximus

Dependencies 📦
--------------

 - [26: Update actions/checkout action to v6](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/26) thanks to @renovate-runner[bot]
 - [23: Update actions/checkout action to v4.3.1](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/23) thanks to @renovate-runner[bot]
 - [21: Update actions/checkout action to v4.3.0](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/21) thanks to @renovate-runner[bot]
 - [18: Pin nick-fields/assert-action action to aa0067e](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/18) thanks to @renovate-runner[bot]
 - [8: Support multiple Dockerfiles](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/8) thanks to @WyriHaximus
 - [4: Add unit tests](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/4) thanks to @WyriHaximus

Feature 🏗
---------

 - [10: Add CSV output](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/10) thanks to @WyriHaximus

Enhancement ✨
-------------

 - [27: Drop set-milestone-on-pr and have release-management handle milestones](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/27) thanks to @WyriHaximus
 - [16: No need to update `action.yaml` during releasing this action](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/16) thanks to @WyriHaximus
 - [13: arch =&gt; platform in readme example](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/13) thanks to @WyriHaximus
 - [12: Enhance documentation](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/12) thanks to @WyriHaximus
 - [9: Add release related workflows](https://github.com/WyriHaximus/github-action-oci-image-supported-platforms/pull/9) thanks to @WyriHaximus
