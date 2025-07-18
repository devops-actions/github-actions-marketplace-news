---
title: astral-sh/setup-uv
date: 2025-07-18 01:17:04 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: https://github.com/astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v6.4.0
dependentsNumber: "24,993"
---


Version updated for **https://github.com/astral-sh/setup-uv** to version **v6.4.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **24,993** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Release notes

## Changes

You can now use the `version-file` input to specify a file that contains the version of uv to install.
This can either be a `pyproject.toml` or `uv.toml` file which defines a `required-version` or
uv defined as a dependency in `pyproject.toml` or `requirements.txt`.

```yaml
- name: Install uv based on the version defined in requirements.txt
  uses: astral-sh/setup-uv@v6
  with:
    version-file: "requirements.txt"
```

## 🚀 Enhancements

- Add input version-file @eifinger (#486)

## 🧰 Maintenance

- chore: update known versions for 0.7.22 @[github-actions[bot]](https://github.com/apps/github-actions) (#488)
- Bump dependencies @eifinger (#487)
- chore: update known versions for 0.7.21 @[github-actions[bot]](https://github.com/apps/github-actions) (#483)
- chore: update known versions for 0.7.20 @[github-actions[bot]](https://github.com/apps/github-actions) (#480)
- chore: update known versions for 0.7.19 @[github-actions[bot]](https://github.com/apps/github-actions) (#475)
- chore: update known versions for 0.7.18 @[github-actions[bot]](https://github.com/apps/github-actions) (#473)
- chore: update known versions for 0.7.17 @[github-actions[bot]](https://github.com/apps/github-actions) (#468)
- chore: update known versions for 0.7.16 @[github-actions[bot]](https://github.com/apps/github-actions) (#466)
- chore: update known versions for 0.7.15 @[github-actions[bot]](https://github.com/apps/github-actions) (#463)

## 📚 Documentation

- Add FAQ on changed cache and cache upload behavior @eifinger (#477)

## ⬆️ Dependency updates

- Bump dependencies @eifinger (#487)

