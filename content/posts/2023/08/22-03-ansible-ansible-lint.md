---
title: run-ansible-lint
date: 2023-08-22 03:04:43 +00:00
tags:
  - ansible
  - GitHub Actions
draft: false
repo: ansible/ansible-lint
marketplace: https://github.com/marketplace/actions/run-ansible-lint
version: v6.18.0
dependentsNumber: 10,511
---


Version updated for **ansible/ansible-lint** to version **v6.18.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **10,511** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-ansible-lint) to find the latest changes.

## Release notes

## Minor Changes

- Limit the maximum block depth (#3602) @Ruchip16
- Transform functionality for command_instead_of_shell  (#3675) @ajinkyau
- Add rule to check the number of tasks (#3156) @Ruchip16

## Bugfixes

- Clarify loop-var-prefix rule and code snippet (#3642) @schwarmco
- Update `version_added` for complexity rule (#3623) @ajinkyau
- Ensure that single space between tasks is preserved when using --write (#3641) @shatakshiiii
- Update ansible-compat used for testing (#3664) @ssbarnea
- Document `yaml[line-length]` rule (#3653) @shatakshiiii
- Prevent use of spdx-tools 0.8.0 due to breaking changes (#3649) @ssbarnea
- fixes dead marketplace link (#3631) @wookietreiber
- Improve profile information on summary line (#3637) @ziegenberg
- command-instead-of-module: allow `git rev-parse` (#3610) @JohnVillalovos
- Include filepaths starting from $HOME in lintables (#3621) @shatakshiiii
- Update _mockings.py to fix bug created in #3390 (#3614) @karcaw
- Allow to set gather_facts as templated boolean (#3606) @noonedeadpunk
- Add dependency version check for collection metadata (#3601) @ajinkyau
- Fix installation of dependencies when run as an action (#3592) @ssbarnea

