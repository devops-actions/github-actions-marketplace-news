---
title: Test Reporter
date: 2025-11-22 21:02:59 +00:00
tags:
  - dorny
  - GitHub Actions
draft: false
repo: https://github.com/dorny/test-reporter
marketplace: https://github.com/marketplace/actions/test-reporter
version: v2.2.0
dependentsNumber: "3"
---


Version updated for **https://github.com/dorny/test-reporter** to version **v2.2.0**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/test-reporter) to find the latest changes.

## Release notes

## What's Changed

### Features
- Add collapsed option to control report visibility by @pespinel in #664
  - Allows setting reports to collapsed, expanded, or auto mode
  - Includes validation for the `collapsed` input parameter

### Bug Fixes
- Fix badge encoding for values including the `_` underscore character in #672
  - Correctly encode URI components for img.shields.io service
- Define the `report-title` attribute in action definition in #637

### Dependencies
- Bump js-yaml from 4.1.0 to 4.1.1 by @dependabot in #676
- Bump actions/upload-artifact from 4 to 5 by @dependabot in #665
- Bump actions/setup-node from 5 to 6 by @dependabot in #662
- Upgrade dependencies to latest minor releases (#657, #668)
- Upgrade jest to v30 (#632, #631)
- Bump typescript from 5.8.3 to 5.9.2 by @dependabot in #646

### CI/CD
- Upgrade `actions/checkout` to v5 in #658
- Upgrade `actions/setup-node` to v5 in #658

### Internal
- Refactor variable names and code cleanup (#630)

## New Contributors
- @pespinel made their first contribution in #664

**Full Changelog**: https://github.com/dorny/test-reporter/compare/v2.1.1...v2.2.0
