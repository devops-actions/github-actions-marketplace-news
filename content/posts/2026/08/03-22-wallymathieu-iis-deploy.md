---
title: IIS Versioned Deploy
date: 2026-08-03 22:33:53 +00:00
tags:
  - wallymathieu
  - GitHub Actions
draft: false
repo: https://github.com/wallymathieu/iis-deploy
marketplace: https://github.com/marketplace/actions/iis-versioned-deploy
version: v5
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The IIS Versioned Deploy action automates the deployment of a website to a versioned directory within IIS, avoiding downtime. It uses PowerShell scripts to update the IIS website's physical path and retains only the specified number of release folders. Users can specify the website name, virtual application name, source path, destination path, release prefix, and number of releases to keep. The action supports deploying on multiple runners using matrix strategies and is also available as an Azure DevOps pipeline task.
---


Version updated for **https://github.com/wallymathieu/iis-deploy** to version **v5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/iis-versioned-deploy) to find the latest changes.

## Action Summary

The IIS Versioned Deploy action automates the deployment of a website to a versioned directory within IIS, avoiding downtime. It uses PowerShell scripts to update the IIS website's physical path and retains only the specified number of release folders. Users can specify the website name, virtual application name, source path, destination path, release prefix, and number of releases to keep. The action supports deploying on multiple runners using matrix strategies and is also available as an Azure DevOps pipeline task.

## What's Changed

## What's Changed

* Harden docs by pinning action references to immutable commit SHAs by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/4
* Harden IIS release cleanup against unsafe directory deletion by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/6
* Add AppCmd operational guidance docs for IIS deploy action by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/7
* Azure devops by @brainfucknow in https://github.com/wallymathieu/iis-deploy/pull/8
* Create azure-devops-task.yml by @wallymathieu in https://github.com/wallymathieu/iis-deploy/pull/9
* Improve build pipeline descriptions and artifact name by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/10
* Add Pester CI pipeline and fix module import failure by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/11
* Use a dedicated overview for the Azure DevOps marketplace listing by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/12
* Make releaseParentDir optional, defaulting to the parent of the current site directory by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/13
* Expand Pester coverage for IisDeploy PowerShell module by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/15
* Make release folder prefix configurable by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/14
* Fix `website-name` input mismatch and add alternatives to README by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/16
* Align GitHub Actions and Azure DevOps deployment documentation by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/17

## New Contributors
* @brainfucknow made their first contribution in https://github.com/wallymathieu/iis-deploy/pull/8

**Full Changelog**: https://github.com/wallymathieu/iis-deploy/compare/v4...v5

## What's Changed
* Harden docs by pinning action references to immutable commit SHAs by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/4
* Harden IIS release cleanup against unsafe directory deletion by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/6
* Add AppCmd operational guidance docs for IIS deploy action by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/7
* Azure devops by @brainfucknow in https://github.com/wallymathieu/iis-deploy/pull/8
* Create azure-devops-task.yml by @wallymathieu in https://github.com/wallymathieu/iis-deploy/pull/9
* Improve build pipeline descriptions and artifact name by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/10
* Add Pester CI pipeline and fix module import failure by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/11
* Use a dedicated overview for the Azure DevOps marketplace listing by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/12
* Make releaseParentDir optional, defaulting to the parent of the current site directory by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/13
* Expand Pester coverage for IisDeploy PowerShell module by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/15
* Make release folder prefix configurable by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/14
* Fix `website-name` input mismatch and add alternatives to README by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/16
* Align GitHub Actions and Azure DevOps deployment documentation by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/17
* Bump Azure DevOps extension version to 0.1.4 by @wallymathieu with @Copilot in https://github.com/wallymathieu/iis-deploy/pull/18

## New Contributors
* @brainfucknow made their first contribution in https://github.com/wallymathieu/iis-deploy/pull/8

**Full Changelog**: https://github.com/wallymathieu/iis-deploy/compare/v4...v5
