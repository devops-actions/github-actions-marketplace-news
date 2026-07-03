---
title: Setup Modern C++ Development Environment
date: 2026-07-03 06:32:38 +00:00
tags:
  - wx257osn2
  - GitHub Actions
draft: false
repo: https://github.com/wx257osn2/cxx_environment
marketplace: https://github.com/marketplace/actions/setup-modern-c-development-environment
version: v3.5.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/wx257osn2/cxx_environment** to version **v3.5.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-modern-c-development-environment) to find the latest changes.

## What's Changed

- workaround for non-UTC timezone host environment
    - Singularity/Apptainer binds `Etc/UTC` to host timezone at default
- speed up CI
- bump up actions
    - including apptainer 1.4.4 -> 1.5.2
- update msvc-wine
