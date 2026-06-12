---
title: Rekl0w Vue Doctor
date: 2026-06-12 22:56:00 +00:00
tags:
  - Rekl0w
  - GitHub Actions
draft: false
repo: https://github.com/Rekl0w/vue-doctor
marketplace: https://github.com/marketplace/actions/rekl0w-vue-doctor
version: v0.5.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Rekl0w/vue-doctor** to version **v0.5.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rekl0w-vue-doctor) to find the latest changes.

## What's Changed

## v0.5.1

### What's Changed

- Added an animated first-run scan introduction and post-scan setup prompt so Vue Doctor can guide users into scripts, dependencies, GitHub Actions, hooks, and agent skill setup from the CLI.
- Added JavaScript and TypeScript config loading, including `vue-doctor.config.ts` support and a typed `defineConfig` helper.
- Fixed stale GitHub Action inline review comments when a later run has diagnostics but no commentable changed lines.
- Moved GitHub Action feedback logic into a tested helper and added focused tests for review comments and commit status output.
- Added ESLint and Vitest coverage gates to strengthen release verification.
- Updated local testing and contributor docs for the current `--blocking` and packaged-tarball workflows.

