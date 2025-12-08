---
title: astral-sh/setup-uv
date: 2025-12-08 05:20:25 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: https://github.com/astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v7.1.5
dependentsNumber: "37,144"
---


Version updated for **https://github.com/astral-sh/setup-uv** to version **v7.1.5**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **37,144** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Release notes

## Changes

https://github.com/astral-sh/setup-uv/pull/612 fixed a faulty behavior where this action set `UV_CACHE_DIR` even though `enable-cache` was `false`. It also fixed the cases were the cache dir is already configured in a settings file like `pyproject.toml` or `UV_CACHE_DIR` was already set.  Here the action shouldn't overwrite or set `UV_CACHE_DIR`.

These fixes introduced an unwanted behavior: You can still set `cache-local-path` but this action didn't do anything. This release fixes that.

You can now use `cache-local-path` to automatically set `UV_CACHE_DIR` even when `enable-cache` is `false` (or gets set to false by default e.g. on self-hosted runners)

```yaml
- name: This is now possible
  uses: astral-sh/setup-uv@v7
  with:
    enable-cache: false
    cache-local-path: "/path/to/cache"
```


## 🐛 Bug fixes

- allow cache-local-path w/o enable-cache @eifinger (#707)

## 🧰 Maintenance

- set biome files.maxSize to 2MiB @eifinger (#708)
- chore: update known checksums for 0.9.16 @[github-actions[bot]](https://github.com/apps/github-actions) (#706)
- chore: update known checksums for 0.9.15 @[github-actions[bot]](https://github.com/apps/github-actions) (#704)
- chore: use `npm ci --ignore-scripts` everywhere @woodruffw (#699)
- chore: update known checksums for 0.9.14 @[github-actions[bot]](https://github.com/apps/github-actions) (#700)
- chore: update known checksums for 0.9.13 @[github-actions[bot]](https://github.com/apps/github-actions) (#694)
- chore: update known checksums for 0.9.12 @[github-actions[bot]](https://github.com/apps/github-actions) (#693)
- chore: update known checksums for 0.9.11 @[github-actions[bot]](https://github.com/apps/github-actions) (#688)

## ⬆️ Dependency updates

- Bump peter-evans/create-pull-request from 7.0.8 to 7.0.9 @[dependabot[bot]](https://github.com/apps/dependabot) (#695)
- bump dependencies @eifinger (#709)
- Bump github/codeql-action from 4.30.9 to 4.31.6 @[dependabot[bot]](https://github.com/apps/dependabot) (#698)
- Bump zizmorcore/zizmor-action from 0.2.0 to 0.3.0 @[dependabot[bot]](https://github.com/apps/dependabot) (#696)
- Bump eifinger/actionlint-action from 1.9.2 to 1.9.3 @[dependabot[bot]](https://github.com/apps/dependabot) (#690)

