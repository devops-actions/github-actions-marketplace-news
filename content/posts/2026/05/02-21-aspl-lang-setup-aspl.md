---
title: Setup ASPL Installation
date: 2026-05-02 21:33:21 +00:00
tags:
  - aspl-lang
  - GitHub Actions
draft: false
repo: https://github.com/aspl-lang/setup-aspl
marketplace: https://github.com/marketplace/actions/setup-aspl-installation
version: v1.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/aspl-lang/setup-aspl** to version **v1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-aspl-installation) to find the latest changes.

## Action Summary

The "Setup ASPL" GitHub Action automates the installation and configuration of the ASPL programming environment, including its compiler and standard library, in a workflow runner's workspace. It streamlines the setup process for projects using ASPL, enabling seamless compilation and development within CI/CD pipelines.

## What's Changed

* Use `github.token` instead of `secrets.GITHUB_TOKEN` as GitHub does not seem to support the latter here anymore.
