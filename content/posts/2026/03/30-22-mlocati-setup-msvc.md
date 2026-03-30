---
title: Setup Visual C++ Development Environment
date: 2026-03-30 22:19:38 +00:00
tags:
  - mlocati
  - GitHub Actions
draft: false
repo: https://github.com/mlocati/setup-msvc
marketplace: https://github.com/marketplace/actions/setup-visual-c-development-environment
version: 1.3.1
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/mlocati/setup-msvc** to version **1.3.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-visual-c-development-environment) to find the latest changes.

## Action Summary

The **Setup MSVC GitHub Action** automates the configuration of a complete Microsoft Visual C++ (MSVC) development environment on Windows by invoking `vcvarsall.bat`. It streamlines the process by detecting installed Visual Studio versions, selecting the appropriate toolset, Windows SDK, and architecture, and exposing environment variables required for building C and C++ projects. This action simplifies setting up MSVC environments in CI workflows, supports various architectures and configurations, and includes debugging capabilities for enhanced troubleshooting.

## What's Changed

## What's Changed
* Accept arm64 as an alias of x64_arm64 by @mlocati in https://github.com/mlocati/setup-msvc/pull/5


**Full Changelog**: https://github.com/mlocati/setup-msvc/compare/1.3.0...1.3.1
