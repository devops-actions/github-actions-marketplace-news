---
title: Setup YouTube Uploader
date: 2026-01-12 13:37:44 +00:00
tags:
  - AnimMouse
  - GitHub Actions
draft: false
repo: https://github.com/AnimMouse/setup-youtubeuploader
marketplace: https://github.com/marketplace/actions/setup-youtube-uploader
version: v2.2.0
dependentsNumber: "9"
---


Version updated for **https://github.com/AnimMouse/setup-youtubeuploader** to version **v2.2.0**.
- This action is used across all versions by **9** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-youtube-uploader) to find the latest changes.

## Action Summary

This GitHub Action sets up the [YouTube Uploader](https://github.com/porjo/youtubeuploader) tool in GitHub Actions workflows, enabling automated video uploads to YouTube. It simplifies the installation process by caching the required tool and handles authentication through encoded secrets, streamlining video upload tasks in CI/CD pipelines. Key capabilities include version specification, GitHub token integration, and support for process substitution on compatible systems.

## Release notes

# Changelog:
* Update actions/cache to v5.
* Change `.yml` to `.yaml`.
* Add support for arm64 macOS and Linux.
* Remove default false on inputs since it is treated as string not boolean.
* Use semantic versioning on releases.
