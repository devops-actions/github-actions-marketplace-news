---
title: Python Setup Rye
date: 2023-12-09 11:14:15 +00:00
tags:
  - eifinger
  - GitHub Actions
draft: false
repo: eifinger/setup-rye
marketplace: https://github.com/marketplace/actions/python-setup-rye
version: v1.6.0
dependentsNumber: "25"
---


Version updated for **eifinger/setup-rye** to version **v1.6.0**.
- This action is used across all versions by **25** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-setup-rye) to find the latest changes.

## Release notes

## Changes

If your rye project is not at the root of the repository you can specify the working directory relative to the repository root. This is useful for monorepos.

If you do not use the caching feature `working-directory` will have no effect.

```yaml
- name: Enable caching and define a working directory
  uses: eifinger/setup-rye@v1
  with:
    enable-cache: true
    working-directory: 'path/to/rye/project'
```

Thank you @catwell for reporting this missing feature.

## ✨ New features

- add working-directory parameter @eifinger (#113)

## ⬆️ Dependency updates

- chore(deps-dev): bump @types/node from 20.8.10 to 20.10.4 @dependabot (#111)
- chore(deps-dev): bump typescript from 5.2.2 to 5.3.3 @dependabot (#110)
- chore(deps-dev): bump eslint from 8.52.0 to 8.55.0 @dependabot (#108)
- chore(deps-dev): bump prettier from 3.0.3 to 3.1.0 @dependabot (#99)
- chore(deps-dev): bump @types/node from 20.8.9 to 20.8.10 @dependabot (#96)

