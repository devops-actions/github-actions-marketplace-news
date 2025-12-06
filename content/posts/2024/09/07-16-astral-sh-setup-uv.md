---
title: Python setup uv
date: 2024-09-07 16:46:38 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/python-setup-uv
version: v2.1.0
dependentsNumber: "204"
---


Version updated for **astral-sh/setup-uv** to version **v2.1.0**.
- This action is used across all versions by **204** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-setup-uv) to find the latest changes.

## Release notes

The default cacheLocalPath was `/tmp/setup-uv-cache` which led to undefined behavior on Windows runners. On Windows the default is now D:\a\_tmp\setup-uv-cache.

---

It is now also supported to supply a list of globs in `cache-dependency-glob`. This aligns with the functionality of `cache-dependency-path` in `actions/setup-python`

```yaml
- name: Define a list of cache dependency globs
  uses: astral-sh/setup-uv@v1
  with:
    enable-cache: true
    cache-dependency-glob: |
      '**requirements*.txt'
      '**pyproject.toml'
```

## Changes

## 🐛 Bug fixes

- Use D:\\a\\\_tmp\\setup-uv-cache as default cacheLocalPath on Windows @eifinger (#57)

## 🚀 Enhancements

- Support a list of cache-dependency-glob @eifinger (#41)

## 🧰 Maintenance

- rename utils/utils.ts to constants.ts @eifinger (#59)
- chore: update known checksums for 0.4.7 @github-actions (#58)
- chore: update known checksums for 0.4.6 @github-actions (#55)
- Always run check-dist check @eifinger (#53)
- chore: update known checksums for 0.4.5 @github-actions (#48)
- Run test build only on ubuntu-latest @eifinger (#51)

## 📚 Documentation

- Update README to v2 @hynek (#50)

## ⬆️ Dependency updates

- Bump peter-evans/create-pull-request from 7.0.0 to 7.0.1 @dependabot (#56)

