---
title: MegaLinter
date: 2024-11-23 16:47:19 +00:00
tags:
  - oxsecurity
  - GitHub Actions
draft: false
repo: oxsecurity/megalinter
marketplace: https://github.com/marketplace/actions/megalinter
version: v8.3.0
dependentsNumber: "1,365"
---


Version updated for **oxsecurity/megalinter** to version **v8.3.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1,365** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/megalinter) to find the latest changes.

## Release notes

## What's Changed

- Core
  - Display command log (truncated to 250 chars) even when LOG_LEVEL is not DEBUG
  - Allow to replace an ENV var value with the value of another ENV var before calling a PRE_COMMAND (helps for tflint run from GitHub Enterprise)
  - Fix handling of git submodule paths

- Fixes
  - [trivy](https://megalinter.io/latest/descriptors/repository_trivy/): retry in case of BLOB_UNKNOWN  while downloading vulnerability list

- Reporters
  - Fix UpdatedSourcesReporter when `APPLY_FIXES` is list (array)
  - Fix AzureCommentReporter when the repo is not found: fallback using BUILD_REPOSITORY_ID. (+ disable space replacement in repo name with `AZURE_COMMENT_REPORTER_REPLACE_WITH_SPACES: false`)

- CI
  - Fix Docker mirroring job for release context
  - Remove max parallel jobs for release linters workflow

- Linter versions upgrades (13)
  - [cfn-lint](https://github.com/aws-cloudformation/cfn-lint) from 1.19.0 to **1.20.0**
  - [checkov](https://www.checkov.io/) from 3.2.298 to **3.2.311**
  - [csharpier](https://csharpier.com/) from 0.29.2 to **0.30.2**
  - [markdownlint](https://github.com/DavidAnson/markdownlint) from 0.42.0 to **0.43.0**
  - [phpstan](https://phpstan.org/) from 2.0.1 to **2.0.2**
  - [ruff](https://github.com/astral-sh/ruff) from 0.7.4 to **0.8.0**
  - [spectral](https://docs.stoplight.io/docs/spectral/674b27b261c3c-overview) from 6.14.1 to **6.14.2**
  - [stylua](https://github.com/JohnnyMorganz/StyLua) from 0.20.0 to **2.0.0**
  - [syft](https://github.com/anchore/syft) from 1.16.0 to **1.17.0**
  - [trivy-sbom](https://aquasecurity.github.io/trivy/) from 0.57.0 to **0.57.1**
  - [trivy](https://aquasecurity.github.io/trivy/) from 0.57.0 to **0.57.1**
  - [trufflehog](https://github.com/trufflesecurity/trufflehog) from 3.83.7 to **3.84.1**
  - [vale](https://vale.sh/) from 3.9.0 to **3.9.1**

_MegaLinter is graciously provided by [![OX Security](https://www.ox.security/wp-content/uploads/2022/06/logo.svg?ref=megalinter_comment)](https://www.ox.security/?ref=megalinter)_

**Full Changelog**: https://github.com/oxsecurity/megalinter/compare/v8.2.0...v8.3.0
