---
title: Setup PHP Action
date: 2024-03-01 19:01:06 +00:00
tags:
  - shivammathur
  - GitHub Actions
draft: false
repo: shivammathur/setup-php
marketplace: https://github.com/marketplace/actions/setup-php-action
version: 2.30.0
dependentsNumber: "123,523"
---


Version updated for **shivammathur/setup-php** to version **2.30.0**.
- This action is used across all versions by **123,523** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-php-action) to find the latest changes.

## Release notes

## Changelog

- Add support to set custom composer timeout (#811)
```yml
- name: Setup PHP
  uses: shivammathur/setup-php@v2
  with:
    php-version: '8.3'
  env:
    COMPOSER_PROCESS_TIMEOUT: 300
```

- Fix syncing dependency formulae on macOS. (#823, #825, #824)

- Updated Node.js dependencies.

For the complete list of changes, please refer to the [Full Changelog](https://github.com/shivammathur/setup-php/compare/2.29.0...2.30.0)

<p>
  <h4>Follow for updates</h4>
  <a href="https://reddit.com/r/setup_php" title="setup-php reddit"><img alt="setup-php reddit" src="https://img.shields.io/badge/reddit-join-FF5700?logo=reddit&logoColor=FF5700&labelColor=555555"></a>
  <a href="https://twitter.com/setup_php" title="setup-php twitter"><img alt="setup-php twitter" src="https://img.shields.io/badge/twitter-follow-1DA1F2?logo=twitter&logoColor=1DA1F2&labelColor=555555"></a>
  <a href="https://status.setup-php.com" title="setup-php status"><img alt="setup-php status" src="https://img.shields.io/badge/status-subscribe-28A745?logo=statuspage&logoColor=28A745&labelColor=555555"></a>
</p>
