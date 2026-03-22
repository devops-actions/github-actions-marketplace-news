---
title: Setup tenv
date: 2026-03-22 21:43:29 +00:00
tags:
  - rsclarke
  - GitHub Actions
draft: false
repo: https://github.com/rsclarke/setup-tenv
marketplace: https://github.com/marketplace/actions/setup-tenv
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rsclarke/setup-tenv** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-tenv) to find the latest changes.

## Action Summary

The **"Setup tenv" GitHub Action** automates the installation and setup of the `tenv` tool, which is used to manage versions of infrastructure tools like Terraform or OpenTofu. It provides caching for efficient re-use, ensures binary authenticity via signature verification, and simplifies the process of installing specific tool versions in CI/CD workflows. This action helps streamline tool version management while enhancing security and reliability.

## Release notes

## What's Changed
* Version prefix match against binary output by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/1
* Fetch signatures and tarball for cosign by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/2
* Ensure v prefix on file downloads by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/3
* fix: resolve multiple bugs in composite action by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/7
* feat: cache cosign and tenv installations across workflow runs by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/10
* fix: delegate cosign version to cosign-installer by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/8
* refactor: follow tool cache convention for cosign and tenv paths by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/11
* chore: bump default tenv version to v4.9.3 by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/12
* chore: pin cosign-installer to SHA and set cosign-release by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/13
* chore: add FUNDING.yml by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/14
* chore: add dependabot config and pin actions to commit SHAs by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/15
* chore(deps): bump actions/checkout from 4.3.1 to 6.0.2 by @dependabot[bot] in https://github.com/rsclarke/setup-tenv/pull/16
* chore(deps): bump actions/cache from 4.3.0 to 5.0.4 by @dependabot[bot] in https://github.com/rsclarke/setup-tenv/pull/17
* chore: add versioning and release workflow by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/18
* feat: add branding to action metadata by @rsclarke in https://github.com/rsclarke/setup-tenv/pull/19

## New Contributors
* @rsclarke made their first contribution in https://github.com/rsclarke/setup-tenv/pull/1
* @dependabot[bot] made their first contribution in https://github.com/rsclarke/setup-tenv/pull/16

**Full Changelog**: https://github.com/rsclarke/setup-tenv/commits/v1.0.0
