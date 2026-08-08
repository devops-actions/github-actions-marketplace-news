---
title: Zuke Build
date: 2026-08-08 21:48:59 +00:00
tags:
  - zuke-build
  - GitHub Actions
draft: false
repo: https://github.com/zuke-build/zuke
marketplace: https://github.com/marketplace/actions/zuke-build
version: v1.0.2
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The GitHub Action automates the execution of shell commands in your project using a tagged template that simplifies process running with sensible defaults such as capturing output and throwing on failure. It provides a simple, explicit approach to building tasks by focusing on discovery, building a dependency graph, sorting targets, and executing them.
---


Version updated for **https://github.com/zuke-build/zuke** to version **v1.0.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zuke-build) to find the latest changes.

## Action Summary

The GitHub Action automates the execution of shell commands in your project using a tagged template that simplifies process running with sensible defaults such as capturing output and throwing on failure. It provides a simple, explicit approach to building tasks by focusing on discovery, building a dependency graph, sorting targets, and executing them.

## What's Changed

 Updates `step-security/harden-runner` to v2.20.1.

Nothing about the action's interface changes: the same seven inputs, the same behaviour, the same ordering. This exists so the bump reaches anyone sing zuke-build/zuke@v1 — a pinned action only ships a fix when the tag it is pinned to moves.

Pin the full commit SHA rather than the moving v1 tag: `zuke-build/zuke@5400f044d0b56206b0fa48c90b30486df205c7c6`
