---
title: Deploy to Pipecat Cloud
date: 2026-04-27 06:37:50 +00:00
tags:
  - daily-co
  - GitHub Actions
draft: false
repo: https://github.com/daily-co/pipecat-cloud-deploy-action
marketplace: https://github.com/marketplace/actions/deploy-to-pipecat-cloud
version: v2.0.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/daily-co/pipecat-cloud-deploy-action** to version **v2.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-pipecat-cloud) to find the latest changes.

## Action Summary

This GitHub Action automates the process of building and deploying Pipecat agents to Pipecat Cloud as part of CI/CD workflows. It eliminates the need for local Docker setups or registry configurations by leveraging Pipecat Cloud's infrastructure for cloud-based Docker image builds, smart caching, and deployment readiness polling. The action streamlines tasks such as scaling, region configuration, and secret management, making deployments more efficient and reliable.

## What's Changed

## [2.0.3](https://github.com/daily-co/pipecat-cloud-deploy-action/compare/v2.0.2...v2.0.3) (2026-04-26)


### Bug Fixes

* exclude component name from release-please tags ([#8](https://github.com/daily-co/pipecat-cloud-deploy-action/issues/8)) ([5cb82ad](https://github.com/daily-co/pipecat-cloud-deploy-action/commit/5cb82adf27816faa70f71ef8f5c2a316751b000b))
* patch undici vulnerabilities via npm overrides ([#10](https://github.com/daily-co/pipecat-cloud-deploy-action/issues/10)) ([178ba38](https://github.com/daily-co/pipecat-cloud-deploy-action/commit/178ba383e0e1bef2dbc0e10d0edb0cca1d477f58))
