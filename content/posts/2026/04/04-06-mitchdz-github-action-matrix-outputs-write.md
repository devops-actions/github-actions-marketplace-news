---
title: Matrix outputs - write node24
date: 2026-04-04 06:10:00 +00:00
tags:
  - mitchdz
  - GitHub Actions
draft: false
repo: https://github.com/mitchdz/github-action-matrix-outputs-write
marketplace: https://github.com/marketplace/actions/matrix-outputs-write-node24
version: v2-alpha
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/mitchdz/github-action-matrix-outputs-write** to version **v2-alpha**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/matrix-outputs-write-node24) to find the latest changes.

## Action Summary

The `cloudposse/github-action-matrix-outputs-write` GitHub Action addresses a limitation in GitHub Actions where only the latest iteration's outputs from matrix jobs are available for downstream jobs. It enables storing and referencing outputs from all matrix iterations, facilitating workflows that depend on aggregated results across multiple matrix jobs. This action automates the process of writing matrix job outputs, which can then be read by its companion action, `github-action-matrix-outputs-read`.

## What's Changed

Bump action runtime from node20 to node24. Upgrade @actions/artifact
from 2.0.0 to 2.3.x to support the new GitHub artifact backend used
by upload-artifact/download-artifact v7.


