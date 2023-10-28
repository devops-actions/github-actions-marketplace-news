---
title: Build docker images using cache
date: 2023-10-28 19:16:18 +00:00
tags:
  - whoan
  - GitHub Actions
draft: false
repo: whoan/docker-build-with-cache-action
marketplace: https://github.com/marketplace/actions/build-docker-images-using-cache
version: v8.0.1
dependentsNumber: "927"
---


Version updated for **whoan/docker-build-with-cache-action** to version **v8.0.1**.
- This action is used across all versions by **927** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-docker-images-using-cache) to find the latest changes.

## Release notes

- Only try to pull/push when possible with BuildKit (eg: if login succeeded).  #150
- Ignore tag in custom cache image name (`stages_image_name`). 
- Honour custom cache image name in AWS. Close #146
- Update docker to [24.0.7](https://docs.docker.com/engine/release-notes/24.0/#2407)
- Use `aws-cli` and `yq` from base image instead of from a docker image (performance improvement). #148 #149 
