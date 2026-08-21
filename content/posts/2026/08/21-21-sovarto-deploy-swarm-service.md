---
title: Deploy Docker Swarm cluster services stack
date: 2026-08-21 21:55:30 +00:00
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
  This GitHub Action automates the deployment of a Docker Swarm service by performing the following tasks before the push to a repository:
  
  - Running `npm ci` and `npm run bundle` commands on the build machine to ensure dependencies are installed and all necessary files are bundled.
  - Committing the contents of the `dist` folder, which typically contains compiled or optimized artifacts for deployment.
  
  This ensures that when changes are pushed to the repository, the service is prepared for deployment without manual intervention.
---


Version updated for **https://github.com/sovarto/deploy-swarm-service** to version **v0.0.9**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-docker-swarm-cluster-services-stack) to find the latest changes.

## Action Summary

This GitHub Action automates the deployment of a Docker Swarm service by performing the following tasks before the push to a repository:

- Running `npm ci` and `npm run bundle` commands on the build machine to ensure dependencies are installed and all necessary files are bundled.
- Committing the contents of the `dist` folder, which typically contains compiled or optimized artifacts for deployment.

This ensures that when changes are pushed to the repository, the service is prepared for deployment without manual intervention.

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
