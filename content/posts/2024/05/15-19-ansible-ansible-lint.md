---
title: run-ansible-lint
date: 2024-05-15 19:31:12 +00:00
tags:
  - ansible
  - GitHub Actions
draft: false
repo: ansible/ansible-lint
marketplace: https://github.com/marketplace/actions/run-ansible-lint
version: v24.5.0
dependentsNumber: "0"
---


Version updated for **ansible/ansible-lint** to version **v24.5.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-ansible-lint) to find the latest changes.

## Release notes

## Enhancements

- Add subdirectories to be part of the task prefix (#4143) @cavcrosby
- Prevent execution with incompatible yamllint configuration (#4139) @ssbarnea
- Continue linting other files when one has syntax-check errors (#4133) @ssbarnea

## Bugfixes

- Make linter aware of its own requirements (#4159) @ssbarnea
- Allow running with incompatible yamllint config (#4158) @ssbarnea
- Avoid key exception during transform (#4156) @ssbarnea
- Raise name[casing] violation for notify task param (#4149) @cavcrosby
- Allow tabs in win_lineinfile (#4147) @ssbarnea
- Improve feedback for `fix`, avoid a traceback with transform (#4148) @cidrblock
- Allow tabs inside jinja strings (#4146) @ssbarnea
- Avoid reformatting hexadecimal integers (#4145) @ssbarnea
- Make import_playbook recognize playbooks from within collections (#4141) @ssbarnea
- Document valid locations for requirements.yml in the docs (#4134) @shatakshiiii
- Recognize adjacent plugins (#4131) @ssbarnea
- Support examples for role entrypoints (#4019) @felixfontein
- Add lower requirements and testing (#4130) @ssbarnea

