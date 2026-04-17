---
title: Dev Container Build and Run Action
date: 2026-04-17 14:12:37 +00:00
tags:
  - devcontainers
  - GitHub Actions
draft: false
repo: https://github.com/devcontainers/ci
marketplace: https://github.com/marketplace/actions/dev-container-build-and-run-action
version: v0.3.1900000449
dependentsNumber: "7,352"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/devcontainers/ci** to version **v0.3.1900000449**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **7,352** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dev-container-build-and-run-action) to find the latest changes.

## Action Summary

The **Dev Container Build and Run GitHub Action** simplifies the use of Dev Containers within GitHub workflows by automating tasks such as pre-building container images and running commands in a Dev Container for CI, testing, and other workflows. It supports Dev Container Features, adds metadata to images for easier reuse, and integrates with the `@devcontainers/cli` for compatibility and enhanced functionality. This action addresses the challenge of streamlining containerized development and CI processes, reducing manual setup and configuration.

## What's Changed

## What's Changed
* Remove compiled JS content by @stuartleeks in https://github.com/devcontainers/ci/pull/210
* Retain run-main.js/run-post.js by @stuartleeks in https://github.com/devcontainers/ci/pull/213
* Update tag to use generated version number by @stuartleeks in https://github.com/devcontainers/ci/pull/214
* Workflow tidying by @stuartleeks in https://github.com/devcontainers/ci/pull/216
* Add missing 'v' prefix on release/tag by @stuartleeks in https://github.com/devcontainers/ci/pull/217
* Update docs to point to v0.3 release by @stuartleeks in https://github.com/devcontainers/ci/pull/218
* Pass env vars to `devcontainer up` by @stuartleeks in https://github.com/devcontainers/ci/pull/211
* Re-enable running subset of tests in forks by @stuartleeks in https://github.com/devcontainers/ci/pull/220
* re-enable test `platform_with_runCmd` by @stuartleeks in https://github.com/devcontainers/ci/pull/203
* Add `noCache` option by @trxcllnt in https://github.com/devcontainers/ci/pull/199
* Add additionalMounts for GitHub Action Output Mount by @andar1an in https://github.com/devcontainers/ci/pull/219
* Update checks action to remove NodeJS version warning by @stuartleeks in https://github.com/devcontainers/ci/pull/228
* Revert to latest version of tfx-cli by @stuartleeks in https://github.com/devcontainers/ci/pull/227
* Update to run 'devcontainer exec' without JSON parsing output by @stuartleeks in https://github.com/devcontainers/ci/pull/226
* Use version 0 to allow for breaking CLI changes in the future. by @chrmarti in https://github.com/devcontainers/ci/pull/229
* gh: refactor community files by @SauravMaheshkar in https://github.com/devcontainers/ci/pull/222
* Fix a typo in `azdo-task/README.md` by @jiedxu in https://github.com/devcontainers/ci/pull/245
* Update golang for CG by @chrmarti in https://github.com/devcontainers/ci/pull/260
* Update Debian, go tools, Node, NPM package by @chrmarti in https://github.com/devcontainers/ci/pull/263
* Bump @babel/traverse from 7.18.2 to 7.23.2 in /.github/scripts by @dependabot[bot] in https://github.com/devcontainers/ci/pull/261
* Bump json5 from 2.2.1 to 2.2.3 in /.github/scripts by @dependabot[bot] in https://github.com/devcontainers/ci/pull/264
* Bump semver from 6.3.0 to 6.3.1 in /.github/scripts by @dependabot[bot] in https://github.com/devcontainers/ci/pull/266
* Fix scripts by @chrmarti in https://github.com/devcontainers/ci/pull/265
* Update azure-pipelines-task-lib to avoid security issue in dependency by @chrmarti in https://github.com/devcontainers/ci/pull/267
* Add configFile option by @chrmarti in https://github.com/devcontainers/ci/pull/269
* Ignore spaces by @chrmarti in https://github.com/devcontainers/ci/pull/280
* Add workflow permissions by @chrmarti in https://github.com/devcontainers/ci/pull/282
* Update QEMU and Buildx steps to resolve Node 16 deprecation warning by @korverdev in https://github.com/devcontainers/ci/pull/283
* Find Windows executable by @chrmarti in https://github.com/devcontainers/ci/pull/288
* add `inheritEnv` action parameter by @OmarTawfik in https://github.com/devcontainers/ci/pull/295
* Fix permissions by @chrmarti in https://github.com/devcontainers/ci/pull/297
* Fix permissions by @chrmarti in https://github.com/devcontainers/ci/pull/298
* Docs: github-action.md: fix wording by @lolmaus in https://github.com/devcontainers/ci/pull/296
* Add `cacheTo` argument to `ci` action by @sebst in https://github.com/devcontainers/ci/pull/300
* Fix CI by @chrmarti in https://github.com/devcontainers/ci/pull/308
* Fix CI by @chrmarti in https://github.com/devcontainers/ci/pull/327
* Bump actions/setup-node from 3 to 4 by @dependabot[bot] in https://github.com/devcontainers/ci/pull/309
* Bump ghcr.io/devcontainers/features/github-cli from 1.0.11 to 1.0.13 by @dependabot[bot] in https://github.com/devcontainers/ci/pull/310
* Bump LouisBrunner/checks-action from 1.1.1 to 2.0.0 by @dependabot[bot] in https://github.com/devcontainers/ci/pull/311
* Bump github/codeql-action from 2 to 3 by @dependabot[bot] in https://github.com/devcontainers/ci/pull/312
* Bump docker/login-action from 2 to 3 by @dependabot[bot] in https://github.com/devcontainers/ci/pull/313
* Bump actions/github-script from 6 to 7 by @dependabot[bot] in https://github.com/devcontainers/ci/pull/314
* Update dependencies by @chrmarti in https://github.com/devcontainers/ci/pull/328
* Fix AzDO task by @chrmarti in https://github.com/devcontainers/ci/pull/329
* fix: don't group the actual running of the commands by @ffMathy in https://github.com/devcontainers/ci/pull/272
* Add note on JIT by @chrmarti in https://github.com/devcontainers/ci/pull/330
* Fix formatting by @chrmarti in https://github.com/devcontainers/ci/pull/331
* Update dependencies by @chrmarti in https://github.com/devcontainers/ci/pull/332
* Consolidate npm package updates by @chrmarti in https://github.com/devcontainers/ci/pull/352
* Fix dependabot.yml by @chrmarti in https://github.com/devcontainers/ci/pull/353
* Cleanup 'common' dependency by @chrmarti in https://github.com/devcontainers/ci/pull/355
* Bump the all group across 4 directories with 4 updates by @dependabot[bot] in https://github.com/devcontainers/ci/pull/356
* Bump actions/checkout from 3 to 4 by @dependabot[bot] in https://github.com/devcontainers/ci/pull/333
* Bump the all group across 4 directories with 6 updates by @dependabot[bot] in https://github.com/devcontainers/ci/pull/359
* Bump the all group across 4 directories with 3 updates by @dependabot[bot] in https://github.com/devcontainers/ci/pull/360
* Bump the all group across 4 directories with 5 updates by @dependabot[bot] in https://github.com/devcontainers/ci/pull/362
* Bump ghcr.io/devcontainers/features/github-cli from 1.0.13 to 1.0.14 by @dependabot[bot] in https://github.com/devcontainers/ci/pull/364
* Bump the all group across 3 directories with 6 updates by @dependabot[bot] in https://github.com/devcontainers/ci/pull/369
* Bump the all group across 4 directories with 6 updates by @dependabot[bot] in https://github.com/devcontainers/ci/pull/378
* Bump the all group across 4 directories with 8 updates by @dependabot[bot] in https://github.com/devcontainers/ci/pull/379
* Bump the all group across 4 directories with 7 updates by @dependabot[bot] in https://github.com/devcontainers/ci/pull/389
* Bump the all group across 4 directories with 5 updates by @dependabot[bot] in https://github.com/devcontainers/ci/pull/396
* investigate CI failure by @chrmarti in https://github.com/devcontainers/ci/pull/411
* Bump the all group across 4 directories with 8 updates by @dependabot[bot] in https://github.com/devcontainers/ci/pull/409
* Bump the all group across 3 directories with 3 updates by @dependabot[bot] in https://github.com/devcontainers/ci/pull/414
* Bump actions/setup-node from 4 to 6 by @dependabot[bot] in https://github.com/devcontainers/ci/pull/413
* Update Node, NPM, Go tools and Debian  by @Kaniska244 in https://github.com/devcontainers/ci/pull/438
* Add "Publish the AzDO extension" input by @chrmarti in https://github.com/devcontainers/ci/pull/439
* Also skip AzDO testing by @chrmarti in https://github.com/devcontainers/ci/pull/440
* Fix conditions by @chrmarti in https://github.com/devcontainers/ci/pull/441

## New Contributors
* @trxcllnt made their first contribution in https://github.com/devcontainers/ci/pull/199
* @andar1an made their first contribution in https://github.com/devcontainers/ci/pull/219
* @SauravMaheshkar made their first contribution in https://github.com/devcontainers/ci/pull/222
* @jiedxu made their first contribution in https://github.com/devcontainers/ci/pull/245
* @korverdev made their first contribution in https://github.com/devcontainers/ci/pull/283
* @OmarTawfik made their first contribution in https://github.com/devcontainers/ci/pull/295
* @lolmaus made their first contribution in https://github.com/devcontainers/ci/pull/296
* @sebst made their first contribution in https://github.com/devcontainers/ci/pull/300
* @ffMathy made their first contribution in https://github.com/devcontainers/ci/pull/272
* @Kaniska244 made their first contribution in https://github.com/devcontainers/ci/pull/438

**Full Changelog**: https://github.com/devcontainers/ci/compare/v0.2.1900000266...v0.3.1900000449
