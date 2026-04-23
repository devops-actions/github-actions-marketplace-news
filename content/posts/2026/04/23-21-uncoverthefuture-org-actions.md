---
title: Uncover Actions
date: 2026-04-23 21:42:31 +00:00
tags:
  - uncoverthefuture-org
  - GitHub Actions
draft: false
repo: https://github.com/uncoverthefuture-org/actions
marketplace: https://github.com/marketplace/actions/uncover-actions
version: v1.6.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/uncoverthefuture-org/actions** to version **v1.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/uncover-actions) to find the latest changes.

## Action Summary

UActions - Local Container Deployment is a lightweight tool designed for deploying containerized applications locally or to remote servers via SSH, using Podman and Traefik. It automates tasks like container management, domain routing, reverse proxy setup with Let's Encrypt, and auto-deployment on file changes, streamlining local development and CI/CD workflows. Key capabilities include support for both local and remote deployment modes, GitHub PR creation for Dockerfiles, and efficient resource usage.

## What's Changed

## [1.6.0](https://github.com/uncoverthefuture-org/actions/compare/v1.5.1...v1.6.0) (2026-04-23)


### Features

* add host_port output to ssh-container-deploy and support non-Traefik deployments ([41a82c4](https://github.com/uncoverthefuture-org/actions/commit/41a82c4800c162cf319889aa7b6e1717ab77eefe))
* enhance Traefik safety and port flexibility for existing web servers ([644cab2](https://github.com/uncoverthefuture-org/actions/commit/644cab24b9e1d7fcde0ec0f1c7605b74b725a94f))
* implement robust branch-based version resolution for main and develop ([6eb348c](https://github.com/uncoverthefuture-org/actions/commit/6eb348c9d0b9f0f1aaf94916f30bc36c63807495))
* robust versioning and enhanced traefik support ([6924407](https://github.com/uncoverthefuture-org/actions/commit/6924407e71cf650a20d7b28327a3cb63e0346931))


### Bug Fixes

* **app:** fix missing SSL parameters in dispatcher ([2adebc7](https://github.com/uncoverthefuture-org/actions/commit/2adebc7221aa2774ec6d75a3316407bef41ea8c3))
* **app:** fix missing SSL parameters in dispatcher and sync script defaults ([7ae5db6](https://github.com/uncoverthefuture-org/actions/commit/7ae5db666b56f0e26f1f1efa0be3fa39c7db077b))
* ensure containers always have working DNS resolution ([a989acc](https://github.com/uncoverthefuture-org/actions/commit/a989acc60316b099e43beab18e53157721f18fc3))
* ensure containers always have working DNS resolution ([4b30409](https://github.com/uncoverthefuture-org/actions/commit/4b30409c256d2979ef11b03496578711a80755ab))
* resolve manifest unknown and dev versioning policy ([df5e9c6](https://github.com/uncoverthefuture-org/actions/commit/df5e9c6f835772ba2d65f9aea3fc1edad44f92c8))
* resolve manifest unknown error and allow no versioning for development ([b5c36fa](https://github.com/uncoverthefuture-org/actions/commit/b5c36fa5d66348398a2fa2664631c6e55a7b8b0f))
