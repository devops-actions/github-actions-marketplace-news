---
title: run-ansible-lint
date: 2026-01-16 13:29:09 +00:00
tags:
  - ansible
  - GitHub Actions
draft: false
repo: https://github.com/ansible/ansible-lint
marketplace: https://github.com/marketplace/actions/run-ansible-lint
version: v26.1.1
dependentsNumber: "0"
---


Version updated for **https://github.com/ansible/ansible-lint** to version **v26.1.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-ansible-lint) to find the latest changes.

## Action Summary

This GitHub Action integrates `ansible-lint` into your workflows, allowing automated linting of Ansible playbooks without requiring local installation. It helps identify and improve suboptimal practices and behaviors in your Ansible codebase, ensuring better quality and conformity to best practices. Key capabilities include customizable arguments, support for dependency installation, and compatibility with specific Python versions and Ansible releases.

## Release notes

## Features

- feat: added exit code 8 for successfully fixed violations (#4674) (#4899) @Jkhall81

## Fixes

- fix: resolve auto-fix failures and detection for short module names (… (#4897) @Jkhall81
- fix: ensure --no-offline overrides config file precedence (#4845) (#4903) @Jkhall81
- fix: pre-commit cache missing cspell updates (#4909) @alisonlhart
- Set cryptography ceiling to match downstream requirement. (#4904) @cidrblock
- fix: almalinux missing reference in platforms array (#4896) @thelinuxracoon

## Maintenance

- chore: Add renovate constraint for cryptography (#4911) @alisonlhart

