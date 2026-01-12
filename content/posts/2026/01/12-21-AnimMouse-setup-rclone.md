---
title: Setup Rclone action
date: 2026-01-12 21:17:30 +00:00
tags:
  - AnimMouse
  - GitHub Actions
draft: false
repo: https://github.com/AnimMouse/setup-rclone
marketplace: https://github.com/marketplace/actions/setup-rclone-action
version: v1.12.0
dependentsNumber: "301"
---


Version updated for **https://github.com/AnimMouse/setup-rclone** to version **v1.12.0**.
- This action is used across all versions by **301** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-rclone-action) to find the latest changes.

## Action Summary

This GitHub Action simplifies the setup of Rclone in GitHub Actions workflows by automating its installation and configuration. It enables users to utilize Rclone for file transfers and synchronization tasks with various storage backends, addressing the need for efficient configuration management, including support for encrypted, compressed, and plain-text configurations. The action enhances workflows by providing flexibility in handling Rclone configurations and integrating service account files for scalable operations.

## Release notes

# Changelog:
* Change `.yml` to `.yaml`.
* Update actions/cache to v5.
* Add support for arm64 Windows.
* Remove default false on inputs since it is treated as string not boolean.
* Use semantic versioning on releases.
