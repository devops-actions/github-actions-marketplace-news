---
title: Build with Code Composer Studio™ integrated development environment (IDE)
date: 2026-04-23 05:54:05 +00:00
tags:
  - uoohyo
  - GitHub Actions
draft: false
repo: https://github.com/uoohyo/action-ccstudio-ide
marketplace: https://github.com/marketplace/actions/build-with-code-composer-studio-integrated-development-environment-ide
version: v2.1.1
dependentsNumber: "2"
actionType: Docker
---


Version updated for **https://github.com/uoohyo/action-ccstudio-ide** to version **v2.1.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-code-composer-studio-integrated-development-environment-ide) to find the latest changes.

## Action Summary

The `action-ccstudio-ide` GitHub Action automates the setup and use of Texas Instruments' Code Composer Studio (CCS) IDE within CI/CD workflows, enabling users to build embedded projects for TI microcontrollers and processors. It streamlines the process by downloading, installing, and configuring CCS in a Linux-based Docker environment, ensuring compatibility with versions 7.x–20.x. This action simplifies building and testing CCS projects, saving developers time and effort in managing manual setup and builds for embedded systems.

## What's Changed

- 🔀 Merge pull request #7 from uoohyo/develop (e17a187)
- ✨ add auto-import option for workspaces with shared dependencies (2ea1764)
- 📝 document SLF4J warning as known harmless Eclipse warning (fcdebba)
- 🐛 resolve project-path against /github/workspace in Docker (24dc2d8)
- 🔀 Merge pull request #6 from uoohyo/develop (b54f41a)
- 🔀 merge main into develop — resolve CCS_ECLIPSE_DIR conflict (7078dff)
- 📝 use floating major tag @v2 in README usage example (f5c8ed1)
- 📝 add supported version range and v9- components caveat to README (b108584)
- 📝 update action version in README usage example to v2.0.2 (157dfe2)
- 🐛 add export PATH for CCS_ECLIPSE_DIR (a5cb37d)
