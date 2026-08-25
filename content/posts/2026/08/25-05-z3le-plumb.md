---
title: Plumb Diff Coverage
date: 2026-08-25 05:50:35 +00:00
tags:
  - z3le
  - GitHub Actions
draft: false
repo: https://github.com/z3le/plumb
marketplace: https://github.com/marketplace/actions/plumb-diff-coverage
version: v0.1.7
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The `plumb` action is a tool that measures code coverage of lines changed in a Git repository and reports it as an HTML file. It calculates the coverage against the initial commit of the branch, fails the build if the coverage falls below a specified threshold, and provides a sortable, line-by-line source view with covered and uncovered lines highlighted in green and red, respectively. The action is designed to be simple, efficient, and integrates seamlessly into GitHub Actions workflows, requiring minimal configuration and no external services or tokens.
---


Version updated for **https://github.com/z3le/plumb** to version **v0.1.7**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/plumb-diff-coverage) to find the latest changes.

## Action Summary

The `plumb` action is a tool that measures code coverage of lines changed in a Git repository and reports it as an HTML file. It calculates the coverage against the initial commit of the branch, fails the build if the coverage falls below a specified threshold, and provides a sortable, line-by-line source view with covered and uncovered lines highlighted in green and red, respectively. The action is designed to be simple, efficient, and integrates seamlessly into GitHub Actions workflows, requiring minimal configuration and no external services or tokens.

## What's Changed

### Fixed

- The action is called `Plumb Diff Coverage` in the GitHub Marketplace. The
  Marketplace requires a name unique across every action, user, and
  organisation on GitHub, and a user named `plumb` has existed since 2013, so
  it refused the bare project name. Only the display name changed:
  `uses: z3le/plumb@v0.1.7` is the repository path and is unaffected.


