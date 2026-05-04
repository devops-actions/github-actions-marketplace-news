---
title: multicz CLI
date: 2026-05-04 06:27:43 +00:00
tags:
  - goabonga
  - GitHub Actions
draft: false
repo: https://github.com/goabonga/multicz-action
marketplace: https://github.com/marketplace/actions/multicz-cli
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/goabonga/multicz-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/multicz-cli) to find the latest changes.

## Action Summary

The `multicz-action` GitHub Action installs and integrates the `multicz` CLI tool, designed for managing multi-component versioning in monorepos. It automates tasks like detecting changes, generating release notes, validating configurations, and managing version bumps across components. Each `multicz` subcommand is available as a standalone sub-action, offering typed inputs, automatic installation, and outputs for streamlined workflows.

## What's Changed

### Breaking changes

- add composite action definition (`53c05f9`)

### Features

- **init**: add multicz init sub-action (`f6ccfbb`)
- **status**: add multicz status sub-action (`ed1dc68`)
- **plan**: add multicz plan sub-action (`a6ed292`)
- **state**: add multicz state sub-action (`579f06e`)
- **changed**: add multicz changed sub-action (`28eb3d2`)
- **artifacts**: add multicz artifacts sub-action (`fea4a92`)
- **release-notes**: add multicz release-notes sub-action (`6441e11`)
- **explain**: add multicz explain sub-action (`de8943d`)
- **bump**: add multicz bump sub-action (`eeffea1`)
- **get**: add multicz get sub-action (`7323074`)
- **changelog**: add multicz changelog sub-action (`a2c83fe`)
- **validate**: add multicz validate sub-action (`0215b84`)
- **check**: add multicz check sub-action (`7b3e582`)
- **init**: support multicz-version input on install fallback (`34466cc`)
- **status**: support multicz-version input on install fallback (`a59a165`)
- **plan**: support multicz-version input on install fallback (`58b8599`)
- **state**: support multicz-version input on install fallback (`8dfdae7`)
- **changed**: support multicz-version input on install fallback (`2e0e0d7`)
- **artifacts**: support multicz-version input on install fallback (`86586df`)
- **release-notes**: support multicz-version input on install fallback (`05fd2e8`)
- **explain**: support multicz-version input on install fallback (`240b5f9`)
- **bump**: support multicz-version input on install fallback (`e8d59c6`)
- **get**: support multicz-version input on install fallback (`4a4cb31`)
- **changelog**: support multicz-version input on install fallback (`a5c1b9d`)
- **validate**: support multicz-version input on install fallback (`5349a3d`)
- **check**: support multicz-version input on install fallback (`dc194ea`)

### Fixes

- **action**: rename to 'multicz CLI' to satisfy marketplace uniqueness (`98a1743`)

