---
title: Setup Nu
date: 2024-06-29 08:46:09 +00:00
tags:
  - hustcer
  - GitHub Actions
draft: false
repo: hustcer/setup-nu
marketplace: https://github.com/marketplace/actions/setup-nu
version: v3.12
dependentsNumber: "105"
---


Version updated for **hustcer/setup-nu** to version **v3.12**.
- This action is used across all versions by **105** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-nu) to find the latest changes.

## Release notes

## v3.12 - 2024-06-27

### Bug Fixes

- Fix release script of pushing release Tags
- Fix plugin register related issue for all platforms
- Fix register of all plugins with `enablePlugins: true` input

### Features

- `enable-plugins` could be set to a comma-separated string of plugin names like `nu_plugin_polars,nu_plugin_query`

### Miscellaneous Tasks

- Remove older Nu versions from test workflow

### Deps

- Upgrade `@biomejs/biome`,`lefthook`, `typescript` and `@typescript-eslint/*`
- Upgrade to `actions/checkout@v4.1.7`


**Full Changelog**: https://github.com/hustcer/setup-nu/compare/v3.11...v3.12
