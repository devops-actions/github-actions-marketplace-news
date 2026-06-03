---
title: BoardReadyOps - Hardware Fabrication Gate
date: 2026-06-03 06:51:43 +00:00
tags:
  - oaslananka
  - GitHub Actions
draft: false
repo: https://github.com/oaslananka/boardreadyops
marketplace: https://github.com/marketplace/actions/boardreadyops-hardware-fabrication-gate
version: v1.2.2
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/oaslananka/boardreadyops** to version **v1.2.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/boardreadyops-hardware-fabrication-gate) to find the latest changes.

## What's Changed

## BoardReadyOps v1.2.2

This release publishes BoardReadyOps as a GitHub Marketplace Action and completes the v1.2.x stabilization pass.

### Highlights

- Publishes the root `action.yml` metadata for GitHub Marketplace discovery.
- Stabilizes the v1.2.1/v1.2.2 release path after CI, dist, changelog, and metadata fixes.
- Restores release integrity by keeping generated bundles, package metadata, and action metadata aligned.
- Keeps the action suitable for board-ready CI governance, fabrication readiness checks, release evidence, and repository quality workflows.

### Validation

- CI passed on `main`.
- Release workflows completed.
- Branch protection was restored on `main`.
- Required checks are active and current.
- Marketplace metadata validation reports: “Everything looks good!”

### Usage

```yaml
- name: Run BoardReadyOps
  uses: oaslananka/boardreadyops@v1.2.2
```
