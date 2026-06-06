---
title: Update vcpkg port
date: 2026-06-06 14:28:30 +00:00
tags:
  - Symmetricity
  - GitHub Actions
draft: false
repo: https://github.com/Symmetricity/update-vcpkg-port-action
marketplace: https://github.com/marketplace/actions/update-vcpkg-port
version: v1.0.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/Symmetricity/update-vcpkg-port-action** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/update-vcpkg-port) to find the latest changes.

## What's Changed

## v1.0.0

Initial stable release of `update-vcpkg-port-action`.

### Added

- Composite GitHub Action for rendering or updating vcpkg ports from upstream
  releases.
- SHA512 computation for source archives.
- Template rendering for package-specific vcpkg port recipes.
- vcpkg manifest formatting and versions database refresh support.
- Optional `vcpkg install` validation.
- Manual, upstream-maintainer, and user-maintained workflow examples.
- CI coverage with actionlint, zizmor, ruff, Python compilation, unit tests,
  self-use action validation, and CodeQL.

### Release Notes

This release is intended to be consumed as:

```yaml
- uses: Symmetricity/update-vcpkg-port-action@v1
```

For stricter reproducibility, pin to `@v1.0.0` or a full commit SHA.

_Prepared with AI assistance._

## What's Changed
* Bump actions/checkout from 5.0.1 to 6.0.2 in the github-actions group by @dependabot[bot] in https://github.com/Symmetricity/update-vcpkg-port-action/pull/1

## New Contributors
* @dependabot[bot] made their first contribution in https://github.com/Symmetricity/update-vcpkg-port-action/pull/1

**Full Changelog**: https://github.com/Symmetricity/update-vcpkg-port-action/commits/v1.0.0
