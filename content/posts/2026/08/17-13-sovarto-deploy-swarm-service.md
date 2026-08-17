---
title: Deploy Docker Swarm cluster services stack
date: 2026-08-17 13:42:46 +00:00
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
  The `deploy-swarm-service` GitHub Action automates the deployment of a Dockerized service to a Swarm cluster. It performs the following tasks: builds and bundles the service using npm, commits the built files (specifically the `dist` directory), and deploys them to a Swarm cluster. This ensures that the latest version of the service is always running on the swarm nodes.
---


Version updated for **https://github.com/sovarto/deploy-swarm-service** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-docker-swarm-cluster-services-stack) to find the latest changes.

## Action Summary

The `deploy-swarm-service` GitHub Action automates the deployment of a Dockerized service to a Swarm cluster. It performs the following tasks: builds and bundles the service using npm, commits the built files (specifically the `dist` directory), and deploys them to a Swarm cluster. This ensures that the latest version of the service is always running on the swarm nodes.

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
