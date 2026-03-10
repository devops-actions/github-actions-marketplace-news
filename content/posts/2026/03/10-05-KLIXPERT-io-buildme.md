---
title: .buildme - Simple Build Action
date: 2026-03-10 05:57:05 +00:00
tags:
  - KLIXPERT-io
  - GitHub Actions
draft: false
repo: https://github.com/KLIXPERT-io/buildme
marketplace: https://github.com/marketplace/actions/buildme-simple-build-action
version: v2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/KLIXPERT-io/buildme** to version **v2**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/buildme-simple-build-action) to find the latest changes.

## Action Summary

The **Buildme GitHub Action** automates the process of identifying and building projects in a repository by searching for `.buildme` files, verifying the existence of `package.json` files with a `build` script, and executing the build process in a clean, consistent environment. This action addresses the challenges of managing build artifacts and environment inconsistencies, particularly in projects like WordPress plugins and themes, by ensuring fresh and standardized builds during every deployment. It simplifies workflows, eliminates the need for pre-built files, and reduces developer overhead.

## Release notes

Exit on build errors (set -e) — npm install/build failures now stop the pipeline
