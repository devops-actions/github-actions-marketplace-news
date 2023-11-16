---
title: TF Via PR Comments
date: 2023-11-16 11:03:53 +00:00
tags:
  - devsectop
  - GitHub Actions
draft: false
repo: devsectop/tf-via-pr-comments
marketplace: https://github.com/marketplace/actions/tf-via-pr-comments
version: v9.0.0
dependentsNumber: "?"
---


Version updated for **devsectop/tf-via-pr-comments** to version **v9.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tf-via-pr-comments) to find the latest changes.

## Release notes

### Highlight

This project is now available as a GitHub Action and distributed via the [GitHub Marketplace](https://github.com/marketplace/actions/tf-via-pr-comments)!

### Added

- Composite [action.yml](action.yml) to support GitHub Action implementation.
- Example [tf.yml](.github/workflows/tf.yml) workflow for a functional demonstration of the GitHub Action... in action.
- Screenshots (with prefers-color-scheme [dark](assets/screenshot_dark.png) and [light](assets/screenshot_light.png)) to exhibit a typical interaction within a PR conversation at the very top of [README.md](README.md).

### Changed

- Rename project to "tf-via-pr-comments" to emphasize the use of PR comments as the primary interface for TF command execution.
- Both PR conversation examples to reflect the new TF command input format.

### Fixed

- PR comment reaction 👀 is now added for the duration of the workflow run, then removed upon completion.

### Deprecated

- The reusable workflow has been superseded by composite [action.yml](action.yml) which exposes the functionality with a lower barrier to entry.
- Bulk execution of TF commands is no longer possible since [matrix strategy for jobs](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs) is not supported by composite actions.

### Secured

- Pass sensitive values to the GitHub Action directly via environment variables.
- Support v9.X and above.

Commits changelog: <https://github.com/devsectop/tf-via-pr/compare/v8.0.1...v9.0.0>
