---
title: PHP Code Beautifier and Fixer
date: 2025-11-17 13:06:24 +00:00
tags:
  - WorkOfStan
  - GitHub Actions
draft: false
repo: https://github.com/WorkOfStan/phpcs-fix
marketplace: https://github.com/marketplace/actions/php-code-beautifier-and-fixer
version: v1.0.4
dependentsNumber: "10"
---


Version updated for **https://github.com/WorkOfStan/phpcs-fix** to version **v1.0.4**.
- This action is used across all versions by **10** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/php-code-beautifier-and-fixer) to find the latest changes.

## Release notes

### Changed

- bump GitHub Action's versions
- make the commit message compliant with Conventional Commits

### Fixed

- Trigger changed to ignore tags. I.e. change of the original trigger `on: [pull_request, push]` which caught also tags. (When running on a tag, actions/checkout runs on refs/tags/vX.Y.Z, so you end up with a detached HEAD, and github.head_ref is empty (it only exists on pull_request).)

