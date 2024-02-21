---
title: Cache Container Images Action
date: 2024-02-21 03:30:01 +00:00
tags:
  - jamesmortensen
  - GitHub Actions
draft: false
repo: jamesmortensen/cache-container-images-action
marketplace: https://github.com/marketplace/actions/cache-container-images-action
version: v1.0.1
dependentsNumber: "0"
---


Version updated for **jamesmortensen/cache-container-images-action** to version **v1.0.1**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cache-container-images-action) to find the latest changes.

## Release notes

In some cases, the last updated time of the image is not retrieved if the action code cannot find the Go script that retrieves the information from DockerHub.  This fixes this issue by moving this logic inline into the action directly and converts the code from Go to Python.

This also improves the tests to make sure there is a green and red signal in CI, in GitHub Actions, if the logic were to fail due to an update to the action.  Thanks to @Borda for contributions to resolve these issues.

## What's Changed
* update GH output syntax by @Borda in https://github.com/jamesmortensen/cache-container-images-action/pull/1
* ci: use local version for PRs by @Borda in https://github.com/jamesmortensen/cache-container-images-action/pull/4
* replace go script with inline python code by @Borda in https://github.com/jamesmortensen/cache-container-images-action/pull/3

## New Contributors
* @Borda made their first contribution in https://github.com/jamesmortensen/cache-container-images-action/pull/1

**Full Changelog**: https://github.com/jamesmortensen/cache-container-images-action/compare/v1...v1.0.1
