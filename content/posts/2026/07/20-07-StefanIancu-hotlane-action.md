---
title: hotlane deploy
date: 2026-07-20 07:25:23 +00:00
tags:
  - StefanIancu
  - GitHub Actions
draft: false
repo: https://github.com/StefanIancu/hotlane-action
marketplace: https://github.com/marketplace/actions/hotlane-deploy
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the deployment process with hotlane from GitHub Actions. It supports various commands such as pushing, testing, promoting, discarding, rolling back, and checking drift between live and source build versions. The action installs hotlane's binary, runs specified commands with optional arguments, and outputs verification results to the job summary or logs for failed pushes.
---


Version updated for **https://github.com/StefanIancu/hotlane-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hotlane-deploy) to find the latest changes.

## Action Summary

This GitHub Action automates the deployment process with hotlane from GitHub Actions. It supports various commands such as pushing, testing, promoting, discarding, rolling back, and checking drift between live and source build versions. The action installs hotlane's binary, runs specified commands with optional arguments, and outputs verification results to the job summary or logs for failed pushes.

## What's Changed

First release: install a pinned hotlane binary, run any client command (push by default), and surface the verify verdict as action outputs plus a job-summary table. See the README for deploy / rollback / drift-check workflow examples.
