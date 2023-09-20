---
title: run-ansible-lint
date: 2023-09-20 02:54:27 +00:00
tags:
  - ansible
  - GitHub Actions
draft: false
repo: ansible/ansible-lint
marketplace: https://github.com/marketplace/actions/run-ansible-lint
version: v6.20.0
dependentsNumber: 0
---


Version updated for **ansible/ansible-lint** to version **v6.20.0**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-ansible-lint) to find the latest changes.

## Release notes

## Minor Changes

- Respect cgroup CPU limits when running inside containers (#3749) @ssbarnea
- Rename --write option to --fix (#3748) @ssbarnea
- Add auto-fixing implementation for `no-free-form` rule (#3725) @ajinkyau
- Add auto-fixing implementation for `partial-become` rule (#3692) @shatakshiiii
- Add auto-fixing implementation for `no-jinja-when` rule (#3721) @shatakshiiii

## Bugfixes

- Fix the detection of role vars missing role prefix (#3750) @cavcrosby
- Clarify auto-fix arguments use (#3751) @ssbarnea
- Avoid IndexError exception with jinja transform (#3747) @ssbarnea
- Fix docs typo (#3746) @ssbarnea
- Add /bin/bash executable to example correct code for pipefail rule (#3731) @Perdu
- Properly avoid `pipx` venv path to be included in altered path warning (#3730) @chrysle
- Fix transform exception with local_action with old syntax (#3743) @ssbarnea
- Support only_upgrade (#3734) @soroshsabz

