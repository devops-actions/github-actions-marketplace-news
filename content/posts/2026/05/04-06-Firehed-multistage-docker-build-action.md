---
title: Multi-stage Docker Build
date: 2026-05-04 06:27:53 +00:00
tags:
  - Firehed
  - GitHub Actions
draft: false
repo: https://github.com/Firehed/multistage-docker-build-action
marketplace: https://github.com/marketplace/actions/multi-stage-docker-build
version: v1.10.1
dependentsNumber: "22"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Firehed/multistage-docker-build-action** to version **v1.10.1**.

- This action is used across all versions by **22** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/multi-stage-docker-build) to find the latest changes.

## Action Summary

The **Multistage Docker Build Action** simplifies and accelerates multistage Docker builds in CI/CD pipelines by enabling efficient layer caching and automated image management. It addresses challenges related to lack of persistent caching in CI environments and eliminates the need for repetitive manual handling of build stages. Key capabilities include support for caching and reusing build layers across stages, tagging images with commit hashes and branch names, and defining distinct build stages for testing (`testenv-stage`) and deployment (`server-stage`).

## What's Changed

## What's Changed
* Fix version tag workflow to trigger on releases by @Firehed in https://github.com/Firehed/multistage-docker-build-action/pull/58


**Full Changelog**: https://github.com/Firehed/multistage-docker-build-action/compare/v.1.10.0...v1.10.1
