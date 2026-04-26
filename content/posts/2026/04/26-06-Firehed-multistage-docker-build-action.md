---
title: Multi-stage Docker Build
date: 2026-04-26 06:13:51 +00:00
tags:
  - Firehed
  - GitHub Actions
draft: false
repo: https://github.com/Firehed/multistage-docker-build-action
marketplace: https://github.com/marketplace/actions/multi-stage-docker-build
version: v1.9.0
dependentsNumber: "22"
actionType: Node
nodeVersion: 16
---


Version updated for **https://github.com/Firehed/multistage-docker-build-action** to version **v1.9.0**.

- This action is used across all versions by **22** repositories.

## Action Type
This is a **Node** action using Node version **16**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/multi-stage-docker-build) to find the latest changes.

## Action Summary

The **Multistage Docker Build Action** simplifies and accelerates multistage Docker builds in CI environments by addressing challenges with Docker layer caching. It automates caching and reusing build stages by tagging them with branch names and commit hashes, reducing redundant work in subsequent builds. Additionally, it supports defining specific stages for testing and deployment, enabling streamlined workflows for testing and production environments.

## What's Changed

## What's Changed
* Parallelize pull operations across stages by @Firehed in https://github.com/Firehed/multistage-docker-build-action/pull/50
* Filter --cache-from to only include available images by @Firehed in https://github.com/Firehed/multistage-docker-build-action/pull/51
* Bump actions/checkout from 4 to 6 by @dependabot[bot] in https://github.com/Firehed/multistage-docker-build-action/pull/49


**Full Changelog**: https://github.com/Firehed/multistage-docker-build-action/compare/v1.8.0...v1.9.0
