---
title: Workflow Dispatch
date: 2026-02-21 03:44:43 +00:00
tags:
  - benc-uk
  - GitHub Actions
draft: false
repo: https://github.com/benc-uk/workflow-dispatch
marketplace: https://github.com/marketplace/actions/workflow-dispatch
version: v1.3.0
dependentsNumber: "25,297"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/benc-uk/workflow-dispatch** to version **v1.3.0**.
- This action is used across all versions by **25,297** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/workflow-dispatch) to find the latest changes.

## Action Summary

This GitHub Action facilitates the automation of triggering one workflow from another using the `workflow_dispatch` event, enabling seamless chaining of workflows such as CI and CD processes. It solves the problem of maintaining separate workflows while allowing data transfer and optional waiting for the triggered workflow to complete. Key capabilities include cross-repo workflow triggering, passing input parameters, and monitoring triggered workflow statuses programmatically.

## Release notes

## What's Changed
* After 6 years GitHub finally added a way to return the run-id from the workflow_dispatch API, this means I can return the run-id and link URLs from this action 😎
* It also means the requested `wait-for-completion` option is now possible! 🥳 (with optional `wait-timeout-seconds` too)
* Mucho internal modernization, switched to esbuild, packages updated and Node v24 is the new default 👀

## Merges
* 2026 refresh by @benc-uk in https://github.com/benc-uk/workflow-dispatch/pull/83

**Full Changelog**: https://github.com/benc-uk/workflow-dispatch/compare/v1.2...v1.3.0
