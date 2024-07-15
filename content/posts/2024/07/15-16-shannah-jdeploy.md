---
title: Publish Native Installers
date: 2024-07-15 16:46:56 +00:00
tags:
  - shannah
  - GitHub Actions
draft: false
repo: shannah/jdeploy
marketplace: https://github.com/marketplace/actions/publish-native-installers
version: v4.0.49
dependentsNumber: "21"
---


Version updated for **shannah/jdeploy** to version **v4.0.49**.
- This action is used across all versions by **21** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-native-installers) to find the latest changes.

## Release notes

Fixes issue with

## What's Changed

* Apps that use java 8 on windows now use an alternate installation directory layout and uses a dedicated JVM.  Previously such apps were just auto-bumped to use Java 11, which works without this workaround. Now it will use an alternate app layout.

The new app layout is:

~/.jdeploy/apps/<appname>/bin/<App Title>.exe
~/.jdeploy/apps/<appname>/jre

**Full Changelog**: https://github.com/shannah/jdeploy/compare/4.0.33...v4.0.49
