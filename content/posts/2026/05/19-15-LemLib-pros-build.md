---
title: PROS Build Action
date: 2026-05-19 15:23:55 +00:00
tags:
  - LemLib
  - GitHub Actions
draft: false
repo: https://github.com/LemLib/pros-build
marketplace: https://github.com/marketplace/actions/pros-build-action
version: v5.1.0
dependentsNumber: "31"
actionType: Docker
---


Version updated for **https://github.com/LemLib/pros-build** to version **v5.1.0**.

- This action is used across all versions by **31** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pros-build-action) to find the latest changes.

## Action Summary

The PROS Build Action is designed to create an environment for building PROS (Purdue Robotics Operating System) projects and templates, automating the process of compiling these projects efficiently. It solves the challenge of setting up a consistent build environment by providing a pre-configured container with necessary tools and dependencies, while enabling customizations like multithreading and artifact naming conventions. Key capabilities include generating build artifacts, supporting modular build scripts, and facilitating integration into CI/CD workflows.

## What's Changed

- Upgrade toolchain: 13.3.rel1 -> 14.3.rel1
- Pin `setuptools<81` to prevent `pros-cli` from throwing this error in [purduesigbots/pros-cli#403](https://github.com/purduesigbots/pros-cli/issues/403)

**Full Changelog**: https://github.com/LemLib/pros-build/compare/v5.0.0...v5.1.0
