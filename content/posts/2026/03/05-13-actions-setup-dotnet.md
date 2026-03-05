---
title: Setup .NET Core SDK
date: 2026-03-05 13:30:41 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: https://github.com/actions/setup-dotnet
marketplace: https://github.com/marketplace/actions/setup-net-core-sdk
version: v5.2.0
dependentsNumber: "310,452"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/actions/setup-dotnet** to version **v5.2.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **310,452** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-net-core-sdk) to find the latest changes.

## Action Summary

The `setup-dotnet` GitHub Action automates the configuration of a .NET CLI environment in workflows by downloading and caching specified .NET SDK versions, adding them to the system PATH, and enabling authentication for private package sources. It simplifies the setup of .NET development environments, supports multiple SDK versions and architectures, and registers problem matchers to streamline error handling during builds and executions.

## Release notes

## What's changed

### Enhancements
* Add support for workloads input by @gowridurgad in https://github.com/actions/setup-dotnet/pull/693
* Add support for optional architecture input for cross-architecture .NET installs by @priya-kinthali in https://github.com/actions/setup-dotnet/pull/700

### Dependency Updates
* Upgrade fast-xml-parser from 4.4.1 to 5.3.6 by @dependabot in https://github.com/actions/setup-dotnet/pull/671
* Upgrade minimatch from 3.1.2 to 3.1.5 by @dependabot in https://github.com/actions/setup-dotnet/pull/705

**Full Changelog**: https://github.com/actions/setup-dotnet/compare/v5...v5.2.0
