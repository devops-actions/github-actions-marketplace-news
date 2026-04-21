---
title: Setup tenv
date: 2026-04-21 06:28:03 +00:00
tags:
  - rsclarke
  - GitHub Actions
draft: false
repo: https://github.com/rsclarke/setup-tenv
marketplace: https://github.com/marketplace/actions/setup-tenv
version: v2.0.0
dependentsNumber: "6"
actionType: Composite
---


Version updated for **https://github.com/rsclarke/setup-tenv** to version **v2.0.0**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-tenv) to find the latest changes.

## Action Summary

The **Setup tenv GitHub Action** automates the installation of the `tenv` tool and a specified infrastructure tool (e.g., Terraform or OpenTofu) at a specific version, ensuring version management and consistency across workflows. It includes caching to optimize performance and leverages signature verification to ensure the authenticity of downloaded binaries, streamlining secure and efficient tool setup in CI/CD pipelines.

## What's Changed

## What's Changed
* chore(deps): bump actions/cache from 5.0.4 to 5.0.5 by @dependabot[bot] in https://github.com/rsclarke/setup-tenv/pull/21
* fix: tighten tenv release download curls by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/22
* fix: default tenv to latest release by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/23
* feat: use setup-cosign only on tenv cache misses by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/24
* docs: use version placeholders in README examples by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/25


**Full Changelog**: https://github.com/rsclarke/setup-tenv/compare/v1.0.1...v2.0.0
