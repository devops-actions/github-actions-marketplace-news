---
title: IIS Rotational Deploy
date: 2026-03-04 13:31:19 +00:00
tags:
  - veraw
  - GitHub Actions
draft: false
repo: https://github.com/veraw/iis-deploy
marketplace: https://github.com/marketplace/actions/iis-rotational-deploy
version: 0.0.1-alpha.01
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/veraw/iis-deploy** to version **0.0.1-alpha.01**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/iis-rotational-deploy) to find the latest changes.

## Action Summary

The IIS Rotational Deploy GitHub Action automates the deployment of websites to IIS, including virtual applications, using a PowerShell script to ensure zero downtime. It organizes deployments into versioned directories, updates the IIS website's physical path to point to the latest version, and cleans up old deployments while retaining a specified number of previous versions. This action simplifies and streamlines IIS website deployments, reducing manual effort and ensuring efficient version management.

## Release notes

Initial release (forked from wallymathieu/iis-deploy project) that has been extended to allow defining virtual app name aswell with site name.

**Full Changelog**: https://github.com/veraw/iis-deploy/commits/0.0.1-alpha.01
