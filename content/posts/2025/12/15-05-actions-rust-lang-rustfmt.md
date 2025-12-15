---
title: Check formatting of Rust code with rustfmt
date: 2025-12-15 05:37:42 +00:00
tags:
  - actions-rust-lang
  - GitHub Actions
draft: false
repo: https://github.com/actions-rust-lang/rustfmt
marketplace: https://github.com/marketplace/actions/check-formatting-of-rust-code-with-rustfmt
version: v1.1.2
dependentsNumber: "1,074"
---


Version updated for **https://github.com/actions-rust-lang/rustfmt** to version **v1.1.2**.
- This action is used across all versions by **1,074** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/check-formatting-of-rust-code-with-rustfmt) to find the latest changes.

## Release notes

## What's Changed

### Fixed

* Fixed a command injection vulnerability via the `manifest-path` input parameter.

    The code was using GitHub action templates to inject the value directly into the shell command, which does not perform the necessary escaping.
    For fixing the issue, the value is passed via an environment variable, which performs the proper escaping.
    This is only an issue if the `manifest-path` parameter was set from some other untrusted source.
    Using a static string to call the action is safe.

    Thanks to @mleblebici for reporting and fixing the issue.

## New Contributors
* @mleblebici made their first contribution in https://github.com/actions-rust-lang/rustfmt/pull/9

**Full Changelog**: https://github.com/actions-rust-lang/rustfmt/compare/v1.1.1...v1.1.2
