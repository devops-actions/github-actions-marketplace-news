---
title: Skyline DataMiner Deploy Action
date: 2024-09-19 16:45:59 +00:00
tags:
  - SkylineCommunications
  - GitHub Actions
draft: false
repo: SkylineCommunications/Skyline-DataMiner-Deploy-Action
marketplace: https://github.com/marketplace/actions/skyline-dataminer-deploy-action
version: v1.1.2
dependentsNumber: "528"
---


Version updated for **SkylineCommunications/Skyline-DataMiner-Deploy-Action** to version **v1.1.2**.
- This action is used across all versions by **528** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skyline-dataminer-deploy-action) to find the latest changes.

## Release notes

### Updates:
- **New Feature**: The `solution-path` input is now optional. If not provided, the action will automatically search for a `.sln` file within the working directory when needed.
- **Fix**: The `solution-path` input can now reference a subfolder within your workspace.

## What's Changed
* **Fix**: Added support for locating the solution file inside subfolders by [@janstaelensskyline](https://github.com/janstaelensskyline) in [PR #82](https://github.com/SkylineCommunications/Skyline-DataMiner-Deploy-Action/pull/82).

**Full Changelog**: [Compare v1...v1.1.2](https://github.com/SkylineCommunications/Skyline-DataMiner-Deploy-Action/compare/v1...v1.1.2)
