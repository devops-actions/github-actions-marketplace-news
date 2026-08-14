---
title: Deploy Docker Swarm cluster services stack
date: 2026-08-14 06:03:24 +00:00
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
  The `deploy-swarm-service` GitHub Action is designed to automate the deployment of a Docker service on a Swarm cluster. It ensures that all necessary dependencies are installed and bundled before deploying, thereby reducing potential issues during runtime. This action helps streamline the process of deploying services in a containerized environment, making it easier to manage and scale applications across multiple nodes in a swarm.
---


Version updated for **https://github.com/sovarto/deploy-swarm-service** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-docker-swarm-cluster-services-stack) to find the latest changes.

## Action Summary

The `deploy-swarm-service` GitHub Action is designed to automate the deployment of a Docker service on a Swarm cluster. It ensures that all necessary dependencies are installed and bundled before deploying, thereby reducing potential issues during runtime. This action helps streamline the process of deploying services in a containerized environment, making it easier to manage and scale applications across multiple nodes in a swarm.

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
