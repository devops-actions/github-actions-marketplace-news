---
title: Skyline DataMiner Deploy Action
date: 2024-08-30 16:46:41 +00:00
tags:
  - SkylineCommunications
  - GitHub Actions
draft: false
repo: SkylineCommunications/Skyline-DataMiner-Deploy-Action
marketplace: https://github.com/marketplace/actions/skyline-dataminer-deploy-action
version: v1.1.0
dependentsNumber: "528"
---


Version updated for **SkylineCommunications/Skyline-DataMiner-Deploy-Action** to version **v1.1.0**.
- This action is used across all versions by **528** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skyline-dataminer-deploy-action) to find the latest changes.

## Release notes

> The existing GitHub Action should continue to work within GitHub workflows without requiring any changes from users.

## Breaking Change

* The Docker image has been deprecated and removed. If you were directly using the image from any source, it will no longer function.
* The GitHub Action itself is not deprecated; however, it now triggers a 'composite action' on your active runner, which installs and executes the necessary .NET tools for creation and deployment.

## What's Changed
* Convert to composite action by @MichielOda in https://github.com/SkylineCommunications/Skyline-DataMiner-Deploy-Action/pull/80


**Full Changelog**: https://github.com/SkylineCommunications/Skyline-DataMiner-Deploy-Action/compare/v1...v1.1.0
