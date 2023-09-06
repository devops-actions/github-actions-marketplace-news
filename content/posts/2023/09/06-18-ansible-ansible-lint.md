---
title: run-ansible-lint
date: 2023-09-06 18:40:50 +00:00
tags:
  - ansible
  - GitHub Actions
draft: false
repo: ansible/ansible-lint
marketplace: https://github.com/marketplace/actions/run-ansible-lint
version: v6.19.0
dependentsNumber: 0
---


Version updated for **ansible/ansible-lint** to version **v6.19.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-ansible-lint) to find the latest changes.

## Release notes

## Minor Changes

- Add auto transform for no-log-password rule (#3708) @ajinkyau
- Add auto-fixing implementation for key-order[task] rule (#3705) @ajinkyau
- Add auto-fixing implementation for `jinja[spacing]` rule (#3691) @ajinkyau
- Make schema validation messages more explicit (#3701) @ssbarnea
- Transform for deprecated-local-action rule (#3689) @ajinkyau

## Bugfixes

- Require ansible-compat>=4.1.10 (#3723) @ssbarnea
- Skip altered path warning for `ansible-lint` installed by `pipx` (#3720) @chrysle
- Update transform for `key-order` rule (#3719) @ajinkyau
- Allow installation of pre-release collection version as dependencies (#3716) @ssbarnea
- Avoid deprecated-bare-vars false positive with file paths (#3709) @ssbarnea
- Limit sequence-of-sequence indents to a single space (#3671) @Qalthos
- Avoid no-handlers false positives (#3702) @ssbarnea
- Add missing word to risky-shell-pipe docs (#3704) @roock
- Avoid yamllint truthy violations with github workflows (#3698) @ssbarnea
- Avoid false positive with var-name rule on roles (#3697) @ssbarnea
- Include links to documentation for schema validation errors (#3684) @ssbarnea
- Schema update (#3693) @cidrblock
- Use yaml.load_all for multiple yaml document (#3679) @shatakshiiii
- Ignore user configured value for any_unparsed_is_failed (#3680) @ssbarnea
- Update rulebook schema (#3681) @ssbarnea

