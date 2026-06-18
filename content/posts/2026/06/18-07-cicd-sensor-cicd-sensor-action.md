---
title: cicd-sensor
date: 2026-06-18 07:00:32 +00:00
tags:
  - cicd-sensor
  - GitHub Actions
draft: false
repo: https://github.com/cicd-sensor/cicd-sensor-action
marketplace: https://github.com/marketplace/actions/cicd-sensor
version: v0.0.34
dependentsNumber: "12"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/cicd-sensor/cicd-sensor-action** to version **v0.0.34**.

- This action is used across all versions by **12** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cicd-sensor) to find the latest changes.

## What's Changed

Released by @rung via [workflow run](https://github.com/cicd-sensor/cicd-sensor-action/actions/runs/27732616417).

## Highlights

This release updates `cicd-sensor-action` to use cicd-sensor `v0.0.39` by default.

- Picks up the runtime stability improvements from cicd-sensor `v0.0.39`, including duplicate `file_open` suppression, larger per-job event queues, and CPU-aware BPF ring buffer sizing.
  - This makes the action more stable for package installs, builds, and parallel CI jobs running on GitHub Actions.

## What's Changed
* chore(deps): update npm dependencies to v0.44.0 by @renovate[bot] in https://github.com/cicd-sensor/cicd-sensor-action/pull/26
* chore(deps): update dependency cicd-sensor/cicd-sensor to v0.0.39 by @renovate[bot] in https://github.com/cicd-sensor/cicd-sensor-action/pull/27


**Full Changelog**: https://github.com/cicd-sensor/cicd-sensor-action/compare/v0.0.33...v0.0.34
