---
title: Install PHP Dependencies with Composer
date: 2024-02-29 19:19:00 +00:00
tags:
  - ramsey
  - GitHub Actions
draft: false
repo: ramsey/composer-install
marketplace: https://github.com/marketplace/actions/install-php-dependencies-with-composer
version: 3.0.0
dependentsNumber: "12,106"
---


Version updated for **ramsey/composer-install** to version **3.0.0**.
- This action is used across all versions by **12,106** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-php-dependencies-with-composer) to find the latest changes.

## Release notes

## Changed

- Update actions/cache to v4 to avoid deprecation notices.

  This requires a new major version because actions/cache requires Node.js 20, which could cause backwards-compatibility breaks for any projects that require earlier versions of Node.js.

  For more details, see the discussion on [#252](https://github.com/ramsey/composer-install/pull/252).
