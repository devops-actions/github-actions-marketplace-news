---
title: vilancer-bugbit
date: 2026-07-06 15:21:17 +00:00
tags:
  - Vilancer
  - GitHub Actions
draft: false
repo: https://github.com/Vilancer/bugbit
marketplace: https://github.com/marketplace/actions/vilancer-bugbit
version: v1.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Vilancer/bugbit** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vilancer-bugbit) to find the latest changes.

## What's Changed

## Fixed

- **action.yml load failure** — Removed invalid workflow expression from action metadata that caused `Failed to load action.yml` on all consumers.
- **workflow_dispatch runtime** — `resolveEvent` uses `fetch` for GitHub API instead of an unbundled `@actions/github` import.

`@v1` updated to this release.
