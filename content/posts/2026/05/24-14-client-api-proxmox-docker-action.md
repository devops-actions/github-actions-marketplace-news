---
title: Setup proxmox-docker
date: 2026-05-24 14:18:09 +00:00
tags:
  - client-api
  - GitHub Actions
draft: false
repo: https://github.com/client-api/proxmox-docker-action
marketplace: https://github.com/marketplace/actions/setup-proxmox-docker
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/client-api/proxmox-docker-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-proxmox-docker) to find the latest changes.

## Action Summary

The `proxmox-docker-action` GitHub Action automates the setup of test environments by starting a Proxmox-based Docker container, waiting for it to become healthy, and exposing its API for use in subsequent workflow steps. It simplifies the process of testing Proxmox products (e.g., PVE, PBS, PMG, PDM) by handling container initialization, environment variable exports, and cleanup, while also supporting matrix builds for running tests across multiple product versions. This action is ideal for CI workflows requiring isolated and reproducible Proxmox-based test setups.

## What's Changed

TypeScript composite action that starts a [proxmox-docker](https://github.com/client-api/proxmox-docker) test image, waits for it to become healthy, and exposes the API to subsequent steps.
