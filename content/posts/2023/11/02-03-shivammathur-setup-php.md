---
title: Setup PHP Action
date: 2023-11-02 03:11:22 +00:00
tags:
  - shivammathur
  - GitHub Actions
draft: false
repo: shivammathur/setup-php
marketplace: https://github.com/marketplace/actions/setup-php-action
version: 2.27.0
dependentsNumber: "108,683"
---


Version updated for **shivammathur/setup-php** to version **2.27.0**.
- This action is used across all versions by **108,683** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-php-action) to find the latest changes.

## Release notes

## Changelog

- Tools `box` and `php-scoper` can now be installed easily using the `tools` input. (#776)
```yaml
- name: Setup PHP
  uses: shivammathur/setup-php@v2
  with:
    php-version: '8.2'
    tools: box, php-scoper
```

- Added support for macOS 14.x Sonoma and dropped support for macOS 11.x Big Sur following a three-year support cycle that Apple follows for macOS.

- We now set `keepAlive` in `https` agent to `false` in `fetch.ts`. After Node 19 it is set to `true` by default. This prevented the node process from exiting until timeout after the action run was completed. (#773, #777) - [Ref](https://github.com/nodejs/node/blob/main/doc/changelogs/CHANGELOG_V19.md#https11-keepalive-by-default) 

- Fixed support for `couchbase` extension for PHP 7.4.
```yaml
- name: Setup PHP
  uses: shivammathur/setup-php@v2
  with:
    php-version: '7.4'
    extensions: couchbase
```

- Fixed a warning when `find` was run without checking if the path exists on macOS.

- Fixed checking for existing PHP installations on macOS on self-hosted environments.

- Fixed adding tools in case `/usr/local/bin` directory was missing on self-hosted environments.

- Bumped Node.js dependencies.

## Merged Pull Requests
- Merged pull request [#766](https://github.com/shivammathur/setup-php/pull/776) from @theofidry 

## New Contributors
- [@theofidry](https://github.com/theofidry) made their contribution in [#776](https://github.com/shivammathur/setup-php/pull/776)


## Full Changelog
For the complete list of changes, please refer to the [Full Changelog: 2.26.0...2.27.0](https://github.com/shivammathur/setup-php/compare/2.26.0...2.27.0).

Thanks @tillkruss for the sponsorship ❤️

<p>
  <h4>Follow for updates</h4>
  <a href="https://reddit.com/r/setup_php" title="setup-php reddit"><img alt="setup-php reddit" src="https://img.shields.io/badge/reddit-join-FF5700?logo=reddit&logoColor=FF5700&labelColor=555555"></a>
  <a href="https://twitter.com/setup_php" title="setup-php twitter"><img alt="setup-php twitter" src="https://img.shields.io/badge/twitter-follow-1DA1F2?logo=twitter&logoColor=1DA1F2&labelColor=555555"></a>
  <a href="https://status.setup-php.com" title="setup-php status"><img alt="setup-php status" src="https://img.shields.io/badge/status-subscribe-28A745?logo=statuspage&logoColor=28A745&labelColor=555555"></a>
</p>
