---
title: Run ESlint Action
date: 2024-11-22 00:57:38 +00:00
tags:
  - jrcligny
  - GitHub Actions
draft: false
repo: jrcligny/run-eslint-action
marketplace: https://github.com/marketplace/actions/run-eslint-action
version: v1.0.0
dependentsNumber: "3"
---


Version updated for **jrcligny/run-eslint-action** to version **v1.0.0**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-eslint-action) to find the latest changes.

## Release notes

### Added

- Input `pattern` to specify the files to lint. This input is optional (default: `**/*.js`).
- Input `overrideConfigFile` to specify the ESLint configuration file. This input is optional (default: none).
- List linted files that contain errors or warnings in the summary of the GitHub Actions workflow.
- Display ESLint errors and warnings as annotations in the Pull Request to associate messages with a particular file in your repository.
