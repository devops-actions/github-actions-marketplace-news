---
title: Python Setup Rye
date: 2024-02-24 19:21:16 +00:00
tags:
  - eifinger
  - GitHub Actions
draft: false
repo: eifinger/setup-rye
marketplace: https://github.com/marketplace/actions/python-setup-rye
version: v1.15.0
dependentsNumber: "68"
---


Version updated for **eifinger/setup-rye** to version **v1.15.0**.
- This action is used across all versions by **68** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-setup-rye) to find the latest changes.

## Release notes

## Changes

To avoid hitting the error `API rate limit exceeded` you can supply a GitHub token with the `github-token` input.

```yaml
- name: Install rye and supply a GitHub token
  uses: eifinger/setup-rye@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

## 🚀 Enhancements

- Add input github-token @eifinger (#181)

