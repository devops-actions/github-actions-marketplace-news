---
title: astral-sh/setup-uv
date: 2025-04-24 16:59:18 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: https://github.com/astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v6.0.0
dependentsNumber: "17,252"
---


Version updated for **https://github.com/astral-sh/setup-uv** to version **v6.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **17,252** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Release notes

## Changes

This version contains some breaking changes which have been gathering up for a while. Lets dive into them:

- [Activate environment](#activate-environment)
- [Working Directory](#working-directory)
- [Default `cache-dependency-glob`](#default-cache-dependency-glob)
- [Use default cache dir on self hosted runners](#use-default-cache-dir-on-self-hosted-runners)

### Activate environment

In previous versions using the input `python-version` automatically activated a venv at the repository root.
This led to some unwanted side-effects, was sometimes unexpected and not flexible enough.

The venv activation is now explicitly controlled with the new input `activate-environment` (false by default):

```yaml
- name: Install the latest version of uv and activate the environment
  uses: astral-sh/setup-uv@v6
  with:
    activate-environment: true
- run: uv pip install pip
```

The venv gets created by the [`uv venv`](https://docs.astral.sh/uv/pip/environments/) command so the python version is controlled by the `python-version` input or the files `pyproject.toml`, `uv.toml`, `.python-version` in the `working-directory`.

### Working Directory

The new input `working-directory` controls where we look for `pyproject.toml`, `uv.toml` and `.python-version` files
which are used to determine the version of uv and python to install.

It can also be used to control where the venv gets created.

```yaml
- name: Install uv based on the config files in the working-directory
  uses: astral-sh/setup-uv@v6
  with:
    working-directory: my/subproject/dir
```

> [!CAUTION]
>
> The inputs `pyproject-file` and `uv-file` have been removed.

### Default `cache-dependency-glob`

@ssbarnea found out that the default `cache-dependency-glob` was not suitable for a lot of users.

The old default

```yaml
cache-dependency-glob: |
  **/requirements*.txt
  **/uv.lock
```

is changed and should cover over 99.5% of use cases:

```yaml
cache-dependency-glob: |
  **/*(requirements|constraints)*.(txt|in)
  **/pyproject.toml
  **/uv.lock
```

> [!NOTE]
>
> This shouldn't be a breaking change. The only thing you may notice is that your caches get invalidated once.

### Use default cache dir on self hosted runners

The directory where uv stores its cache was always set to a directory in `RUNNER_TEMP`. For self-hosted runners this made no sense as this gets cleaned after every run and led to slower runs than necessary.

On self-hosted runners `UV_CACHE_DIR` is no longer set and the [default cache directory](https://docs.astral.sh/uv/concepts/cache/#cache-directory) is used instead.


## 🚨 Breaking changes

- Change default cache-dependency-glob @eifinger (#352)
- No default UV\_CACHE\_DIR on selfhosted runners @eifinger (#380)
- new inputs activate-environment and working-directory @eifinger (#381)

## 🧰 Maintenance

- chore: update known checksums for 0.6.16 @[github-actions[bot]](https://github.com/apps/github-actions) (#378)
- chore: update known checksums for 0.6.15 @[github-actions[bot]](https://github.com/apps/github-actions) (#377)

## 📚 Documentation

- bump to v6 in README @eifinger (#382)
- log info on venv activation @eifinger (#375)

