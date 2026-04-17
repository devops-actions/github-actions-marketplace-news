---
title: Build Debian package on multiple architectures
date: 2026-04-17 06:34:01 +00:00
tags:
  - andy5995
  - GitHub Actions
draft: false
repo: https://github.com/andy5995/gh-action-build-deb
marketplace: https://github.com/marketplace/actions/build-debian-package-on-multiple-architectures
version: v1.2.0
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/andy5995/gh-action-build-deb** to version **v1.2.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-debian-package-on-multiple-architectures) to find the latest changes.

## Action Summary

This GitHub Action automates the process of building Debian `.deb` packages for various architectures and Debian releases. It creates both source and binary packages, placing the outputs in a designated directory. By streamlining the Debian package build process, it simplifies workflows for developers targeting multiple architectures or requiring consistent, reproducible package builds.

## What's Changed

* Fix running dpkg as root
* Added lintian to the Docker image
* Added lintian_check option to run lintian on the built package
* Added fail_on_lintian_error option to control whether a lintian failure
  fails the action (default: true, only applies when lintian_check is true)
* Include major version in Docker image tags (e.g. bookworm-v1) so images
  from prior major releases remain available after a version bump

**Full Changelog**: https://github.com/andy5995/gh-action-build-deb/compare/v1...v1.2.0
