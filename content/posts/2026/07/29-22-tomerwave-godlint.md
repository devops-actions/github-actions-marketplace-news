---
title: Run Godlint
date: 2026-07-29 22:49:28 +00:00
tags:
  - tomerwave
  - GitHub Actions
draft: false
repo: https://github.com/tomerwave/godlint
marketplace: https://github.com/marketplace/actions/run-godlint
version: v0.1.9
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Godlint is an automated tool that enforces a single, consistent set of code policies across multiple programming languages (Rust, TypeScript, JavaScript, and Python) in a repository. It helps teams maintain a standardized approach to coding standards without the need for language-specific linters, providing comprehensive rule enforcement, exception handling, and output formats suitable for different environments (terminal, JSON, SARIF, GitHub annotations). The tool also includes a GitHub Action that integrates seamlessly with CI systems to ensure compliance across pull requests.
---


Version updated for **https://github.com/tomerwave/godlint** to version **v0.1.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-godlint) to find the latest changes.

## Action Summary

Godlint is an automated tool that enforces a single, consistent set of code policies across multiple programming languages (Rust, TypeScript, JavaScript, and Python) in a repository. It helps teams maintain a standardized approach to coding standards without the need for language-specific linters, providing comprehensive rule enforcement, exception handling, and output formats suitable for different environments (terminal, JSON, SARIF, GitHub annotations). The tool also includes a GitHub Action that integrates seamlessly with CI systems to ensure compliance across pull requests.

## What's Changed

### Fixed

- Godlint works on Windows. A repository-relative path is spelled with forward slashes wherever a
  policy sees it, so a glob written with `/` matches, and a file name is the last segment rather than
  the whole path. On Windows every `exclude` pattern silently matched nothing — so excluded
  directories were scanned — and `architecture/filename-case` reported
  `crates\godlint-cli\src\main` as a name that is not snake_case. Both were found by running the
  action against this repository on a Windows runner rather than against a fixture.

- A release is published whether or not one already exists for the tag. Listing an action on the
  Marketplace is done by editing a release, so a release created by hand first made the workflow fail
  at `gh release create` and the archives never attached — leaving the release that the action
  resolves as `latest` carrying no binary at all. The archives are uploaded separately from creating
  the release, and their count is asserted afterwards, because an archive that never attached is
  invisible until someone tries to install.

- The action's own check runs against this repository rather than a fixture, so a released binary
  that disagrees with the code here is visible instead of surprising whoever installs it. It fails
  when they disagree and prints which of the two reasons it is: a false positive fixed here and not
  released yet, or this repository having drifted from the standard it publishes. Adding a rule or
  tightening a threshold does not land there, because the released binary is always the more
  permissive one. The check is not required, so it never blocks a merge. Whether the action *works* —
  install, checksum, annotate, fail — is gated separately by a tree with findings in it, which does
  not depend on the release agreeing with this one.

