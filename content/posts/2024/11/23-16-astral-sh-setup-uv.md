---
title: astral-sh/setup-uv
date: 2024-11-23 16:47:22 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v4.0.0
dependentsNumber: "4,314"
---


Version updated for **astral-sh/setup-uv** to version **v4.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **4,314** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Release notes

# 🚨 Breaking change 🚨

By default, the action will now fail if caching is enabled but there is nothing to upload (the uv cache directory does not exist).
If you want to ignore this, set the `ignore-nothing-to-cache` input to `true`.

```yaml
- name: Ignore nothing to cache
  uses: astral-sh/setup-uv@v3
  with:
    enable-cache: true
    ignore-nothing-to-cache: true
```

---

In previous releases only an error got logged when saving the cache failed. In most cases users did not realize something was wrong with their config.

<img width="1014" alt="image" src="https://github.com/user-attachments/assets/6d03ac1f-9c04-4571-841e-de41291f4939">


## Changes

## 🚨 Breaking changes

- Fail when cache local path does not exist when trying to cache @eifinger (#163)

## 🐛 Bug fixes

- Fail when cache local path does not exist when trying to cache @eifinger (#163)
- Remove working dir from cacheDependencyGlob error message @eifinger (#162)

## 📚 Documentation

- Change some formulations in README.md @eifinger (#164)
- Add comment to clarify process.exit(0) @eifinger (#161)

