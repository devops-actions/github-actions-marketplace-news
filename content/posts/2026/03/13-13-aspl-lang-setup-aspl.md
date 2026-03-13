---
title: Setup ASPL Installation
date: 2026-03-13 13:34:20 +00:00
tags:
  - aspl-lang
  - GitHub Actions
draft: false
repo: https://github.com/aspl-lang/setup-aspl
marketplace: https://github.com/marketplace/actions/setup-aspl-installation
version: v1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/aspl-lang/setup-aspl** to version **v1.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-aspl-installation) to find the latest changes.

## Action Summary

The Setup ASPL GitHub Action automates the installation of the ASPL programming environment, including its compiler, standard library, and related components, in a GitHub Actions runner. It simplifies the process of configuring the development environment, enabling users to seamlessly build and compile ASPL projects in their CI/CD workflows.

## Release notes

* Now uses the `GITHUB_TOKEN` for authentication when downloading and installing ASPL. This prevents rate limit errors inside GitHub Actions.
* Renamed to "Setup ASPL Installation".
