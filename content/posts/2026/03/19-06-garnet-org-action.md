---
title: Garnet Runtime Visibility
date: 2026-03-19 06:01:13 +00:00
tags:
  - garnet-org
  - GitHub Actions
draft: false
repo: https://github.com/garnet-org/action
marketplace: https://github.com/marketplace/actions/garnet-runtime-visibility
version: v2
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/garnet-org/action** to version **v2**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/garnet-runtime-visibility) to find the latest changes.

## Action Summary

This GitHub Action provides runtime profiling and behavioral assertions for CI/CD workflows, enabling detailed visibility into process spawns, network calls, and file access during workflow executions. It automates security monitoring and debugging by capturing kernel-level data and generating behavioral profiles and runtime assertions, which surface as job summaries or pull request comments. The action helps developers identify unexpected behaviors and provides full lineage evidence for improved security and troubleshooting.

## Release notes

# Garnet Runtime Security v2

This release provides the Garnet Runtime Security for GitHub Actions.

## Usage

```yaml
- name: Run Garnet Runtime Security
  uses: garnet-org/action@v2
  with:
    api_token: XXXXX
```

For more details, see the [Garnet Dashboard](https://dashboard.garnet.ai).


