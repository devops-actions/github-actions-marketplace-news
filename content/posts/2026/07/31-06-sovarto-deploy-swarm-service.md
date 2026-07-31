---
title: Deploy Docker Swarm cluster services stack
date: 2026-07-31 06:35:46 +00:00
tags:
  - sovarto
  - GitHub Actions
draft: false
repo: https://github.com/sovarto/deploy-swarm-service
marketplace: https://github.com/marketplace/actions/deploy-docker-swarm-cluster-services-stack
version: v0.0.9
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automates the deployment of a Swarm service by executing `npm ci` and `npm run bundle` on Linux before pushing changes. It ensures that dependencies are installed and the application is bundled, which are essential steps for deploying a service using Docker Swarm. This helps in maintaining a consistent build environment across development and deployment environments.
---


Version updated for **https://github.com/sovarto/deploy-swarm-service** to version **v0.0.9**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-docker-swarm-cluster-services-stack) to find the latest changes.

## Action Summary

This GitHub Action automates the deployment of a Swarm service by executing `npm ci` and `npm run bundle` on Linux before pushing changes. It ensures that dependencies are installed and the application is bundled, which are essential steps for deploying a service using Docker Swarm. This helps in maintaining a consistent build environment across development and deployment environments.

## What's Changed

- fix: Update dependencies (5336574)
- fix: Update dependencies (e9c2fe7)
- fix: Update dependencies (0b48905)
- fix: Update dependencies (7cff14c)
- fix: Improve error output (7cd1d73)
- fix: Improve error output (92f3eca)
- fix: Improve error output (4db44f1)
- fix: Update dependencies (0ff3213)
- Create README.md (e1316ba)
- fix: Run bundle in Linux container to ensure dist is the same locally and on github (eb002ab)
