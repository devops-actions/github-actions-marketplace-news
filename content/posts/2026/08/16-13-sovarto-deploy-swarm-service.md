---
title: Deploy Docker Swarm cluster services stack
date: 2026-08-16 13:59:32 +00:00
tags:
  - sovarto
  - GitHub Actions
draft: false
repo: https://github.com/sovarto/deploy-swarm-service
marketplace: https://github.com/marketplace/actions/deploy-docker-swarm-cluster-services-stack
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automates the deployment of a Swarm service by running `npm ci` and `npm run bundle` commands before pushing to the repository. It focuses on setting up dependencies and bundling JavaScript files, ensuring that the necessary components are in place before deploying the service using Docker Compose or another orchestration tool.
---


Version updated for **https://github.com/sovarto/deploy-swarm-service** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-docker-swarm-cluster-services-stack) to find the latest changes.

## Action Summary

This GitHub Action automates the deployment of a Swarm service by running `npm ci` and `npm run bundle` commands before pushing to the repository. It focuses on setting up dependencies and bundling JavaScript files, ensuring that the necessary components are in place before deploying the service using Docker Compose or another orchestration tool.

## What's Changed

- feat: Update to latest Docker version (6435c1d)
- feat: Explicitly set traefik inbound network (70d83f9)
- feat: Automatically set placement preferences based on placement constraints to spread containers of a service across nodes (51af2c2)
- feat: Add support for depends_on (688c023)
- feat: Add support for service labels (a36e5ea)
- fix: Fix restart policy to always restart because containers sometimes exit with code 0 even though they had an error (01b34f4)
- feat: Add support for multiple external routes (d99208c)
- feat: Improve update config (3c87f67)
- feat: Add support for mounts, max replicas per node and stop signal and grace period (90fa02a)
- feat: Add support for resource limits and reservations (b33b12f)
