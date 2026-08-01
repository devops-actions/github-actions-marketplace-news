---
title: RollHook Deploy
date: 2026-08-01 22:35:58 +00:00
tags:
  - jkrumm
  - GitHub Actions
draft: false
repo: https://github.com/jkrumm/rollhook-action
marketplace: https://github.com/marketplace/actions/rollhook-deploy
version: v1.8.0
dependentsNumber: "3"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the deployment process using Docker and RollHook. It eliminates the need for secret management by utilizing OIDC tokens provided by GitHub Actions to authenticate with the RollHook registry. The action handles building, pushing, and deploying a Docker image in one step, providing real-time logs through SSE streams. The server-side authorization ensures that only authorized repositories can deploy images to specified branches or tags.
---


Version updated for **https://github.com/jkrumm/rollhook-action** to version **v1.8.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rollhook-deploy) to find the latest changes.

## Action Summary

This GitHub Action automates the deployment process using Docker and RollHook. It eliminates the need for secret management by utilizing OIDC tokens provided by GitHub Actions to authenticate with the RollHook registry. The action handles building, pushing, and deploying a Docker image in one step, providing real-time logs through SSE streams. The server-side authorization ensures that only authorized repositories can deploy images to specified branches or tags.

## What's Changed

# [1.8.0](https://github.com/jkrumm/rollhook-action/compare/v1.7.0...v1.8.0) (2026-07-31)


### Features

* **errors:** diagnose RollHook failures with a one-line verdict ([ec7c0c9](https://github.com/jkrumm/rollhook-action/commit/ec7c0c960f3194bf91c93a07b769049caa6a995b))

