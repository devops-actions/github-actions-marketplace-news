---
title: RISC OS Build Service runner
date: 2026-04-15 06:21:49 +00:00
tags:
  - gerph
  - GitHub Actions
draft: false
repo: https://github.com/gerph/riscos-build-service-action
marketplace: https://github.com/marketplace/actions/risc-os-build-service-runner
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gerph/riscos-build-service-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/risc-os-build-service-runner) to find the latest changes.

## Action Summary

The **RISC OS Build Service GitHub Action** automates the process of building RISC OS projects by utilizing the RISC OS Build Service, eliminating the need for a local RISC OS environment or manual toolchain configuration. It sends repository files to the service, executes build commands defined in a `.robuild.yaml` file, and retrieves the built outputs (e.g., artifacts, binaries) for further use. This action streamlines RISC OS project builds, supports architecture configurations, and integrates seamlessly into CI/CD pipelines.

## What's Changed

# Release v1

First release to make it easier to build with RISC OS on GitHub. Rather than having to set up the tooling yourself, the action takes all the files, runs the tool, and returns the resulting files as outputs.

