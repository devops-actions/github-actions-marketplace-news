---
title: runs-on/action
date: 2026-08-04 15:00:29 +00:00
tags:
  - runs-on
  - GitHub Actions
draft: false
repo: https://github.com/runs-on/action
marketplace: https://github.com/marketplace/actions/runs-on-action
version: v2.3.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  The `runs-on/action` GitHub Action is designed to enhance RunsOn's features by providing magic caching, which allows for faster execution of workflows by caching dependencies and results. It also offers options to display environment variables, job costs, and additional metrics using CloudWatch agent. The action helps streamline the workflow process by reducing the time spent on repeated tasks and improving efficiency.
---


Version updated for **https://github.com/runs-on/action** to version **v2.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runs-on-action) to find the latest changes.

## Action Summary

The `runs-on/action` GitHub Action is designed to enhance RunsOn's features by providing magic caching, which allows for faster execution of workflows by caching dependencies and results. It also offers options to display environment variables, job costs, and additional metrics using CloudWatch agent. The action helps streamline the workflow process by reducing the time spent on repeated tasks and improving efficiency.

## What's Changed

## What's Changed
* Remove global sudo from action wrapper by @crohr in https://github.com/runs-on/action/pull/42
* Add sticky disk cache modes by @crohr in https://github.com/runs-on/action/pull/43
* Clean interrupted Git repacks before sticky snapshots by @crohr in https://github.com/runs-on/action/pull/48
* Scope cold Git mirrors to workflow history by @crohr in https://github.com/runs-on/action/pull/50
* Fix warm cache symlink merges by @crohr in https://github.com/runs-on/action/pull/52
* Authenticate read-only Git LFS lock requests by @crohr in https://github.com/runs-on/action/pull/51
* Refactor sticky cache runtime state by @crohr in https://github.com/runs-on/action/pull/46
* Allow verified Windows sticky mount roots by @crohr in https://github.com/runs-on/action/pull/53


**Full Changelog**: https://github.com/runs-on/action/compare/v2.2.0...v2.3.0
