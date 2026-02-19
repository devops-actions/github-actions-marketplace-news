---
title: Docker Swarm Deploy Action
date: 2026-02-19 21:50:29 +00:00
tags:
  - jrm402
  - GitHub Actions
draft: false
repo: https://github.com/jrm402/docker-stack-deploy
marketplace: https://github.com/marketplace/actions/docker-swarm-deploy-action
version: v1.2.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/jrm402/docker-stack-deploy** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-swarm-deploy-action) to find the latest changes.

## Action Summary

The **Docker Stack Deploy Action** is a GitHub Action designed to automate the deployment of Docker stacks on a remote Docker Swarm manager node. It simplifies the process of securely connecting to the remote host via SSH and executing deployment commands, supporting custom stack configurations and optional Docker registry authentication. This action is ideal for streamlining Docker-based CI/CD workflows by automating stack deployment tasks.

## Release notes

### Changes

- Feat: Pipe the Docker login password to the stdin instead of using the `--password` flag.


