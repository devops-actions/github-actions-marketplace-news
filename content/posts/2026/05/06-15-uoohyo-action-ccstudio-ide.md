---
title: Build with Code Composer Studio™ integrated development environment (IDE)
date: 2026-05-06 15:04:14 +00:00
tags:
  - uoohyo
  - GitHub Actions
draft: false
repo: https://github.com/uoohyo/action-ccstudio-ide
marketplace: https://github.com/marketplace/actions/build-with-code-composer-studio-integrated-development-environment-ide
version: v20.5.1.00012
dependentsNumber: "2"
actionType: Docker
---


Version updated for **https://github.com/uoohyo/action-ccstudio-ide** to version **v20.5.1.00012**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-code-composer-studio-integrated-development-environment-ide) to find the latest changes.

## Action Summary

The `action-ccstudio-ide` GitHub Action provides an automated environment for building embedded projects using Texas Instruments' Code Composer Studio (CCS) IDE within a Docker container. It streamlines CI/CD workflows by enabling quick and consistent builds of CCS projects on Linux runners, eliminating the need for manual setup of the CCS development environment. Key capabilities include support for multiple CCS versions (v7.0.0–v20.5.1) and pre-built Docker images to minimize build time.

## What's Changed

## Code Composer Studio v20.5.1.00012

This release uses the pre-built Docker image with CCS **20.5.1.00012** from [docker-ccstudio-ide](https://github.com/uoohyo/docker-ccstudio-ide).

### Usage

```yaml
- uses: uoohyo/action-ccstudio-ide@v20.5.1.00012
  with:
    project-path: 'path/to/project'
    project-name: 'YourProject'
    build-config: 'Debug'
    components: 'PF_C28'
```

### What's Changed

- CCS Version: **20.5.1.00012**
- Base Image: `uoohyo/ccstudio-ide:20.5.1.00012`
- Docker Hub: https://hub.docker.com/r/uoohyo/ccstudio-ide/tags

### Installation Time

⚡ **No installation needed** - CCS is pre-installed in the Docker image, reducing build time from 15-30 minutes to 1-3 minutes!
