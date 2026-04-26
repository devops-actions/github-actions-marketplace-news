---
title: Run Antsibull Nox
date: 2026-04-26 21:23:20 +00:00
tags:
  - ansible-community
  - GitHub Actions
draft: false
repo: https://github.com/ansible-community/antsibull-nox
marketplace: https://github.com/marketplace/actions/run-antsibull-nox
version: 1.7.0
dependentsNumber: "10"
actionType: Composite
---


Version updated for **https://github.com/ansible-community/antsibull-nox** to version **1.7.0**.

- This action is used across all versions by **10** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-antsibull-nox) to find the latest changes.

## Action Summary

The `antsibull-nox` GitHub Action is a utility designed to streamline the testing, formatting, linting, and release workflows for Ansible collections using the `nox` automation tool. It simplifies development processes by automating tasks such as running unit tests, applying code formatters, and managing dependencies, ensuring consistency and efficiency in project maintenance. Its key capabilities include support for semantic versioning, integration with related Ansible tools, and configurable options for dependency management during development.

## What's Changed

### Release Summary

Feature release\.

### Minor Changes

* A Molecule session can now be added with <code>\[sessions\.molecule\]</code> in <code>antsibull\-nox\.toml</code> \([https\://github\.com/ansible\-community/antsibull\-nox/issues/162](https\://github\.com/ansible\-community/antsibull\-nox/issues/162)\, [https\://github\.com/ansible\-community/antsibull\-nox/pull/187](https\://github\.com/ansible\-community/antsibull\-nox/pull/187)\)\.
* Ansible\-core devel now supports Python 3\.15 \([https\://github\.com/ansible\-community/antsibull\-nox/pull/198](https\://github\.com/ansible\-community/antsibull\-nox/pull/198)\)\.
* Provide a decorator <code>\@antsibull\_nox\.sessions\.install\_packages\(\)</code> in the public API that allows to install Python packages for nox sessions in a way that can later be used to provide a unified way to pin packages and update package lockfiles \([https\://github\.com/ansible\-community/antsibull\-nox/pull/194](https\://github\.com/ansible\-community/antsibull\-nox/pull/194)\)\.

