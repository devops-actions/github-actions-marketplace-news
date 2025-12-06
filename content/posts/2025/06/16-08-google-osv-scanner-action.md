---
title: osv-scanner
date: 2025-06-16 08:59:58 +00:00
tags:
  - google
  - GitHub Actions
draft: false
repo: https://github.com/google/osv-scanner-action
marketplace: https://github.com/marketplace/actions/osv-scanner
version: v2.0.3
dependentsNumber: "1,021"
---


Version updated for **https://github.com/google/osv-scanner-action** to version **v2.0.3**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1,021** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/osv-scanner) to find the latest changes.

## Release notes

Update to use osv-scanner v2.0.3

Notable changes:
- There's now a flag `--allow-no-lockfiles` you can pass to osv-scanner to avoid getting an error when running against a repo with no lockfiles.
- We no longer ignore general errors when they occur on osv-scanner-action, and will fail the workflow (e.g. invalid flags passed in)
