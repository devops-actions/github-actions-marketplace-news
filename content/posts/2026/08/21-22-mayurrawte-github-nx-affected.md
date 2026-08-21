---
title: Nx Affected Projects
date: 2026-08-21 22:04:30 +00:00
tags:
  - mayurrawte
  - GitHub Actions
draft: false
repo: https://github.com/mayurrawte/github-nx-affected
marketplace: https://github.com/marketplace/actions/nx-affected-projects
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates smart deploys for Nx monorepos by using the `nx affected` command to identify changed projects. It outputs a matrix-ready JSON array of affected apps, allowing users to fan out CI jobs on what actually changed. The action handles base and head SHAs automatically and provides optional features such as auto-deepening history and versioning Node.js and package managers.
---


Version updated for **https://github.com/mayurrawte/github-nx-affected** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nx-affected-projects) to find the latest changes.

## Action Summary

This GitHub Action automates smart deploys for Nx monorepos by using the `nx affected` command to identify changed projects. It outputs a matrix-ready JSON array of affected apps, allowing users to fan out CI jobs on what actually changed. The action handles base and head SHAs automatically and provides optional features such as auto-deepening history and versioning Node.js and package managers.

## What's Changed

## Nx Affected v1.0.0

One-step composite action that detects affected Nx projects and outputs **matrix-ready JSON arrays** for fan-out builds, tests, and deploys.

### Features
- `affected`, `affected-apps`, `affected-libs` — JSON arrays ready for `fromJSON()` in a matrix strategy
- `has-affected` boolean + `count` — skip whole jobs when nothing changed
- `base-sha` output — resolved comparison base
- Smart base detection: PRs use `pull_request.base.sha`, pushes use `event.before`, falls back to `HEAD~1`
- `auto-deepen` for shallow clones
- npm / yarn / pnpm auto-detection from lockfile
- `target` filtering (only projects with a `build`/`test`/`deploy` target)
- `working-directory` support for nested workspaces

### Quick start
```yaml
- uses: mayurrawte/github-nx-affected@v1
  id: nx
  with:
    target: build
- if: steps.nx.outputs.has-affected == 'true'
  run: echo "Building ${{ steps.nx.outputs.affected-apps }}"
```

Tested on Ubuntu + macOS with npm, yarn, and pnpm workspaces.
