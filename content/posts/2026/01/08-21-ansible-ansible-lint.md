---
title: run-ansible-lint
date: 2026-01-08 21:15:51 +00:00
tags:
  - ansible
  - GitHub Actions
draft: false
repo: https://github.com/ansible/ansible-lint
marketplace: https://github.com/marketplace/actions/run-ansible-lint
version: v26.1.0
dependentsNumber: "0"
---


Version updated for **https://github.com/ansible/ansible-lint** to version **v26.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-ansible-lint) to find the latest changes.

## Action Summary

This GitHub Action integrates `ansible-lint` into your CI/CD workflows, automating the process of checking Ansible playbooks for potential improvements and best practices. It simplifies and streamlines the use of `ansible-lint` by running it directly within GitHub Actions, eliminating the need for manual installation, and supports tasks like dependency installation and Python environment setup. This action helps ensure code quality and adherence to community standards in Ansible projects.

## Release notes

## Fixes

- fix: implement precise filtering for bracketed sub-tags (#4892) @Jkhall81
- fix: avoid unnecessary creation of .ansible folders (#4894) @ssbarnea
- fix: refactor RulesCollection to always require app argument (#4891) @ssbarnea
- fix: anchor kind discovery to project root (#4763) (#4889) @Jkhall81
- fix: avoid creating cache directory when listing version (#4865) @ssbarnea
- fix: ensure exclude_paths are honored for unparseable files (#4886) @Jkhall81
- fix: avoid use of pathspec 1.0.0 until yamllint is updated (#4887) @ssbarnea
- fix: allow valid tabs in lineinfile nested in blocks (#4719) (#4881) @Jkhall81
- fix: update documentation to clarify requirement to run from project … (#4885) @Jkhall81
- fix: replace hardcoded /tmp path with secure temp directory (CWE… (#4878) @Jkhall81
- fix: handle missing keys in _parse_failed_msg to prevent KeyError (#4879) @Jkhall81
- fix: add argument_specs to meta schema (#4762) (#4880) @Jkhall81
- fix: retire -p/--parseable option (#4884) @ssbarnea
- fix: correct partial-become rule documentation comments (#4876) @emmanuel-ferdman

## Maintenance

- chore: add almalinux platform to meta schemas (#4893) @thelinuxracoon
- chore: refactor testing code to reduce use of get_app() (#4890) @ssbarnea
- chore(deps): update all dependencies (#4877) @[renovate[bot]](https://github.com/apps/renovate)

