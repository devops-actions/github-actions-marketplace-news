---
title: Build docker images using cache
date: 2023-10-17 03:50:34 +00:00
tags:
  - whoan
  - GitHub Actions
draft: false
repo: whoan/docker-build-with-cache-action
marketplace: https://github.com/marketplace/actions/build-docker-images-using-cache
version: v7
dependentsNumber: "926"
---


Version updated for **whoan/docker-build-with-cache-action** to version **v7**.
- This action is used across all versions by **926** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-docker-images-using-cache) to find the latest changes.

## Release notes

- Close #120: Avoid useless attempt to create ECR repository when it already exists
- Close #127: Support only building specific services from compose through regex (`services_regex` input)
- Close #128: Support for YAML anchors and aliases when using compose files
- Close #131: **Disable DOCKER_BUILDKIT to allow action to work again** (action relies on old output format)
- Close #133: Support `context` input for compose files to use it as a relative path for contexts set in the yaml
- Colse #134: Support using `build.args` form compose file
- Improve logs
- Allow spaces in values of `build_extra_args` when using a json or in `build.args` from a compose file.
