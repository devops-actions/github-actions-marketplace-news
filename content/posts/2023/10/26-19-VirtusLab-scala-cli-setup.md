---
title: scala-cli-setup-action
date: 2023-10-26 19:00:31 +00:00
tags:
  - VirtusLab
  - GitHub Actions
draft: false
repo: VirtusLab/scala-cli-setup
marketplace: https://github.com/marketplace/actions/scala-cli-setup-action
version: v1.0.5
dependentsNumber: "138"
---


Version updated for **VirtusLab/scala-cli-setup** to version **v1.0.5**.
- This action is used across all versions by **138** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/scala-cli-setup-action) to find the latest changes.

## Release notes

## Java 17 required for Bloop
Starting with `v1.0.5` JVM 17 or higher is required for Bloop to be used with Scala CLI.
If for whatever reason you have been explicitly running Bloop with JVM <17 on your CI, you may need to rollback to Scala CLI `v1.0.4` to fix your jobs.

This only applies to Bloop JVM, Scala CLI supports building and running code targeted at older JVMs as before.

Added by @Gedochao in https://github.com/VirtusLab/scala-cli-setup/pull/363

## What's Changed
* build(deps-dev): bump typescript from 5.0.4 to 5.1.6 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/287
* build(deps-dev): bump @typescript-eslint/parser from 5.59.8 to 5.62.0 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/292
* build(deps): bump semver from 6.3.0 to 6.3.1 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/295
* Update dist by @github-actions in https://github.com/VirtusLab/scala-cli-setup/pull/312
* build(deps-dev): bump word-wrap from 1.2.3 to 1.2.4 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/301
* build(deps-dev): bump @types/node from 20.2.5 to 20.8.6 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/348
* build(deps-dev): bump eslint from 8.41.0 to 8.51.0 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/343
* build(deps-dev): bump typescript from 5.1.6 to 5.2.2 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/324
* build(deps-dev): bump eslint-plugin-github from 4.7.0 to 4.10.1 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/338
* build(deps): bump actions/checkout from 3 to 4 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/327
* build(deps-dev): bump @typescript-eslint/eslint-plugin from 5.59.8 to 6.8.0 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/349
* Bump `@actions/core` to `1.10.1` by @Gedochao in https://github.com/VirtusLab/scala-cli-setup/pull/350
* Fix the CI to actually use node `lts/gallium` by @Gedochao in https://github.com/VirtusLab/scala-cli-setup/pull/351
* Update dist by @github-actions in https://github.com/VirtusLab/scala-cli-setup/pull/352
* build(deps-dev): bump @vercel/ncc from 0.36.1 to 0.38.0 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/353
* build(deps-dev): bump @vercel/ncc from 0.38.0 to 0.38.1 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/354
* build(deps-dev): bump @types/node from 20.8.6 to 20.8.7 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/355
* Update dist by @github-actions in https://github.com/VirtusLab/scala-cli-setup/pull/356
* build(deps-dev): bump eslint from 8.51.0 to 8.52.0 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/357
* build(deps-dev): bump @typescript-eslint/eslint-plugin from 6.8.0 to 6.9.0 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/359
* build(deps-dev): bump @typescript-eslint/parser from 6.8.0 to 6.9.0 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/360
* build(deps-dev): bump @types/node from 20.8.7 to 20.8.8 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/358
* build(deps-dev): bump @types/node from 20.8.8 to 20.8.9 by @dependabot in https://github.com/VirtusLab/scala-cli-setup/pull/361
* Deprecate Java 11 by @Gedochao in https://github.com/VirtusLab/scala-cli-setup/pull/363
* Update ScalaCLI by @github-actions in https://github.com/VirtusLab/scala-cli-setup/pull/362
* Update dist by @github-actions in https://github.com/VirtusLab/scala-cli-setup/pull/364


**Full Changelog**: https://github.com/VirtusLab/scala-cli-setup/compare/v1...v1.0.5
