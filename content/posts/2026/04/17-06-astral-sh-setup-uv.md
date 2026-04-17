---
title: astral-sh/setup-uv
date: 2026-04-17 06:33:56 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: https://github.com/astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v8.1.0
dependentsNumber: "56,541"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/astral-sh/setup-uv** to version **v8.1.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **56,541** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Action Summary

The `setup-uv` GitHub Action automates the installation and setup of a specific version of the `uv` tool in a CI/CD workflow. It simplifies managing `uv` versions by resolving them from configuration files or installing the latest version, adding the tool to the system PATH, and optionally verifying checksums for security. Additionally, it enhances efficiency by caching installations, enabling virtual environment activation, and providing error output matchers for streamlined debugging.

## What's Changed

## Changes

This add the a new boolean input `no-project`.
It only makes sense to use in combination with `activate-environment: true` and will append `--no project` to the `uv venv` call. This is for example useful [if you have a pyproject.toml file with parts unparseable by uv](https://github.com/astral-sh/setup-uv/issues/854)

## 🚀 Enhancements

- Add input no-project in combination with activate-environment @eifinger (#856)

## 🧰 Maintenance

- fix: grant contents:write to validate-release job @eifinger (#860)
- Add a release-gate step to the release workflow @zanieb (#859)
- Draft commitish releases @eifinger (#858)
- Add action-types.yml to instructions @eifinger (#857)
- chore: update known checksums for 0.11.7 @[github-actions[bot]](https://github.com/apps/github-actions) (#853)
- Refactor version resolving @eifinger (#852)
- chore: update known checksums for 0.11.6 @[github-actions[bot]](https://github.com/apps/github-actions) (#850)
- chore: update known checksums for 0.11.5 @[github-actions[bot]](https://github.com/apps/github-actions) (#845)
- chore: update known checksums for 0.11.4 @[github-actions[bot]](https://github.com/apps/github-actions) (#843)
- Add a release workflow @zanieb (#839)
- chore: update known checksums for 0.11.3 @[github-actions[bot]](https://github.com/apps/github-actions) (#836)

## 📚 Documentation

- Update ignore-nothing-to-cache documentation @eifinger (#833)
- Pin setup-uv docs to v8 @eifinger (#829)

## ⬆️ Dependency updates

- chore(deps): bump release-drafter/release-drafter from 7.1.1 to 7.2.0 @[dependabot[bot]](https://github.com/apps/dependabot) (#855)

