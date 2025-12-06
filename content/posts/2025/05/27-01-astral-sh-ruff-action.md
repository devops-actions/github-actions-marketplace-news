---
title: ruff-action
date: 2025-05-27 01:11:47 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: https://github.com/astral-sh/ruff-action
marketplace: https://github.com/marketplace/actions/ruff-action
version: v3.4.0
dependentsNumber: "2,204"
---


Version updated for **https://github.com/astral-sh/ruff-action** to version **v3.4.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **2,204** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ruff-action) to find the latest changes.

## Release notes

## Changes

With this release you can now also define your ruff version using [pep440 specifier](https://peps.python.org/pep-0440/#version-specifiers):

```yaml
- name: Install a pep440-specifier-satisfying version of ruff
  uses: astral-sh/ruff-action@v3
  with:
    version: ">=0.11.10,<0.12.0"
```

## 🚀 Enhancements

- Add support for pep440 version specifiers @eifinger (#150)

## 🧰 Maintenance

- Check that all jobs are in all-tests-passed needs @eifinger (#151)
- chore: update known checksums for 0.11.11 @[github-actions[bot]](https://github.com/apps/github-actions) (#146)
- chore: update known checksums for 0.11.10 @[github-actions[bot]](https://github.com/apps/github-actions) (#140)
- chore: update known checksums for 0.11.9 @[github-actions[bot]](https://github.com/apps/github-actions) (#138)

## 📚 Documentation

- docs: Explain that the default behaviour is ruff check @robertHowlett (#142)

## ⬆️ Dependency updates

- Bump dependencies @eifinger (#152)

