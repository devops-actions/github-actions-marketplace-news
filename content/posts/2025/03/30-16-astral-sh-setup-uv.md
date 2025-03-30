---
title: astral-sh/setup-uv
date: 2025-03-30 16:58:37 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: https://github.com/astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v5.4.1
dependentsNumber: "14,443"
---


Version updated for **https://github.com/astral-sh/setup-uv** to version **v5.4.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **14,443** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Release notes

## Changes

With this release you can also use [pep440 version specifiers](https://peps.python.org/pep-0440/#version-specifiers) as `required-version` in files`uv.toml`, `pyroject.toml` and in the `version` input:

```yaml
- name: Install a pep440-specifier-satisfying version of uv
  uses: astral-sh/setup-uv@v5
  with:
    version: ">=0.4.25,<0.5"
```


## 🐛 Bug fixes

- Add support for pep440 version identifiers @eifinger (#353)

## 🧰 Maintenance

- chore: update known checksums for 0.6.10 @[github-actions[bot]](https://github.com/apps/github-actions) (#345)

## 📚 Documentation

- Add pep440 to docs header @eifinger (#355)
- Fix glob syntax link @flying-sheep (#349)
- Add link to supported glob patterns @eifinger (#348)

