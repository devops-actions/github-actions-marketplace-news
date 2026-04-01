---
title: Deploy to Pipecat Cloud
date: 2026-04-01 06:17:06 +00:00
tags:
  - daily-co
  - GitHub Actions
draft: false
repo: https://github.com/daily-co/pipecat-cloud-deploy-action
marketplace: https://github.com/marketplace/actions/deploy-to-pipecat-cloud
version: v2.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/daily-co/pipecat-cloud-deploy-action** to version **v2.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-pipecat-cloud) to find the latest changes.

## Action Summary

This GitHub Action automates the process of building and deploying Pipecat agents to Pipecat Cloud, streamlining CI/CD workflows for developers. It eliminates the need for local Docker setups or registry credentials by utilizing cloud-based builds, provides smart caching for efficient workflows, and ensures deployments are ready before marking them successful. Additionally, it allows configuration of scaling, regions, secrets, and other deployment parameters for full control.

## What's Changed

## Bug fix

- Fix build cache collisions in monorepos where multiple agents share the same `build-context` but use different `dockerfile` paths. The Dockerfile path is now included in the cache key hash.
