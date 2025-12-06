---
title: ruff-action
date: 2025-04-27 16:57:55 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: https://github.com/astral-sh/ruff-action
marketplace: https://github.com/marketplace/actions/ruff-action
version: v3.3.0
dependentsNumber: "1,921"
---


Version updated for **https://github.com/astral-sh/ruff-action** to version **v3.3.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1,921** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ruff-action) to find the latest changes.

## Release notes

## Changes

Thanks to @scootermon we now also find the desired ruff versions in poetry groups in `pyproject.toml`:

```toml
[tool.poetry.group.dev.dependencies]
ruff = "0.8.3"
```

## 🚀 Enhancements

- Add support for reading the ruff version from Poetry groups @scootermon (#127)

## 🧰 Maintenance

- chore: update known checksums for 0.11.7 @[github-actions[bot]](https://github.com/apps/github-actions) (#125)
- chore: update known checksums for 0.11.6 @[github-actions[bot]](https://github.com/apps/github-actions) (#123)
- chore: update known checksums for 0.11.5 @[github-actions[bot]](https://github.com/apps/github-actions) (#120)
- chore: update known checksums for 0.11.4 @[github-actions[bot]](https://github.com/apps/github-actions) (#117)
- chore: update known checksums for 0.11.3 @[github-actions[bot]](https://github.com/apps/github-actions) (#116)
- chore: update known checksums for 0.11.2 @[github-actions[bot]](https://github.com/apps/github-actions) (#108)
- Add required permissions and all-tests-passed @eifinger (#107)

## 📚 Documentation

- Mention the `--diff` flag for `format --check` @Avasam (#104)

