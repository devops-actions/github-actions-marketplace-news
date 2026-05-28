---
title: Extract Commit Action
date: 2026-05-28 22:56:48 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/commit-info-extractor
marketplace: https://github.com/marketplace/actions/extract-commit-action
version: v1.4.3
dependentsNumber: "3"
actionType: Docker
---


Version updated for **https://github.com/somaz94/commit-info-extractor** to version **v1.4.3**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/extract-commit-action) to find the latest changes.

## Action Summary

The **Extract Commit Action** is a GitHub Action designed to automate the extraction and processing of information from commit messages using customizable regex patterns or shell commands. It simplifies tasks like identifying specific tags, environment variables, or version numbers within commits, offering support for flexible output formats (text, JSON, CSV), customizable commit ranges, and validation options. Key capabilities include pattern matching, pretty formatting, debug mode, and integration into CI/CD workflows for streamlined commit analysis.

## What's Changed


### Bug Fixes
- write step-output keys only to GITHUB_OUTPUT and expose user key in GITHUB_ENV by @somaz94

### Build
- bump actions/github-script from 8 to 9 by @dependabot[bot]
- bump softprops/action-gh-release from 2 to 3 by @dependabot[bot]
- bump dependabot/fetch-metadata from 2 to 3 by @dependabot[bot]

### CI/CD
- add concurrency guards to recurring workflows by @somaz94

### Refactoring
- extract _non_empty_lines and _split_lines helpers by @somaz94
- normalize pretty and fail_on_empty inputs to bool at parse time by @somaz94
- rename print_error to fail with NoReturn and broaden entrypoint traceback by @somaz94

**Full Changelog**: https://github.com/somaz94/commit-info-extractor/compare/v1.4.2...v1.4.3

