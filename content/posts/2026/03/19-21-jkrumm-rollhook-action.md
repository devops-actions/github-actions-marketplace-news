---
title: RollHook Deploy
date: 2026-03-19 21:48:30 +00:00
tags:
  - jkrumm
  - GitHub Actions
draft: false
repo: https://github.com/jkrumm/rollhook-action
marketplace: https://github.com/marketplace/actions/rollhook-deploy
version: v1.6.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/jkrumm/rollhook-action** to version **v1.6.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rollhook-deploy) to find the latest changes.

## Action Summary

The **RollHook Deploy Action** is a GitHub Action designed to automate the process of building, pushing, and deploying Docker images to a RollHook server using GitHub’s OIDC authentication, eliminating the need for secrets in CI workflows. It simplifies deployment by integrating a built-in container registry, triggering rolling deployments, and streaming real-time logs back into the CI pipeline. This action is ideal for teams looking to streamline secure, automated deployments with minimal configuration and full visibility into the deployment process.

## Release notes

# [1.6.0](https://github.com/jkrumm/rollhook-action/compare/v1.5.0...v1.6.0) (2026-03-17)


### Features

* **auth:** use secret from /auth/token for stable polling and streaming ([2cf3a8a](https://github.com/jkrumm/rollhook-action/commit/2cf3a8a0a177319fc2352e567e7792518c079038))

