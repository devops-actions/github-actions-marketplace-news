---
title: Build with Code Composer Studio™ integrated development environment (IDE)
date: 2026-04-21 14:26:09 +00:00
tags:
  - uoohyo
  - GitHub Actions
draft: false
repo: https://github.com/uoohyo/action-ccstudio-ide
marketplace: https://github.com/marketplace/actions/build-with-code-composer-studio-integrated-development-environment-ide
version: v2.0.2
dependentsNumber: "2"
actionType: Docker
---


Version updated for **https://github.com/uoohyo/action-ccstudio-ide** to version **v2.0.2**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-code-composer-studio-integrated-development-environment-ide) to find the latest changes.

## Action Summary

The `action-ccstudio-ide` GitHub Action automates the setup and build process for projects developed in Texas Instruments' Code Composer Studio (CCS), an IDE for embedded development on TI microcontrollers and processors. It streamlines CI/CD workflows by downloading, installing, and configuring CCS within a Docker-based Linux environment, enabling developers to build and test their embedded projects directly within GitHub Actions. Key capabilities include specifying project paths, build configurations, and CCS versions to tailor the build process to individual project requirements.

## What's Changed

- 🐛 fix versioned eclipse dir path for CCS v12 and below (dd4f8c9)
- 🔀 Merge pull request #5 from uoohyo/develop (5fb9267)
- 🐛 correct v12 download URL directory path from 4-part to 3-part version (5b505a5)
- 💚 update workflow actions to Node.js 24 compatible versions (df651ab)
- ✨ implement CCS headless CI build with version-aware install and build failure detection #major (8d82eb0)
- Set execute permission for the entrypoint script #major (53fea92)
- #major readme update (2ccf4fe)
- fix: Update Version (4199643)
- fix: delete build: (19564f1)
- fix: action jobs.. checkout and create release.. (53a7319)
