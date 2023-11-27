---
title: Setup PHP Action
date: 2023-11-27 18:59:14 +00:00
tags:
  - shivammathur
  - GitHub Actions
draft: false
repo: shivammathur/setup-php
marketplace: https://github.com/marketplace/actions/setup-php-action
version: 2.28.0
dependentsNumber: "111,993"
---


Version updated for **shivammathur/setup-php** to version **2.28.0**.
- This action is used across all versions by **111,993** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-php-action) to find the latest changes.

## Release notes

## Changelog

- Specifying 8.3 in `php-version` now installs a stable build of PHP 8.3.
```yml
- name: Setup PHP 8.3
  uses: shivammathur/setup-php@v2
  with:
    php-version: '8.3'
```

- Specifying `latest`  in `php-version` now installs PHP 8.3 as well.
```yml
- name: Setup Latest PHP
  uses: shivammathur/setup-php@v2
  with:
    php-version: 'latest'
```

- Specifying `nightly` in `php-version` now installs PHP 8.4.
```yml
- name: Setup Nightly PHP
  uses: shivammathur/setup-php@v2
  with:
    php-version: 'nightly'
```

- Added support for `intl` extension with ICU 74.1 (https://github.com/shivammathur/icu-intl/pull/7)
```yml
- name: Setup PHP with intl
  uses: shivammathur/setup-php@v2
  with:
    php-version: '8.3'
    extensions: intl-74.1
```

- Added support to specify `zts` in `phpts` environment variable instead of `ts` to set up thread-safe PHP on Linux and Windows.
```yml
- name: Setup PHP 8.3 (ZTS)
  uses: shivammathur/setup-php@v2
  with:
    php-version: '8.3'
  env:
    phpts: zts
```

- Fixed support for debug builds. (#784)
```yml
- name: Setup PHP 8.3
  uses: shivammathur/setup-php@v2
  with:
    php-version: '8.3'
  env:
    debug: true
```

- Added support for cached builds for PHP 8.3, PHP 8.4, and zts builds of all versions of PHP 5.6 and newer on Ubuntu GitHub Hosted environments. This should reduce the time it takes to set up these PHP versions.

- Added `swoole` to the builds cache for GitHub-hosted environments for PHP 7.2 and newer.
```yml
- name: Setup PHP 8.3
  uses: shivammathur/setup-php@v2
  with:
    php-version: '8.3'
    extensions: swoole
```

- Added PHP 8.3 and PHP 8.4 to the extension lists in the [wiki](https://github.com/shivammathur/setup-php/wiki). (#787).

- PHP 8.0 is now marked as `End of life` and PHP 8.1 is now marked as `Security fixes only` in README.
See [PHP Support](https://github.com/shivammathur/setup-php?tab=readme-ov-file#tada-php-support) in README.

- Fixed support for Blackfire extension. The action now disabled `Xdebug` and `pcov` extensions by default when `blackfire` is specified in `extensions` input.
```yml
- name: Setup PHP with blackfire extension
  uses: shivammathur/setup-php@v2
  with:
    php-version: '8.3'
    extensions: blackfire
```

- Fixed support for `grpc_php_plugin` when installed along with `protoc` on macOS.
```yml
- name: Setup PHP
  uses: shivammathur/setup-php@v2
  with:
    php-version: '8.3'
    tools: protoc, grpc_php_plugin
```

- Fixed support for `geos` extension on PHP 8.3.
```yml
- name: Setup PHP with geos extension
  uses: shivammathur/setup-php@v2
  with:
    php-version: '8.3'
    extensions: geos
```

- Fixed support for `event` extension on macOS to use `openssl@3` formula.
```yml
- name: Setup PHP with geos extension
  uses: shivammathur/setup-php@v2
  with:
    php-version: '8.3'
    extensions: event
```

- Update Node.js dependencies.

## Merged Pull Requests
- Merged pull request [#787](https://github.com/shivammathur/setup-php/pull/787) from @jrfnl
- Merged pull request [#7](https://github.com/shivammathur/icu-intl/pull/7) from @jderusse

For the complete list of changes, please refer to the [Full Changelog](https://github.com/shivammathur/setup-php/compare/2.28.0...2.27.1)

<p>
  <h4>Follow for updates</h4>
  <a href="https://reddit.com/r/setup_php" title="setup-php reddit"><img alt="setup-php reddit" src="https://img.shields.io/badge/reddit-join-FF5700?logo=reddit&logoColor=FF5700&labelColor=555555"></a>
  <a href="https://twitter.com/setup_php" title="setup-php twitter"><img alt="setup-php twitter" src="https://img.shields.io/badge/twitter-follow-1DA1F2?logo=twitter&logoColor=1DA1F2&labelColor=555555"></a>
  <a href="https://status.setup-php.com" title="setup-php status"><img alt="setup-php status" src="https://img.shields.io/badge/status-subscribe-28A745?logo=statuspage&logoColor=28A745&labelColor=555555"></a>
</p>
