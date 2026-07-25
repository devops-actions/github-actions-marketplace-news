---
title: Register Jolter release
date: 2026-07-25 00:30:29 +00:00
tags:
  - jolterjs
  - GitHub Actions
draft: false
repo: https://github.com/jolterjs/register-release-action
marketplace: https://github.com/marketplace/actions/register-jolter-release
version: v1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Register Jolter Release Action is a GitHub Action designed to register a published plugin release with the Jolter registry. It submits release metadata and the repository-scoped GitHub token, while keeping the plugin artifacts hosted in the GitHub Release. The action automates the process of registering releases for plugins, handling semantic versioning, and ensuring safe re-runs when versions are already registered.
---


Version updated for **https://github.com/jolterjs/register-release-action** to version **v1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/register-jolter-release) to find the latest changes.

## Action Summary

The Register Jolter Release Action is a GitHub Action designed to register a published plugin release with the Jolter registry. It submits release metadata and the repository-scoped GitHub token, while keeping the plugin artifacts hosted in the GitHub Release. The action automates the process of registering releases for plugins, handling semantic versioning, and ensuring safe re-runs when versions are already registered.

## What's Changed

## Breaking change
> With this release we are upgrading the typescript version from v6 to v7 for building the project. This does not affect how the action works, it only affects the development workflow of this action.

## What's Changed
* deps: bump actions/setup-node from 6 to 7 in the github-actions group by @dependabot[bot] in https://github.com/jolterjs/register-release-action/pull/6
* deps: bump typescript from 6.0.3 to 7.0.2 by @dependabot[bot] in https://github.com/jolterjs/register-release-action/pull/5


**Full Changelog**: https://github.com/jolterjs/register-release-action/compare/v1...v1.1
