---
title: Ansible Molecule Test Action
date: 2026-05-27 22:48:06 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/ansible-molecule-test-action
marketplace: https://github.com/marketplace/actions/ansible-molecule-test-action
version: v1.0.3
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/somaz94/ansible-molecule-test-action** to version **v1.0.3**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ansible-molecule-test-action) to find the latest changes.

## Action Summary

The `ansible-molecule-test-action` is a GitHub Action designed to automate the testing of Ansible roles or collections using the Molecule framework. It streamlines the process by setting up Python, Ansible, Molecule, and necessary plugins, and running `molecule test` across specified Linux distributions, which can be defined using a matrix. This action simplifies CI workflows by providing a single step for the entire Molecule testing pipeline, while supporting customization through version pinning and additional dependencies.

## What's Changed


### CI/CD

- Add concurrency guards to recurring workflows (f32b33b)

### Documentation

- Update changelog (62b6ca8)

### Miscellaneous

- Set CODEOWNERS to @somaz94 (fd82c50)
- Drop unused docker dependabot ecosystem (composite action, no Dockerfile) (90af70c)

### Refactoring

- Align Run Molecule test step with set -euo pipefail (2806b77)

**Full Changelog**: https://github.com/somaz94/ansible-molecule-test-action/compare/v1.0.2...v1.0.3

