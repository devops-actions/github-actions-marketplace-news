---
title: Run Antsibull Nox
date: 2026-01-06 05:35:12 +00:00
tags:
  - ansible-community
  - GitHub Actions
draft: false
repo: https://github.com/ansible-community/antsibull-nox
marketplace: https://github.com/marketplace/actions/run-antsibull-nox
version: 1.5.0
dependentsNumber: "3"
---


Version updated for **https://github.com/ansible-community/antsibull-nox** to version **1.5.0**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-antsibull-nox) to find the latest changes.

## Action Summary

The `antsibull-nox` GitHub Action serves as a helper for managing and automating tasks related to testing, linting, formatting, and releasing for Ansible collections using the `nox` tool. It streamlines development workflows by creating isolated virtual environments and running predefined commands for testing, code quality checks, and release preparations. This simplifies repetitive development and maintenance processes, enhancing efficiency and consistency in projects.

## Release notes

### Release Summary

Bugfix and feature release\.

### Minor Changes

* Allow to configure which files and directories are modules and module utils \([https\://github\.com/ansible\-community/antsibull\-nox/pull/181](https\://github\.com/ansible\-community/antsibull\-nox/pull/181)\)\.
* Allow to define the Python code files that the linters should run on \([https\://github\.com/ansible\-community/antsibull\-nox/issues/178](https\://github\.com/ansible\-community/antsibull\-nox/issues/178)\, [https\://github\.com/ansible\-community/antsibull\-nox/pull/181](https\://github\.com/ansible\-community/antsibull\-nox/pull/181)\)\.
* Allow to set minimum Python version supported by a collection\. This is currently used for the <code>\[sessions\.ansible\_test\_integration\_w\_default\_container\]</code> section \([https\://github\.com/ansible\-community/antsibull\-nox/issues/163](https\://github\.com/ansible\-community/antsibull\-nox/issues/163)\, [https\://github\.com/ansible\-community/antsibull\-nox/pull/176](https\://github\.com/ansible\-community/antsibull\-nox/pull/176)\)\.
* Allow to specify special configs for modules for all formatters and linters in the <code>lint</code> section \([https\://github\.com/ansible\-community/antsibull\-nox/pull/181](https\://github\.com/ansible\-community/antsibull\-nox/pull/181)\)\.
* Format messages nicely outside CI\, or when not configured otherwise \([https\://github\.com/ansible\-community/antsibull\-nox/pull/175](https\://github\.com/ansible\-community/antsibull\-nox/pull/175)\)\.
* Improve error reporting system used by internal scripts \([https\://github\.com/ansible\-community/antsibull\-nox/pull/171](https\://github\.com/ansible\-community/antsibull\-nox/pull/171)\)\.
* Improve output parsing and formatting for pylint and mypy checks \([https\://github\.com/ansible\-community/antsibull\-nox/pull/171](https\://github\.com/ansible\-community/antsibull\-nox/pull/171)\)\.
* In the <code>ruff check</code> and <code>ruff check \-\-fix</code> checks\, make sure to run ruff in a <code>ansible\_collections/\<namespace\>/\<name\>/</code> structure so that import classification works correctly\. The output of these checks is now handled as JSON and parsed and then formatted by antsibull\-nox \([https\://github\.com/ansible\-community/antsibull\-nox/pull/171](https\://github\.com/ansible\-community/antsibull\-nox/pull/171)\)\.
* When antsibull\-docs 2\.24\.0\+ is available\, the <code>docs\-check</code> session now uses its JSON message format \([https\://github\.com/ansible\-community/antsibull\-nox/pull/173](https\://github\.com/ansible\-community/antsibull\-nox/pull/173)\)\.

### Bugfixes

* Extra code files were ignored so far in the <code>pylint</code> test\. They are now used there as well \([https\://github\.com/ansible\-community/antsibull\-nox/pull/181](https\://github\.com/ansible\-community/antsibull\-nox/pull/181)\)\.
* Fix <code>antsibull\-nox\-config</code> session in case antsibull\-nox has not been installed in <code>\$PATH</code> \([https\://github\.com/ansible\-community/antsibull\-nox/pull/169](https\://github\.com/ansible\-community/antsibull\-nox/pull/169)\)\.
* Fix reporting of locations when running yamllint for YAML code blocks in RST extra docs \([https\://github\.com/ansible\-community/antsibull\-nox/pull/177](https\://github\.com/ansible\-community/antsibull\-nox/pull/177)\)\.
* Only pass <code>\-\-color \[yes\]</code> to ansible\-test when nox is running in color mode \([https\://github\.com/ansible\-community/antsibull\-nox/pull/174](https\://github\.com/ansible\-community/antsibull\-nox/pull/174)\)\.
* Remove superfluous call from the <code>antsibull\-nox\-config</code> session \([https\://github\.com/ansible\-community/antsibull\-nox/pull/172](https\://github\.com/ansible\-community/antsibull\-nox/pull/172)\)\.

