---
title: semvertag
date: 2026-07-27 15:13:27 +00:00
tags:
  - modern-python
  - GitHub Actions
draft: false
repo: https://github.com/modern-python/semvertag
marketplace: https://github.com/marketplace/actions/semvertag
version: 0.8.3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of tagging a GitLab or GitHub repository with semantic version tags based on CI build information. It supports two strategies: branch-prefix and conventional-commits, which determine the appropriate semver bump based on commit messages or branch names. The action is designed to be used in both GitLab CI and GitHub Actions workflows, making it versatile for project management with automatic versioning integration.
---


Version updated for **https://github.com/modern-python/semvertag** to version **0.8.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semvertag) to find the latest changes.

## Action Summary

This GitHub Action automates the process of tagging a GitLab or GitHub repository with semantic version tags based on CI build information. It supports two strategies: branch-prefix and conventional-commits, which determine the appropriate semver bump based on commit messages or branch names. The action is designed to be used in both GitLab CI and GitHub Actions workflows, making it versatile for project management with automatic versioning integration.

## What's Changed

# semvertag 0.8.3 — restore compatibility with modern-di 3.x

**0.8.2 is broken and should not be used.** Installing it fresh resolves
modern-di 3.0.0, which renamed a Factory keyword semvertag still passed, so the
CLI raised `TypeError` on import — `semvertag --help` included. This release
fixes that and bounds the dependency so it cannot recur.

## Fixes

- **Migrate to the modern-di 3.x Factory API.** `Factory(cache_settings=...)`
  was renamed to `Factory(cache=...)` in modern-di 3.0.0. `semvertag/ioc.py`
  still used the old name, so importing `semvertag.ioc` raised
  `TypeError: Factory.__init__() got an unexpected keyword argument 'cache_settings'`.
  Every entry point died on import, and the `modern-python/semvertag` GitHub
  Action failed for all users.

## Dependencies

- **Bound `modern-di-typer` to `>=3,<4`.** The dependency was previously
  unbounded, which is how a modern-di major landed in a published semvertag
  without a release. A future modern-di 4.0 now fails resolution at install
  time instead of breaking the CLI at runtime.

## CI

- Adopt **ruff 0.16.0**: ignore `CPY001` (`missing-copyright-notice`) and
  silence `PLR0917` on the typer callback, both newly stabilized out of
  preview; reformat Python code blocks in Markdown, which 0.16.0 now formats.
  No runtime effect.

## Downstream

Upgrade from 0.8.2. Users of the `modern-python/semvertag` action get the fix
automatically once the floating `v0` tag moves; no workflow change is needed.

