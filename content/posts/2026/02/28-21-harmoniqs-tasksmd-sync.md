---
title: Sync TASKS.md to GitHub Project
date: 2026-02-28 21:17:53 +00:00
tags:
  - harmoniqs
  - GitHub Actions
draft: false
repo: https://github.com/harmoniqs/tasksmd-sync
marketplace: https://github.com/marketplace/actions/sync-tasks-md-to-github-project
version: v1.1.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/harmoniqs/tasksmd-sync** to version **v1.1.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sync-tasks-md-to-github-project) to find the latest changes.

## Action Summary

The `tasksmd-sync` GitHub Action automates the synchronization of task definitions written in `TASKS.md` files with GitHub Project boards, treating the `TASKS.md` file as the source of truth. It parses, updates, and maintains consistency between the file and the project board by creating, updating, or archiving tasks based on changes in the file. This tool streamlines project management by enabling centralized tracking of tasks across repositories in a structured and human-readable format.

## Release notes

## What's Changed
* Remove due date syncing from sync pipeline by @Copilot in https://github.com/harmoniqs/tasksmd-sync/pull/19
* Post dry-run PR comment only when TASKS.md changes, edit in place by @Copilot in https://github.com/harmoniqs/tasksmd-sync/pull/21
* add task bootstrapping by @jack-champagne in https://github.com/harmoniqs/tasksmd-sync/pull/22
* fix tasks file by @jack-champagne in https://github.com/harmoniqs/tasksmd-sync/pull/23
* Fix unarchive issue reopening and archive-done idempotency by @Copilot in https://github.com/harmoniqs/tasksmd-sync/pull/26

## New Contributors
* @Copilot made their first contribution in https://github.com/harmoniqs/tasksmd-sync/pull/19

**Full Changelog**: https://github.com/harmoniqs/tasksmd-sync/compare/v1...v1.1.0
