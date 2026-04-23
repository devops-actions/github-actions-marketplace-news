---
title: uv Dependency Submission
date: 2026-04-23 21:42:54 +00:00
tags:
  - rmuir
  - GitHub Actions
draft: false
repo: https://github.com/rmuir/uv-dependency-submission
marketplace: https://github.com/marketplace/actions/uv-dependency-submission
version: v1.1.0
dependentsNumber: "30"
actionType: Composite
---


Version updated for **https://github.com/rmuir/uv-dependency-submission** to version **v1.1.0**.

- This action is used across all versions by **30** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/uv-dependency-submission) to find the latest changes.

## Action Summary

The `uv-dependency-submission` GitHub Action automates the process of generating a comprehensive dependency graph from `uv.lock` files and submitting it to a GitHub repository. It addresses the limitations of GitHub's default dependency detection by including transitive dependencies, SBOM paths, and differentiating between direct and transitive dependencies. This enhanced metadata improves the utility of GitHub's security features, such as Dependabot alerts and dependency insights.

## What's Changed

<!-- Release notes generated using configuration in .github/release.yml at v1.1.0 -->

## What's Changed
### 🏕 Changes
* test: add pytest setup by @rmuir in https://github.com/rmuir/uv-dependency-submission/pull/73
* add retries for the submission step by @CodeWitchBella in https://github.com/rmuir/uv-dependency-submission/pull/71
* do not crash on dev dependencies of dependencies by @CodeWitchBella in https://github.com/rmuir/uv-dependency-submission/pull/72
### 👒 Dependencies
* ci: bump astral-sh/setup-uv from 7.3.1 to 7.6.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/59
* ci: bump basedpyright from 1.38.2 to 1.38.3 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/60
* ci: bump ruff from 0.15.6 to 0.15.7 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/61
* ci: bump astral-sh/setup-uv from 7.6.0 to 8.0.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/62
* ci: bump github/codeql-action from 4.32.6 to 4.35.1 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/65
* ci: bump basedpyright from 1.38.3 to 1.38.4 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/63
* ci: bump ruff from 0.15.7 to 0.15.8 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/64
* ci: bump rvben/rumdl from 0.0.190 to 0.1.67 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/66
* ci: bump basedpyright from 1.38.4 to 1.39.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/67
* ci: bump ruff from 0.15.8 to 0.15.9 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/68
* ci: bump rvben/rumdl from 0.1.69 to 0.1.70 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/69
* ci: bump ruff from 0.15.9 to 0.15.10 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/70

## New Contributors
* @CodeWitchBella made their first contribution in https://github.com/rmuir/uv-dependency-submission/pull/71

**Full Changelog**: https://github.com/rmuir/uv-dependency-submission/compare/v1.0.1...v1.1.0
