---
title: Setup APM
date: 2026-03-11 13:36:04 +00:00
tags:
  - microsoft
  - GitHub Actions
draft: false
repo: https://github.com/microsoft/apm-action
marketplace: https://github.com/marketplace/actions/setup-apm
version: v1.3.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/microsoft/apm-action** to version **v1.3.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-apm) to find the latest changes.

## Action Summary

The APM Action is a GitHub Action designed to automate the installation and management of agent primitives (e.g., instructions, prompts, skills, agents) using the Agent Package Manager (APM). It simplifies CI workflows by enabling seamless installation, bundling, and restoration of agent dependencies, with options for isolated or packed deployments. This action streamlines the distribution and consistency of agent resources across jobs and environments, reducing manual configuration and setup effort.

## Release notes

### Fixed
- **Version pinning now works** — `apm-version` input correctly pins to the specified APM version using `@actions/tool-cache` v4 (download, extract, cache, add to PATH)
- Added `github-token` input (defaults to `${{ github.token }}`) to avoid GitHub API rate limits when resolving `latest`
- Replaced shell-based installer with in-process `fetch()` + `@actions/tool-cache` for reliability across all runner architectures

## What's Changed
* fix: implement version pinning with @actions/tool-cache v4 by @danielmeppiel in https://github.com/microsoft/apm-action/pull/11


**Full Changelog**: https://github.com/microsoft/apm-action/compare/v1.3.0...v1.3.1
