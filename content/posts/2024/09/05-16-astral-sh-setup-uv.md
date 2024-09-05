---
title: Python setup uv
date: 2024-09-05 16:46:31 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/python-setup-uv
version: v2.0.0
dependentsNumber: "11"
---


Version updated for **astral-sh/setup-uv** to version **v2.0.0**.
- This action is used across all versions by **11** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-setup-uv) to find the latest changes.

## Release notes


This is the first release under the @astral-sh org 🥳 

We decided to change the default version to `latest` instead of regularly updating the default version to the latest released version of `uv`.

This aligns with the default behavior of other `setup-x` actions.

You can always pin a specific version with:

```yaml
- name: Install a specific version of uv
  uses: astral-sh/setup-uv@v1
  with:
    version: "0.4.4"
```

For self hosted runners this enables use of the tool cache and avoids downloading uv everytime (~1s).

The known checksums will still be updated after each release of `uv`.

## Changes

- Change Prettier settings @charliermarsh (#36)
- Run Prettier over Markdown and YAML files @charliermarsh (#35)

## 🚨 Breaking changes

- Change default to `"latest"` @charliermarsh (#37)

## 🚀 Enhancements

- Do not change default version on known checksum update @eifinger (#39)

## 📚 Documentation

- Fix typo "relaying" in README.md @eifinger (#47)
- Make some minor edits to the README @charliermarsh (#46)
- Add acknowledgements and Astral logo @charliermarsh (#34)
- Rename repo org in examples and urls @eifinger (#33)

## ⬆️ Dependency updates

- Bump @actions/glob from 0.4.0 to 0.5.0 @dependabot (#10)
- Bump typescript from 5.4.5 to 5.5.4 @dependabot (#30)
- Bump peter-evans/create-pull-request from 7.0.0 to 7.0.1 @dependabot (#42)
- Bump eslint-plugin-jest from 28.8.2 to 28.8.3 @dependabot (#43)
- Bump @types/node from 22.5.3 to 22.5.4 @dependabot (#44)
- Bump eslint-plugin-import from 2.29.1 to 2.30.0 @dependabot (#31)
- Bump @types/node from 20.14.9 to 22.5.3 @dependabot (#32)

