---
title: Setup Miniconda
date: 2023-11-27 18:59:42 +00:00
tags:
  - conda-incubator
  - GitHub Actions
draft: false
repo: conda-incubator/setup-miniconda
marketplace: https://github.com/marketplace/actions/setup-miniconda
version: v3.0.0
dependentsNumber: "?"
---


Version updated for **conda-incubator/setup-miniconda** to version **v3.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-miniconda) to find the latest changes.

## Release notes

### Features

- [#308] Update to node20
- [#291] Add conda-solver option (defaults to libmamba)

### Fixes

- [#299] Fix condaBasePath when useBundled is false, and there's no pre-existing conda

### Documentation

- [#309] Switch to main branch based development
- [#313] Specify team conda-incubator/setup-miniconda as codeowners
- [#318] README: update actions in examples, add security section, similar actions

### Tasks and Maintenance

- [#307] Run dependabot against main branch and also update node packages
- [#311] Bump actions/checkout from 2 to 4
- [#310] Bump actions/cache from 1 to 3
- [#314] Strip/update dependencies
- [#315] Split lint into check and build, switch from `npm install` to `npm ci`
- [#317] Bump normalize-url from 4.5.1 to 8.0.0
- [#316] Faster workflow response / saving resources via timeout/concurrency policy

[v3.0.0]: https://github.com/conda-incubator/setup-miniconda/releases/tag/v2.3.0
[#308]: https://github.com/conda-incubator/setup-miniconda/pull/308
[#291]: https://github.com/conda-incubator/setup-miniconda/pull/291
[#299]: https://github.com/conda-incubator/setup-miniconda/pull/299
[#309]: https://github.com/conda-incubator/setup-miniconda/pull/309
[#313]: https://github.com/conda-incubator/setup-miniconda/pull/313
[#318]: https://github.com/conda-incubator/setup-miniconda/pull/318
[#307]: https://github.com/conda-incubator/setup-miniconda/pull/307
[#311]: https://github.com/conda-incubator/setup-miniconda/pull/311
[#310]: https://github.com/conda-incubator/setup-miniconda/pull/310
[#314]: https://github.com/conda-incubator/setup-miniconda/pull/314
[#315]: https://github.com/conda-incubator/setup-miniconda/pull/315
[#317]: https://github.com/conda-incubator/setup-miniconda/pull/317
[#316]: https://github.com/conda-incubator/setup-miniconda/pull/316

## New Contributors
* @isuruf made their first contribution in https://github.com/conda-incubator/setup-miniconda/pull/299

**Full Changelog**: https://github.com/conda-incubator/setup-miniconda/compare/v2...v3.0.0
