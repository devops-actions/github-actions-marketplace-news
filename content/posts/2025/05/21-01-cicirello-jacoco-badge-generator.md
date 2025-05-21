---
title: jacoco-badge-generator
date: 2025-05-21 01:12:29 +00:00
tags:
  - cicirello
  - GitHub Actions
draft: false
repo: https://github.com/cicirello/jacoco-badge-generator
marketplace: https://github.com/marketplace/actions/jacoco-badge-generator
version: v2.12.0
dependentsNumber: "2"
---


Version updated for **https://github.com/cicirello/jacoco-badge-generator** to version **v2.12.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jacoco-badge-generator) to find the latest changes.

## Release notes

## [2.12.0] - 2025-05-20

### Added
* Added inputs for disabling failure on decrease when coverage is above a specified limit:
  * `coverage-decrease-limit`: Overrides `fail-on-coverage-decrease` when coverage is at least this limit
  * `branches-decrease-limit`: Overrides `fail-on-branches-decrease` when branches coverage is at least this limit

### Dependencies
* Bump cicirello/pyaction from 4.23.0 to 4.33.0, including upgrading Python to 3.13 within the Docker container of the action.

### CI/CD
* Bump Python to 3.13 in CI/CD workflows when running unit tests.
* Matrix testing for Python versions 3.8 through 3.13 for unit tests.
* Matrix testing the CLI mode for Python versions 3.8 through 3.13.
