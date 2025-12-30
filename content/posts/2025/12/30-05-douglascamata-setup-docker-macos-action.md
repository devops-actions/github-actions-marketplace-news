---
title: Setup Docker on macOS
date: 2025-12-30 05:28:20 +00:00
tags:
  - douglascamata
  - GitHub Actions
draft: false
repo: https://github.com/douglascamata/setup-docker-macos-action
marketplace: https://github.com/marketplace/actions/setup-docker-on-macos
version: v1.1.0
dependentsNumber: "235"
---


Version updated for **https://github.com/douglascamata/setup-docker-macos-action** to version **v1.1.0**.
- This action is used across all versions by **235** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-docker-on-macos) to find the latest changes.

## Action Summary

This GitHub Action sets up Docker on macOS runners by leveraging Colima, Lima-VM, and Homebrew. It automates the installation of required tools and configurations, simplifying the process of using Docker in macOS-based CI/CD workflows. The action is designed for simplicity and supports macOS environments with x86 processors, addressing the challenge of running Docker on macOS systems where native virtualization may not be feasible.

## Release notes

## What's Changed
* Remove support for retired `macos-13` by @GlassOfWhiskey in https://github.com/douglascamata/setup-docker-macos-action/pull/59
* Add self test to cover access via VM network address  by @douglascamata in https://github.com/douglascamata/setup-docker-macos-action/pull/57
* Install and configure `docker buildx` by @douglascamata in https://github.com/douglascamata/setup-docker-macos-action/pull/60


**Full Changelog**: https://github.com/douglascamata/setup-docker-macos-action/compare/v1.0.2...v1.1.0
