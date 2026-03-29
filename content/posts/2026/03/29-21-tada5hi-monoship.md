---
title: monoship
date: 2026-03-29 21:50:13 +00:00
tags:
  - tada5hi
  - GitHub Actions
draft: false
repo: https://github.com/tada5hi/monoship
marketplace: https://github.com/marketplace/actions/monoship
version: v2.0.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tada5hi/monoship** to version **v2.0.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/monoship) to find the latest changes.

## Action Summary

Monoship is a CLI tool and GitHub Action designed to automate the publishing of npm workspace packages to registries such as npmjs.org or GitHub Packages. It identifies unpublished packages by comparing their versions against the target registry and publishes only the necessary ones, streamlining CI/CD workflows. Monoship supports various authentication methods, including GitHub Actions' OIDC for tokenless publishing, and is compatible with npm's native publishing features when available.

## What's Changed

## [2.0.1](https://github.com/tada5hi/monoship/compare/v2.0.0...v2.0.1) (2026-03-29)


### Bug Fixes

* convert GitHub Action from Docker to composite for OIDC support ([#395](https://github.com/tada5hi/monoship/issues/395)) ([c4b0c63](https://github.com/tada5hi/monoship/commit/c4b0c63f0a072b89e71625cae0c3211602523861))
