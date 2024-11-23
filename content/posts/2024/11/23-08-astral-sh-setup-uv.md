---
title: astral-sh/setup-uv
date: 2024-11-23 08:47:38 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v3.2.4
dependentsNumber: "4,306"
---


Version updated for **astral-sh/setup-uv** to version **v3.2.4**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **4,306** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Release notes

This release adds support for expanding the `~` character to the user's home directory for the following inputs:

- `cache-local-path`
- `tool-dir`
- `tool-bin-dir`
- `cache-dependency-glob`

```yaml
- name: Expand the tilde character
  uses: astral-sh/setup-uv@v3
  with:
    cache-local-path: "~/path/to/cache"
    tool-dir: "~/path/to/tool/dir"
    tool-bin-dir: "~/path/to/tool-bin/dir"
    cache-dependency-glob: "~/my-cache-buster"
```

In order to make this work `cache-dependency-glob` also got support to glob files outside the working directory:

```yaml
- name: Define an absolute cache dependency glob
  uses: astral-sh/setup-uv@v3
  with:
    enable-cache: true
    cache-dependency-glob: "/tmp/my-folder/requirements*.txt"
```

Thank you @fynnsu for raising this issue!

## 🚀 Enhancements

- Expand TILDE (~) in path inputs @eifinger (#160)

## 🧰 Maintenance

- chore: update known checksums for 0.5.4 @github-actions (#158)
- chore: update known checksums for 0.5.3 @github-actions (#156)

## ⬆️ Dependency updates

- Bump @types/node from 22.9.0 to 22.9.1 @dependabot (#157)
- Bump @vercel/ncc from 0.38.2 to 0.38.3 @dependabot (#155)

