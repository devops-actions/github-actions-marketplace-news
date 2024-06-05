---
title: run-ansible-lint
date: 2024-06-05 00:51:47 +00:00
tags:
  - ansible
  - GitHub Actions
draft: false
repo: ansible/ansible-lint
marketplace: https://github.com/marketplace/actions/run-ansible-lint
version: v24.6.0
dependentsNumber: "0"
---


Version updated for **ansible/ansible-lint** to version **v24.6.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-ansible-lint) to find the latest changes.

## Release notes

## Enhancements

- Adding logic for configuring supported ansible versions (#4203) @alisonlhart

## Bugfixes

- Revert notify related checks, errors, transforms for listen and tests (#4205) @audgirka
- Improve logic of find_children (#4161) @ssbarnea
- Pickup correct path component w/ANSIBLE_ROLES_PATH (#4176) @cavcrosby
- Respect yamllint 'document_start' rule when autofixing yaml (#4184) @elara-leitstellentechnik
- Avoid displaying upgrade warning when installation is not pip (#4204) @ssbarnea
- Correctly recognize path with spaces with tokenize (#4198) @ssbarnea
- Fix false positive reports in is_handler function (#4170) @MalKeshar
- Avoid exception with conflicting action statements (#4195) @ssbarnea
- Don't raise name[casing] on handlers with special role syntax (#4196) @Qalthos
- Refactor tokenize function (#4191) @ssbarnea
- Avoid stacktrace with unsupported import_playbook syntax (#4190) @ssbarnea
- Support for 2.15...updating linter. (#4144) @epacific1
- Don't quote strings that start with 0 when running ansible-lint --fix. (#4167) @kousu
- Allow inventory to be used for playbook order key (#4182) @ssbarnea

