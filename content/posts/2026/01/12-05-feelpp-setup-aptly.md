---
title: Setup aptly
date: 2026-01-12 05:56:59 +00:00
tags:
  - feelpp
  - GitHub Actions
draft: false
repo: https://github.com/feelpp/setup-aptly
marketplace: https://github.com/marketplace/actions/setup-aptly
version: v2.2.3
dependentsNumber: "?"
---


Version updated for **https://github.com/feelpp/setup-aptly** to version **v2.2.3**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-aptly) to find the latest changes.

## Action Summary

The `setup-aptly` GitHub Action installs and configures the Aptly tool for managing Debian/Ubuntu package repositories and optionally automates the publishing of packages to a Feel++ APT repository using the modern `feelpp-aptly-publisher`. It simplifies tasks like repository setup, package publication, and component preservation, supporting multi-component architectures and caching for faster executions. This action is ideal for automating package management workflows in CI/CD pipelines.

## Release notes

## Fixed

- Command argument order: `publish` subcommand now comes before arguments
- Changed from: `feelpp-apt-publish --args publish`
- To: `feelpp-apt-publish publish --args`
- Fixes "error: the following arguments are required: --component" when using subcommands

## Details

Python argparse subcommand parsers expect the subcommand to come before the subcommand-specific arguments. The previous order caused the parser to fail.

**Full Changelog**: https://github.com/feelpp/setup-aptly/compare/v2.2.2...v2.2.3
