---
title: Play Ansible Playbook
date: 2026-01-12 05:57:29 +00:00
tags:
  - arillso
  - GitHub Actions
draft: false
repo: https://github.com/arillso/action.playbook
marketplace: https://github.com/marketplace/actions/play-ansible-playbook
version: 0.4.0
dependentsNumber: "158"
---


Version updated for **https://github.com/arillso/action.playbook** to version **0.4.0**.
- This action is used across all versions by **158** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/play-ansible-playbook) to find the latest changes.

## Action Summary

This GitHub Action automates the execution of Ansible playbooks, enabling users to manage configurations, deploy applications, and orchestrate tasks across their infrastructure directly within a CI/CD pipeline. It provides capabilities such as specifying inventory files, playbooks, variables, and advanced configurations for Ansible Galaxy dependencies, SSH connections, and playbook execution parameters. The action simplifies and streamlines the process of running Ansible tasks in a consistent, repeatable manner, making it an effective tool for infrastructure automation and management.

## Release notes

### Changed

- Replaced MegaLinter with dedicated linters for improved workflow efficiency
- Improved workflow naming consistency across CI/CD pipelines
- Updated Renovate preset path to `.github` repository

### Updated

- `arillso/ansible` Docker image from 2.19.3 to 2.20.1
- `github.com/urfave/cli/v3` from 3.4.1 to 3.6.1
- `shadow` package from 4.17.3-r0 to 4.18.0-r0
- Go pinned to version 1.25.5
- GitHub Actions dependencies (reviewdog/action-actionlint and others)


