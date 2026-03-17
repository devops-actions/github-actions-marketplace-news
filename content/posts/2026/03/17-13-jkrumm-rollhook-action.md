---
title: RollHook Deploy
date: 2026-03-17 13:36:28 +00:00
tags:
  - jkrumm
  - GitHub Actions
draft: false
repo: https://github.com/jkrumm/rollhook-action
marketplace: https://github.com/marketplace/actions/rollhook-deploy
version: v1.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/jkrumm/rollhook-action** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rollhook-deploy) to find the latest changes.

## Action Summary

The **RollHook Deploy Action** is a GitHub Action designed to automate zero-downtime rolling deployments via the RollHook platform. It eliminates the need for deploy secrets by leveraging GitHub Actions OIDC for secure authentication and includes a built-in container registry, removing dependencies on external services like Docker Hub. Key capabilities include real-time streaming of deployment logs directly into CI workflows and automated service updates based on container labels, streamlining the deployment process for containerized applications.

## Release notes

# [1.2.0](https://github.com/jkrumm/rollhook-action/compare/v1.1.0...v1.2.0) (2026-03-16)


### Features

* **auth:** replace token input with GitHub Actions OIDC ([cd19c52](https://github.com/jkrumm/rollhook-action/commit/cd19c52d9d39d80f8f6005c5795704a3002aeee4))
* **runtime:** upgrade to Node.js 24 ([44209d0](https://github.com/jkrumm/rollhook-action/commit/44209d0f907f439137df886eaaa55ae237a0f49f))

