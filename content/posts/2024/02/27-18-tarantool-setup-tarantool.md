---
title: Setup tarantool
date: 2024-02-27 18:06:44 +00:00
tags:
  - tarantool
  - GitHub Actions
draft: false
repo: tarantool/setup-tarantool
marketplace: https://github.com/marketplace/actions/setup-tarantool
version: v3.0.0
dependentsNumber: "77"
---


Version updated for **tarantool/setup-tarantool** to version **v3.0.0**.
- This action is used across all versions by **77** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-tarantool) to find the latest changes.

## Release notes

## Overview

This release switches node runtime from node16 to node20 and drops ubuntu-18.04 runners support.

https://github.blog/changelog/2023-09-22-github-actions-transitioning-from-node-16-to-node-20/
https://github.com/actions/runner-images/issues/6002

It adds support for Debian/Ubuntu-based self-hosted runners, Debian/Ubuntu-based container jobs and tarantool-3.0+.

Fixes a couple of bugs: ignoring of the `tarantool-version` option and silent switch to tarantool 2.6.0 on Ubuntu Jammy (22.04), failing of `tarantoolctl rocks` commands on tarantool-1.10 on Ubuntu Jammy.

Commits: https://github.com/tarantool/setup-tarantool/compare/v2.0.0...v3.0.0

## Acknowledgements

This release would not occur without @grafin and @yngvar-antonsson contributions. Thank you, friends!
