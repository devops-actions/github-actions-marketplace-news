---
title: Install PHP Dependencies with Composer
date: 2024-02-28 19:23:38 +00:00
tags:
  - ramsey
  - GitHub Actions
draft: false
repo: ramsey/composer-install
marketplace: https://github.com/marketplace/actions/install-php-dependencies-with-composer
version: 2.3.0
dependentsNumber: "12,090"
---


Version updated for **ramsey/composer-install** to version **2.3.0**.
- This action is used across all versions by **12,090** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-php-dependencies-with-composer) to find the latest changes.

## Release notes

## Added

- Add new `require-lock-file` input that forces a build failure if a `composer.lock` file is not present. ([#251](https://github.com/ramsey/composer-install/pull/251))

## Fixed

- Add `--working-dir` when looking up Composer's cache directory. This fixes "File `composer.json` could not be found in the current directory" errors when running `composer install` in sub-directories or other non-standard locations. ([#225](https://github.com/ramsey/composer-install/issues/225), [#233](https://github.com/ramsey/composer-install/pull/233), [#246](https://github.com/ramsey/composer-install/issues/246), [#247](https://github.com/ramsey/composer-install/pull/247))
- Update cache action runner to v4 to avoid deprecation notices. ([#252](https://github.com/ramsey/composer-install/pull/252), [#253](https://github.com/ramsey/composer-install/issues/253), [#254](https://github.com/ramsey/composer-install/pull/254))
