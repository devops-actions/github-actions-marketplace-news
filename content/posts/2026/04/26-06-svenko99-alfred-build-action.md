---
title: Build Alfred Workflow
date: 2026-04-26 06:12:55 +00:00
tags:
  - svenko99
  - GitHub Actions
draft: false
repo: https://github.com/svenko99/alfred-build-action
marketplace: https://github.com/marketplace/actions/build-alfred-workflow
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/svenko99/alfred-build-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-alfred-workflow) to find the latest changes.

## Action Summary

This GitHub Action automates the packaging of an [Alfred](https://www.alfredapp.com/) workflow directory into a distributable `.alfredworkflow` file, simplifying the process outlined in the official packaging guide. It streamlines tasks such as zipping workflow contents, handling export variables, and excluding unnecessary files, making it easier for developers to prepare workflows for distribution. The action provides outputs like the packaged file path, workflow name, version, and bundle identifier, enabling seamless integration into CI/CD pipelines.

## What's Changed

## Changes

- **Breaking:** default `workflow-dir` renamed from `workflow` to `Workflow`. Pass `workflow-dir: workflow` explicitly if you keep the old layout.
- Skip `.DS_Store` files when packaging.
- README: clearer local development setup (create in Alfred → move into repo → symlink back).
