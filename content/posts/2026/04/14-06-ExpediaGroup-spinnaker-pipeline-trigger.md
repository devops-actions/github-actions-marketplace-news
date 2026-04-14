---
title: spinnaker-pipeline-trigger
date: 2026-04-14 06:39:06 +00:00
tags:
  - ExpediaGroup
  - GitHub Actions
draft: false
repo: https://github.com/ExpediaGroup/spinnaker-pipeline-trigger
marketplace: https://github.com/marketplace/actions/spinnaker-pipeline-trigger
version: v1.2.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 16
---


Version updated for **https://github.com/ExpediaGroup/spinnaker-pipeline-trigger** to version **v1.2.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **16**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spinnaker-pipeline-trigger) to find the latest changes.

## Action Summary

The `spinnaker-pipeline-trigger` GitHub Action automates the process of triggering Spinnaker pipelines directly from GitHub Actions workflows. It solves the problem of integrating GitHub-based CI/CD workflows with Spinnaker by sending detailed payloads and parameters through AWS SNS to initiate specific pipelines. Key features include support for custom parameters, message attributes for targeting specific pipelines, and automatic inclusion of contextual GitHub data in the trigger payload.

## What's Changed

## [1.2.2](https://github.com/ExpediaGroup/spinnaker-pipeline-trigger/compare/v1.2.1...v1.2.2) (2026-04-13)


### Bug Fixes

* single-quote parameter values to handle YAML special characters ([ff14ae2](https://github.com/ExpediaGroup/spinnaker-pipeline-trigger/commit/ff14ae2b1b2982cc00c9b8933dba95b7eab0b2ba))
