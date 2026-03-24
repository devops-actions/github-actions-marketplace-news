---
title: uv Dependency Submission
date: 2026-03-24 22:03:59 +00:00
tags:
  - rmuir
  - GitHub Actions
draft: false
repo: https://github.com/rmuir/uv-dependency-submission
marketplace: https://github.com/marketplace/actions/uv-dependency-submission
version: v1.0.1
dependentsNumber: "28"
actionType: Composite
---


Version updated for **https://github.com/rmuir/uv-dependency-submission** to version **v1.0.1**.
- This action is used across all versions by **28** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/uv-dependency-submission) to find the latest changes.

## Action Summary

This GitHub Action automates the process of generating and submitting a complete dependency graph from `uv.lock` files in a repository to GitHub. It enhances GitHub's native dependency detection by including transitive dependencies, dependency relationships, and SBOM paths, which are typically not provided by default. This enables more advanced security features and comprehensive dependency analysis on GitHub, addressing the limitations of GitHub's minimal built-in functionality.

## Release notes

This release contains documentation updates and updates of single runtime dependency `actions/setup-python`. No functional changes.

## What's Changed
### 🏕 Changes
* docs: improve example workflow by @rmuir in https://github.com/rmuir/uv-dependency-submission/pull/10
* docs: address new zizmor lints in example and workflows by @rmuir in https://github.com/rmuir/uv-dependency-submission/pull/11
* docs: cleanup README by @rmuir in https://github.com/rmuir/uv-dependency-submission/pull/18
* ci: improve python CI by @rmuir in https://github.com/rmuir/uv-dependency-submission/pull/19
* ci: enable codeql quality queries by @rmuir in https://github.com/rmuir/uv-dependency-submission/pull/23
* docs: update README to current situation wrt built-in Github support by @rmuir in https://github.com/rmuir/uv-dependency-submission/pull/35
### 👒 Dependencies
* ci: bump github/codeql-action from 3.30.5 to 3.30.6 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/2
* ci: bump astral-sh/setup-uv from 6.8.0 to 7.0.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/3
* ci: bump github/codeql-action from 3.30.6 to 4.30.7 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/4
* ci: bump astral-sh/setup-uv from 7.0.0 to 7.1.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/6
* ci: bump github/codeql-action from 4.30.7 to 4.30.9 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/7
* ci: bump astral-sh/setup-uv from 7.1.0 to 7.1.2 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/8
* ci: bump github/codeql-action from 4.30.9 to 4.31.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/9
* ci: bump github/codeql-action from 4.31.0 to 4.31.2 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/12
* ci: bump astral-sh/setup-uv from 7.1.2 to 7.1.3 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/13
* ci: bump zizmorcore/zizmor-action from 0.2.0 to 0.3.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/14
* ci: bump actions/checkout from 5.0.0 to 6.0.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/15
* ci: bump astral-sh/setup-uv from 7.1.3 to 7.1.4 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/16
* ci: bump actions/setup-python from 6.0.0 to 6.1.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/17
* ci: bump basedpyright from 1.31.6 to 1.35.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/21
* ci: bump ruff from 0.13.2 to 0.14.7 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/20
* ci: bump actions/checkout from 6.0.0 to 6.0.1 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/22
* ci: bump ruff from 0.14.7 to 0.14.8 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/24
* ci: bump basedpyright from 1.35.0 to 1.36.1 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/27
* ci: bump astral-sh/setup-uv from 7.1.4 to 7.1.6 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/25
* ci: bump ruff from 0.14.8 to 0.14.9 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/26
* ci: bump github/codeql-action from 4.31.2 to 4.31.9 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/28
* ci: bump ruff from 0.14.9 to 0.14.10 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/29
* ci: bump basedpyright from 1.36.1 to 1.36.2 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/30
* ci: bump basedpyright from 1.36.2 to 1.37.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/31
* ci: bump astral-sh/setup-uv from 7.1.6 to 7.2.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/34
* ci: bump basedpyright from 1.37.0 to 1.37.1 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/33
* ci: bump ruff from 0.14.10 to 0.14.11 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/32
* ci: bump actions/checkout from 6.0.1 to 6.0.2 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/37
* ci: bump ruff from 0.14.11 to 0.14.13 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/38
* ci: bump zizmorcore/zizmor-action from 0.3.0 to 0.4.1 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/36
* ci: bump basedpyright from 1.37.1 to 1.37.2 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/39
* ci: bump ruff from 0.14.13 to 0.14.14 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/41
* ci: bump actions/setup-python from 6.1.0 to 6.2.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/40
* ci: bump basedpyright from 1.37.2 to 1.37.3 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/42
* ci: bump zizmorcore/zizmor-action from 0.4.1 to 0.5.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/43
* ci: bump astral-sh/setup-uv from 7.2.0 to 7.3.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/44
* ci: bump basedpyright from 1.37.3 to 1.37.4 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/46
* ci: bump ruff from 0.14.14 to 0.15.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/45
* ci: bump basedpyright from 1.37.4 to 1.38.0 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/48
* ci: bump ruff from 0.15.0 to 0.15.1 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/47
* ci: bump basedpyright from 1.38.0 to 1.38.1 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/49
* ci: bump github/codeql-action from 4.31.9 to 4.32.4 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/51
* ci: bump ruff from 0.15.1 to 0.15.2 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/50
* ci: bump astral-sh/setup-uv from 7.3.0 to 7.3.1 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/54
* ci: bump basedpyright from 1.38.1 to 1.38.2 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/53
* ci: bump ruff from 0.15.2 to 0.15.4 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/52
* ci: bump ruff from 0.15.4 to 0.15.5 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/55
* ci: bump github/codeql-action from 4.32.4 to 4.32.6 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/56
* ci: bump zizmorcore/zizmor-action from 0.5.0 to 0.5.2 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/57
* ci: bump ruff from 0.15.5 to 0.15.6 by @dependabot[bot] in https://github.com/rmuir/uv-dependency-submission/pull/58

## New Contributors
* @rmuir made their first contribution in https://github.com/rmuir/uv-dependency-submission/pull/10

**Full Changelog**: https://github.com/rmuir/uv-dependency-submission/compare/v1.0.0...v1.0.1
