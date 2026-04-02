---
title: Deploy to Pipecat Cloud
date: 2026-04-02 13:59:28 +00:00
tags:
  - daily-co
  - GitHub Actions
draft: false
repo: https://github.com/daily-co/pipecat-cloud-deploy-action
marketplace: https://github.com/marketplace/actions/deploy-to-pipecat-cloud
version: v2.0.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/daily-co/pipecat-cloud-deploy-action** to version **v2.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-pipecat-cloud) to find the latest changes.

## Action Summary

The "Deploy to Pipecat Cloud" GitHub Action automates the process of building and deploying Pipecat agents to Pipecat Cloud, streamlining CI/CD workflows. It eliminates the need for local Docker setups or external registries by leveraging cloud-based builds, offers smart caching for efficient deployments, and ensures readiness by polling for deployment availability. Key capabilities include support for configuring scaling, regions, secrets, and using pre-built images or existing cloud builds.

## What's Changed

## [2.0.2](https://github.com/daily-co/pipecat-cloud-deploy-action/compare/v2.0.1...v2.0.2) (2026-04-01)

### Bug Fixes

* filter client-side cache lookup by dockerfilePath ([#4](https://github.com/daily-co/pipecat-cloud-deploy-action/issues/4)) ([b82f505](https://github.com/daily-co/pipecat-cloud-deploy-action/commit/b82f5053a3a992de89878781c4662da6ef33051b))
* lint PR title instead of individual commits for squash merge compatibility ([#6](https://github.com/daily-co/pipecat-cloud-deploy-action/issues/6)) ([f9cd73e](https://github.com/daily-co/pipecat-cloud-deploy-action/commit/f9cd73e205999041b160913208069b08f32ca799))

### Miscellaneous

* set up release-please, commitlint, and major tag workflow ([#5](https://github.com/daily-co/pipecat-cloud-deploy-action/issues/5)) ([fab1eb8](https://github.com/daily-co/pipecat-cloud-deploy-action/commit/fab1eb88e0fa13cef0dfc9590dbbe29f4cc3ce3d))
