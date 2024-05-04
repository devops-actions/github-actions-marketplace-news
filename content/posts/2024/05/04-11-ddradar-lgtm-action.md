---
title: Post LGTM Image
date: 2024-05-04 11:26:30 +00:00
tags:
  - ddradar
  - GitHub Actions
draft: false
repo: ddradar/lgtm-action
marketplace: https://github.com/marketplace/actions/post-lgtm-image
version: v3.0.0
dependentsNumber: "936"
---


Version updated for **ddradar/lgtm-action** to version **v3.0.0**.
- This action is used across all versions by **936** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/post-lgtm-image) to find the latest changes.

## Release notes

*Full Changelog*: c238e4627afe4f8a80001fcb154a32584f3b8da9...4f61a78e13222b6c7a5d54d6463c44052665fee6

## Breaking Changes :boom:
- **feat!**: use Node.js 20 (#912, #948)
- **feat!**: migrate to ESModule (#913)

## Fixes :bug:
- **ci**: add `issues:write` and `pull-requests:write` permission on job (#891,#892)

## Refactoring :sparkles:
- build: Migrate to TypeScript v5 (#829, #836, #874, #921, #946, #953)
- build: use ES2021 (#829)

## Development :rocket:
- **test**: move unit test files to `/test` folder (#828)
- use `eslint-plugin-vitest` (6fc7340, 5839f30, #846, #858, #864, #896, #906, #924, #931, #949, #960)
- migrate from yarn v1 to npm v8 (#825, #837)
- **ci**: re-install dependencies on compare workflow (#824)
- **ci**: split job on Node.js CI workflow (#826, #827)
  - add integration test
- **devcontainer**: use base devcontainer(`javascript-node`) to reduce Codespace storage (#801, #961)
- migrate to prettier v3 (#860, #882, #924, #931, #949) 
- **dependabot**: enable grouping dependencies update (#893)
- migrate to eslint flat config (#960)
- **ci**: change release workflow (#962, #963, #964) closes #959
  - avoid use outdated [technote-space/release-github-actions](https://github.com/technote-space/release-github-actions) action

## Dependencies Update :robot:

|Type|Package|old|new|PR|
|-----|---------|----|----|---|
|gh-action|actions/checkout|v3.0.2|v4.1.4|#738,#765,#790,#813,#838,#849,#883,#895,#903,#911,#943,#955|
|gh-action|actions/download-artifact|v3.0.2|v4.1.7|#927,#934,#942,#958|
|gh-action|actions/github-script|v6|v7|#914|
|gh-action|actions/setup-node|v3.5.0|v4.0.2|#739,#789,#870,#884,#907,#919,#937|
|gh-action|actions/upload-artifact|v3.1.2|v4.3.3|#894,#927,#936,#957|
|gh-action|actions/github-script|v6|v7|#914|
|gh-action|codecov/codecov-action|v3.1.1|v4.3.1|#839,#840,#926,#932,#935,#944,#956|
|npm(security)|yaml|2.2.1|2.2.2|#835|
|npm(security)|vite|4.4.9|5.0.12|#923,#925|
|npm(security)|undici|5.27.2|5.28.4|#933,#950|
|npm|@actions/core|1.10.0|1.10.1|#901|
|npm(dev)|@octokit/webhooks-types|6.5.0|7.5.1|#747,#768,#798,#830,#843,#855,#880,#900,#941,#947,#954|
|npm(dev)|@tsconfig/strictest|2.0.1|2.0.5|#875,#940,#945|
|npm(dev)|@vitest/coverage-v8|0.32.2|1.5.3|#871,#889,#898,#904,#924,#929,#938,#949,#951|
|npm(dev)|@vercel/ncc|0.34.0|0.38.0|#773,#793,#888|
|npm(dev)|eslint|8.25.0|8.56.0|#744,#754,#759,#772,#800,#802,#806,#816,#831,#836,#841,#853,#867,#876,#902,#906,#924|
|npm(dev)|eslint-config-prettier|8.5.0|9.1.0|#784,#810,#818,#863,#887,#924|
|npm(dev)|eslint-plugin-simple-import-sort|8.0.0|12.0.0|#792,#949,#960|
|npm(dev)|husky|8.0.1|9.0.11|#753,#788,#931,#949|
|npm(dev)|lint-staged|13.0.3|15.2.1|#758,#770,#802,#820,#833,#836,#851,#877,#924,#931|
|npm(dev)|npm-run-all2|6.0.2|6.1.2|#757,#832,#869,#906,#931|
|npm(dev)|typescript|4.8.4|5.1.6|#764,#783,#791,#829,#856|
|npm(dev)|vitest|0.24.3|1.5.3|#743,#750,#778,#787,#797,#802,#803,#821,#834,#848,#852,#872,#878,#898,#904,#924,#929,#938,#949,#951|

