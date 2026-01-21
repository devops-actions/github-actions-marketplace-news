---
title: Setup .NET Fast
date: 2026-01-21 21:39:45 +00:00
tags:
  - fast-actions
  - GitHub Actions
draft: false
repo: https://github.com/fast-actions/setup-dotnet
marketplace: https://github.com/marketplace/actions/setup-net-fast
version: v1.2.0
dependentsNumber: "2"
---


Version updated for **https://github.com/fast-actions/setup-dotnet** to version **v1.2.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-net-fast) to find the latest changes.

## Action Summary

The `setup-dotnet` GitHub Action streamlines the installation of .NET SDKs, Runtimes, and ASP.NET Core Runtimes in CI workflows by enabling parallel downloads, automatic caching, and intelligent version resolution. It automates tasks such as resolving specific .NET versions (using wildcards, keywords, or `global.json`) and skipping redundant installations, significantly improving performance and flexibility. This action is ideal for scenarios requiring multi-version testing or efficient .NET environment setup.

## Release notes

## What's Changed
* feat: skip caching if cache already exists by @xC0dex in https://github.com/fast-actions/setup-dotnet/pull/39
* feat: update installer to use the API by @xC0dex in https://github.com/fast-actions/setup-dotnet/pull/40
* chore: add benchmarks by @xC0dex in https://github.com/fast-actions/setup-dotnet/pull/41
* fix: use release instead of runtime by @xC0dex in https://github.com/fast-actions/setup-dotnet/pull/45


**Full Changelog**: https://github.com/fast-actions/setup-dotnet/compare/v1...v1.2.0
