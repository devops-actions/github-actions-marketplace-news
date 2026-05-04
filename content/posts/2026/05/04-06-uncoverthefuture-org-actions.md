---
title: Uncover Actions
date: 2026-05-04 06:26:38 +00:00
tags:
  - uncoverthefuture-org
  - GitHub Actions
draft: false
repo: https://github.com/uncoverthefuture-org/actions
marketplace: https://github.com/marketplace/actions/uncover-actions
version: v1.6.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/uncoverthefuture-org/actions** to version **v1.6.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/uncover-actions) to find the latest changes.

## Action Summary

UActions - Local Container Deployment is a lightweight tool for deploying containerized applications locally or to remote servers using Podman and Traefik. It automates tasks such as domain routing, container management, reverse proxy configuration, and file-based auto-deployment, streamlining local development and CI/CD workflows. Key capabilities include seamless local or remote deployment, Let's Encrypt support, and integration with GitHub for automated PR creation.

## What's Changed

## [1.6.1](https://github.com/uncoverthefuture-org/actions/compare/v1.6.0...v1.6.1) (2026-05-03)


### Bug Fixes

* **compat:** make changes backward-safe for open-source users ([9341a02](https://github.com/uncoverthefuture-org/actions/commit/9341a0207a0d57f775c76991489e0425b5483749))
* **traefik:** default container port to 80 when Traefik is enabled ([d20a054](https://github.com/uncoverthefuture-org/actions/commit/d20a05455be1cfdd386be932000901f86a3a5c2f))
* **traefik:** remove .service from HTTP redirect router, add permanent redirect ([bcb646a](https://github.com/uncoverthefuture-org/actions/commit/bcb646a817459fc9aa795bf3caa49b4851fa1eae))
* **traefik:** remove traefik.docker.network label (causes 502 with Podman) ([e36804e](https://github.com/uncoverthefuture-org/actions/commit/e36804e39521cc73b4d9156ecb1985046b29e836))
* **traefik:** resolve 502 Bad Gateway and optimize Podman labels ([e994a7b](https://github.com/uncoverthefuture-org/actions/commit/e994a7b6867f5b0ab2af177155f0f6afeb50ca74))


### Reverts

* restore auto www-alias detection for apex domains ([2027d29](https://github.com/uncoverthefuture-org/actions/commit/2027d29d98dddb4f86e139eec4db6e880cb0662e))
