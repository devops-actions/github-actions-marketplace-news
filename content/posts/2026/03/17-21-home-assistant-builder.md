---
title: Home Assistant builder
date: 2026-03-17 21:47:23 +00:00
tags:
  - home-assistant
  - GitHub Actions
draft: false
repo: https://github.com/home-assistant/builder
marketplace: https://github.com/marketplace/actions/home-assistant-builder
version: 2026.03.2
dependentsNumber: "3,818"
actionType: Composite
---


Version updated for **https://github.com/home-assistant/builder** to version **2026.03.2**.
- This action is used across all versions by **3,818** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/home-assistant-builder) to find the latest changes.

## Action Summary

The **Home Assistant Builder** GitHub Action provides a suite of tools to automate the building, signing, and publishing of multi-architecture container images. It simplifies the process of creating per-architecture images, combining them into a single multi-arch manifest, and verifying image signatures for enhanced security. This action is designed to streamline container image workflows, particularly for projects requiring support across multiple CPU architectures.

## Release notes

> [!WARNING]
> Since 2026.03.0, the `home-assistant/builder` action is deprecated in favor of more efficient and flexible composable actions.  See the [builder repository](https://github.com/home-assistant/builder) for details.

## What's Changed

* Correctly ignore `home-assistant/builder` update in action.yml and .github (#288) @sairon
* Bump docker/setup-buildx-action from 3.12.0 to 4.0.0 in /actions/publish-multi-arch-manifest (#287) @[dependabot[bot]](https://github.com/apps/dependabot)
* Bump docker/setup-buildx-action from 3.12.0 to 4.0.0 in /actions/build-image (#286) @[dependabot[bot]](https://github.com/apps/dependabot)
* Bump docker/build-push-action from 6.19.2 to 7.0.0 in /actions/build-image (#283) @[dependabot[bot]](https://github.com/apps/dependabot)
* Bump home-assistant/builder from 2026.03.0 to 2026.03.1 in /actions/build-image (#284) @[dependabot[bot]](https://github.com/apps/dependabot)
* Update dependabot configuration (#282) @sairon

