---
title: release-breezy
date: 2026-01-12 13:37:13 +00:00
tags:
  - itpetey
  - GitHub Actions
draft: false
repo: https://github.com/itpetey/breezy
marketplace: https://github.com/marketplace/actions/release-breezy
version: v0.3.0
dependentsNumber: "1"
---


Version updated for **https://github.com/itpetey/breezy** to version **v0.3.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/release-breezy) to find the latest changes.

## Action Summary

Release Breezy is a GitHub Action designed to automate the creation and updating of draft releases for repositories. It generates a single draft release per branch (or branch + directory) using merged pull request titles as release notes and resolves version numbers from project manifests (e.g., Rust’s `Cargo.toml`). The action simplifies release management by supporting configuration for grouping, templating, and version tagging, and is particularly useful for projects with multiple sub-projects requiring independent releases.

## Release notes

## Changes

- Support multiple sub-projects using the new `directory` input arg. Each sub-project will have its own draft release.
