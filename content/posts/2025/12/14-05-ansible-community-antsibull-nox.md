---
title: Run Antsibull Nox
date: 2025-12-14 05:38:20 +00:00
tags:
  - ansible-community
  - GitHub Actions
draft: false
repo: https://github.com/ansible-community/antsibull-nox
marketplace: https://github.com/marketplace/actions/run-antsibull-nox
version: 1.4.0
dependentsNumber: "0"
---


Version updated for **https://github.com/ansible-community/antsibull-nox** to version **1.4.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-antsibull-nox) to find the latest changes.

## Release notes

### Release Summary

New bugfix and feature release\.

### Minor Changes

* Add Python 3\.15 to Python version search list \([https\://github\.com/ansible\-community/antsibull\-nox/pull/142](https\://github\.com/ansible\-community/antsibull\-nox/pull/142)\)\.
* Allow to specify extra <code>requirements\.yml</code> files for ansible\-lint \([https\://github\.com/ansible\-community/antsibull\-nox/issues/156](https\://github\.com/ansible\-community/antsibull\-nox/issues/156)\, [https\://github\.com/ansible\-community/antsibull\-nox/issues/161](https\://github\.com/ansible\-community/antsibull\-nox/issues/161)\)\.
* Also look for needed collections before running ansible\-lint [in other places that ansible\-lint searches for requirements\.yml](https\://github\.com/ansible/ansible\-lint/blob/main/src/ansiblelint/rules/syntax\_check\.md\#syntax\-checkunknown\-module) \([https\://github\.com/ansible\-community/antsibull\-nox/issues/156](https\://github\.com/ansible\-community/antsibull\-nox/issues/156)\, [https\://github\.com/ansible\-community/antsibull\-nox/pull/159](https\://github\.com/ansible\-community/antsibull\-nox/pull/159)\)\.
* Declare support for Python 3\.14 \([https\://github\.com/ansible\-community/antsibull\-nox/pull/141](https\://github\.com/ansible\-community/antsibull\-nox/pull/141)\)\.
* Use Python 3\.14 for antsibull\-nox action \([https\://github\.com/ansible\-community/antsibull\-nox/pull/141](https\://github\.com/ansible\-community/antsibull\-nox/pull/141)\)\.
* When determining changed files for pylint and mypy\, also consider files that \(transitively\) import the changed files \([https\://github\.com/ansible\-community/antsibull\-nox/pull/143](https\://github\.com/ansible\-community/antsibull\-nox/pull/143)\)\.
* When running ansible\-galaxy to list\, download\, or install collections\, look in the current session\'s venv first \([https\://github\.com/ansible\-community/antsibull\-nox/pull/155](https\://github\.com/ansible\-community/antsibull\-nox/pull/155)\, [https\://github\.com/ansible\-community/antsibull\-nox/pull/157](https\://github\.com/ansible\-community/antsibull\-nox/pull/157)\, [https\://github\.com/ansible\-community/antsibull\-nox/pull/158](https\://github\.com/ansible\-community/antsibull\-nox/pull/158)\, [https\://github\.com/ansible\-community/antsibull\-nox/pull/160](https\://github\.com/ansible\-community/antsibull\-nox/pull/160)\)\.

### Bugfixes

* Adjust URLs for antsibull\-nox in new templated noxfiles \([https\://github\.com/ansible\-community/antsibull\-nox/pull/148](https\://github\.com/ansible\-community/antsibull\-nox/pull/148)\)\.
* Avoid using relative symlinks to link from temporary collection root to collections\. This can cause problems with non\-canonical paths \([https\://github\.com/ansible\-community/antsibull\-nox/issues/152](https\://github\.com/ansible\-community/antsibull\-nox/issues/152)\, [https\://github\.com/ansible\-community/antsibull\-nox/pull/153](https\://github\.com/ansible\-community/antsibull\-nox/pull/153)\)\.
* If pylint\'s output is not valid JSON\, show output instead of crashing \([https\://github\.com/ansible\-community/antsibull\-nox/pull/140](https\://github\.com/ansible\-community/antsibull\-nox/pull/140)\)\.
* When computing Python 3 only paths for black or pylint\, do not recurse into <code>\_\_pycache\_\_</code> \([https\://github\.com/ansible\-community/antsibull\-nox/pull/143](https\://github\.com/ansible\-community/antsibull\-nox/pull/143)\)\.
* When determining which files to run various Python linters on when change detection is enabled\, ensure to restrict to Python files \([https\://github\.com/ansible\-community/antsibull\-nox/pull/146](https\://github\.com/ansible\-community/antsibull\-nox/pull/146)\)\.
* Work around [bug in ansible\-galaxy when no collections are found](https\://github\.com/ansible/ansible/issues/73127) \([https\://github\.com/ansible\-community/antsibull\-nox/pull/154](https\://github\.com/ansible\-community/antsibull\-nox/pull/154)\)\.

