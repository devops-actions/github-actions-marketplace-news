---
title: Semver Bump and Cargo Publish
date: 2026-08-01 13:52:06 +00:00
tags:
  - tsnl
  - GitHub Actions
draft: false
repo: https://github.com/tsnl/semver-bump-and-cargo-publish
marketplace: https://github.com/marketplace/actions/semver-bump-and-cargo-publish
version: v1.1.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The GitHub Action `tsnl/semver-bump-and-cargo-publish` automates the process of bumping the version of a Rust crate according to semantic versioning rules and publishing it to crates.io. It handles automatic bumping, tagging creation, and registry publishing, with options for dry runs and rollback on failure. The action also supports branch awareness and includes safeguards against manual misconfigurations.
---


Version updated for **https://github.com/tsnl/semver-bump-and-cargo-publish** to version **v1.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semver-bump-and-cargo-publish) to find the latest changes.

## Action Summary

The GitHub Action `tsnl/semver-bump-and-cargo-publish` automates the process of bumping the version of a Rust crate according to semantic versioning rules and publishing it to crates.io. It handles automatic bumping, tagging creation, and registry publishing, with options for dry runs and rollback on failure. The action also supports branch awareness and includes safeguards against manual misconfigurations.

## What's Changed

## What's Changed
* Harden the action: registry-confirmed rollback with modes, remote tag check, SHA pins, CI by @tsnl in https://github.com/tsnl/semver-bump-and-cargo-publish/pull/3
* Rollback modes, remote tag check, SHA pins, and CI (the rest of #3) by @tsnl in https://github.com/tsnl/semver-bump-and-cargo-publish/pull/4
* Docs: remove the false testing claim, stop over-granting GITHUB_TOKEN, fix PAT vocabulary by @tsnl in https://github.com/tsnl/semver-bump-and-cargo-publish/pull/5
* Add a release-tags workflow: tag, Release, and floating-v1 move in one dispatch by @tsnl in https://github.com/tsnl/semver-bump-and-cargo-publish/pull/6


**Full Changelog**: https://github.com/tsnl/semver-bump-and-cargo-publish/compare/v1...v1.1.0
