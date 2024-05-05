---
title: Choose Random Action
date: 2024-05-05 11:26:25 +00:00
tags:
  - ddradar
  - GitHub Actions
draft: false
repo: ddradar/choose-random-action
marketplace: https://github.com/marketplace/actions/choose-random-action
version: v3.0.0
dependentsNumber: "940"
---


Version updated for **ddradar/choose-random-action** to version **v3.0.0**.
- This action is used across all versions by **940** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/choose-random-action) to find the latest changes.

## Release notes

_Full Changelog_: 74eb2e2c405ad904e3dcea6863891b2e49479103...e04d934d9e3bcedf429fccf1734987fb724799e5

## Breaking Changes :boom:
- This action now runs on Node.js 20 (#895)
- Migrate to ESModule (#909)

## Development :rocket:

- **dependabot**: remove reviewer to supress warning (#772)
- **devcontainer**: use base(`javascript-node`) container to reduce Codespace storage size (#759,#895)
- **gh-actions**: use variables (#784)
- **gh-actions**: add integration test (#784,#785)
- **test**: move test folder from `/__tests__` to `/test` (#786)
- **test**: migrate to @vitest/coverage-v8 (#813,#825,#852,#866,#870,#875,#894,#907)
- **dependabot**: enable groups dependencies (#843, #911)
- **gh-actions**: add permissions to create comment (#849)
- **gh-actions**: change diff Markdown (#850)
- migrate to ESLint flat config (#896,#906)
- migrate package lock file to v3 (#897)
- **gh-actions**: change release workflow (#908, #910)
- **dependabot**: add devcontainer config (#911)

## Dependencies Update :robot:
|Type|Package|old|new|PR|
|----|-------|---|---|--|
|npm(security)|yaml|2.2.1|2.2.2|#787|
|npm(security)|vite|5.0.10|5.0.12|#874|
|npm|@actions/core|1.10.0|1.10.1|#854|
|gh-action|actions/checkout|v3.0.2|v4.1.4|#701,#716,#740,#773,#798,#808,#839,#844,#856,#890,#903|
|gh-action|actions/download-artifact|3.0.2|4.1.7|#878,#882,#889,#901|
|gh-action|actions/github-script|v6.3.1|v7|#698,#741,#861|
|gh-action|actions/setup-node|v3.5.0|v4.0.2|#697,#739,#824,#840,#859,#867,#883|
|gh-action|actions/upload-artifact|3.1.2|4.3.3|#845,#884,#902|
|gh-action|codecov/codecov-action|v3.1.1|v4.3.1|#799,#802,#880,#885,#888,#904|
|npm(dev)|@tsconfig/strictest|2.0.0|2.0.5|#797,#838,#886,#892|
|npm(dev)|@vercel/ncc|0.34.0|0.38.1|#723,#747,#848,#858|
|npm(dev)|eslint|8.25.0|8.57.0|#704,#711,#717,#750,#764,#780,#794,#805,#809,#823,#835,#855,#860,#866,#873,#894|
|npm(dev)|eslint-config-prettier|8.5.0|9.1.0|#728,#771,#781,#819,#826,#831,#866|
|npm(dev)|eslint-plugin-simple-import-sort|8.0.0|12.1.0|#743,#894,#906|
|npm(dev)|eslint-plugin-vitest|0.0.11|0.5.4|#734,#744,#761,#768,#782,#796,#801,#817,#847,#855,#860,#866,#873,#894,#906|
|npm(dev)|husky|8.0.1|9.0.11|#706,#730,#894|
|npm(dev)|lint-staged|13.0.3|15.2.2|#705,#721,#757,#760,#776,#789,#812,#830,#860,#866,#894|
|npm(dev)|npm-run-all2|6.0.2|6.1.2|#713,#791,#818,#855,#894|
|npm(dev)|prettier|2.7.1|3.2.5|#714,#733,#745,#754,#779,#795,#818,#828,#836,#866,#894|
|npm(dev)|typescript|4.8.4|5.4.5|#709,#725,#746,#778,#788,#811,#863,#872,#893,#900|
|npm(dev)|vitest|0.24.3|1.6.0|#695,#712,#727,#738,#742,#753,#765,#783,#792,#803,#813,#818,#827,#829,#852,#866,#870,#875,#894,#907|

