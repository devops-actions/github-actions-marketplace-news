---
title: Update security.txt Expires field
date: 2026-02-20 05:53:32 +00:00
tags:
  - octivi
  - GitHub Actions
draft: false
repo: https://github.com/octivi/update-securitytxt-expires
marketplace: https://github.com/marketplace/actions/update-security-txt-expires-field
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/octivi/update-securitytxt-expires** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/update-security-txt-expires-field) to find the latest changes.

## Action Summary

The "Update security.txt Expires GitHub Action" automatically updates the `Expires` field in `security.txt` files, ensuring that security contact metadata remains up-to-date and compliant with RFC 9116. It scans specified directories, updates the expiration date to a future timestamp (default: 180 days), and prevents the `security.txt` file from becoming stale. This action simplifies maintenance by automating expiration updates, reducing supply chain risks, and operating as a lightweight, dependency-free solution.

## Release notes

### Added

- Add support for multiline YAML parameters for action inputs ([`d35b319`](https://github.com/octivi/update-securitytxt-expires/commit/d35b319)) (Marcin Engelmann)
- Add `dry_run` and `verbose` modes with GitHub-native step logs and summary reporting ([`9bfce33`](https://github.com/octivi/update-securitytxt-expires/commit/9bfce33)) (Marcin Engelmann)


