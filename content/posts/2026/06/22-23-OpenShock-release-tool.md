---
title: OpenShock Release Tool
date: 2026-06-22 23:48:53 +00:00
tags:
  - OpenShock
  - GitHub Actions
draft: false
repo: https://github.com/OpenShock/release-tool
marketplace: https://github.com/marketplace/actions/openshock-release-tool
version: v0.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/OpenShock/release-tool** to version **v0.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/openshock-release-tool) to find the latest changes.

## What's Changed

Initial release — a small Go CLI and GitHub Action for change-file-driven, branch-aware semver releases.


### Added
- A single `release` command cuts a stable, prerelease, or no-tag build based on per-branch config in `.changes/config.json`
- Change files in `.changes/` (kind, breaking, mandatory) drive the semver bump and generate a Keep-a-Changelog `CHANGELOG.md`, validated notices, and a structured `release.json`
- Release notes thank commit contributors and link PRs, with per-change override or suppression of the PR number
- GitHub Action with `release`, `status`, and `check` modes for use in release and pull-request workflows
- `init` scaffolds the `.changes/` config and the GitHub Actions release and check workflows
- Pull-request check validates the change files a PR adds and posts a sticky verdict comment, flagging missing, invalid, or `pr:`-pinned files

