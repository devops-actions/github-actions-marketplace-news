---
title: Post LGTM Image
date: 2026-01-25 05:43:52 +00:00
tags:
  - ddradar
  - GitHub Actions
draft: false
repo: https://github.com/ddradar/lgtm-action
marketplace: https://github.com/marketplace/actions/post-lgtm-image
version: v4.0.0
dependentsNumber: "1,277"
---


Version updated for **https://github.com/ddradar/lgtm-action** to version **v4.0.0**.
- This action is used across all versions by **1,277** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/post-lgtm-image) to find the latest changes.

## Action Summary

The "Post LGTM Image" GitHub Action automatically posts an image in response to specific comments or review actions, such as "LGTM" or similar patterns, on issues or pull requests. It streamlines the process of acknowledging approvals or positive feedback with visual cues, saving time and adding a personalized touch to project discussions. Key capabilities include customizable image URLs and regex-based trigger patterns.

## Release notes

> [!IMPORTANT]
> `ddradar/lgtm-action@v4` now runs on Node.js 24 (runs.using: `node24`) and requires a minimum Actions Runner version of `2.327.1`.
> If you are using self-hosted runners, ensure they are updated before upgrading.

*Full Changelog*: 4f61a78e13222b6c7a5d54d6463c44052665fee6...3501e45e79bc8eb3ff4087cc694d22a56b0fdd0d

## Breaking Changes :boom:
- **feat!**: migrate to Node.js 24 runtime (#1108)
  - Set `runs.using` to `node24` in `action.yml`
  - Change build target from `ES2022` to `ES2024`
  - Use Node.js 24 on workspace and CI/CD
  - Update dependencies to support Node.js 24

## Development :rocket:
- **ci(dependabot)**: change dependabot config (#965)
- **ci**: add token permisson explicitly (#968)
- **ci**: fix release workflow (#969, #1029)
- **chore**: change lint config (#970)
- **test(integration)**: add & remove test runner (#972,#1039,#1068,#1129,#1131)
  - Added:
    - `macos-14`
    - `ubuntu-slim`
    - `macos-26`
    - `macos-15-intel`
    - `ubuntu-24.04-arm`
    - `ubuntu-22.04-arm`
    - `windows-2025`
    - `windows-11-arm`
  - Removed
    - `macos-11`
    - `ubuntu-20.04`
    - `windows-2019`
- **chore**: use corepack (#994)
- **chore**: migrate eslint-plugin-vitest to @vitest/eslint-plugin (#999,#1012,#1024,#1036,#1040,#1054,#1081,#1103,#1110)

## Documentation :memo:
- bump example action version (#975)

## Refactoring :sparkles:
- **ci**: use variables on commiter name & email (#971)
- **ci**: split Compare and Report Summary job (#973)
- **ci**: use github context (#974)
- **gh-actions**: use YAML anchors for action parameters to reduce duplication (#1105)
- **ci**: use OIDC token on codecov-action (#1132)

## Dependencies Update :robot:

|Type|Package|old|new|PR|
|-----|---------|----|----|---|
|npm(security)|@octokit/plugin-paginate-rest|9.1.2|9.2.2|#1049|
|npm(security)|@octokit/request|8.1.4|8.4.1|#1050|
|npm(security)|@octokit/request-error|5.0.1|5.1.1|#1048|
|npm(security)|js-yaml|4.1.0|4.1.1|#1114|
|npm(security)|rollup|4.21.3|4.22.4|#1003|
|npm(security)|undici|5.28.4|5.29.0|#1038,#1075|
|npm(security)|vite|5.3.5|7.1.5|#1002,#1037,#1065,#1066,#1089|
|npm|@actions/core|1.10.1|2.0.1|#1017,#1128|
|npm|@actions/github|6.0.0|7.0.0|#1077,#1133|
|npm(dev)|@eslint/js|8.57.0|9.39.2|#988,#1112|
|npm(dev)|@octokit/webhooks-types|7.5.1|7.6.1|#1016|
|npm(dev)|@tsconfig/strictest|2.0.5|2.0.8|#1112|
|npm(dev)|@vercel/ncc|0.38.1|0.38.4|#1008,#1028,#1100|
|npm(dev)|@vitest/coverage-v8|1.5.3|4.0.18|#966,#987,#1011,#1012,#1024,#1036,#1040,#1047,#1054,#1081,#1103,#1110|
|npm(dev)|eslint|8.57.0|9.39.2|#988,#1112|
|npm(dev)|eslint-config-prettier|9.1.0|10.1.8|#1005,#1032,#1062,#1078,#1086|
|npm(dev)|eslint-plugin-n|17.4.0|17.23.2|#978,#981,#988,#998,#1005,#1013,#1032,#1062,#1078,#1086,#1120,#1130|
|npm(dev)|eslint-plugin-simple-import-sort|12.1.0|12.1.1|#988|
|npm(dev)|prettier|3.2.5|3.8.1|#978,#981,#1032,#1055,#1062,#1086,#1120,#1130|
|npm(dev)|typescript|5.4.5|5.9.3|#986,#989,#1007,#1015,#1027,#1043,#1070,#1099|
|npm(dev)|typescript-eslint|7.8.0|8.53.1|#978,#981,#988,#998,#1000,#1005,#1013,#1032,#1041,#1055,#1062,#1078,#1086,#1120,#1130|
|npm(dev)|vitest|1.5.3|4.0.18|#966,#987,#1011,#1012,#1024,#1036,#1040,#1047,#1054,#1081,#1103,#1110|
|gh-action|actions/checkout|4.1.4|6.0.1|#976,#984,#1009,#1021,#1092,#1122|
|gh-action|actions/download-artifact|4.1.7|7.0.0|#993,#1051,#1061,#1073,#1121|
|gh-action|actions/github-script|7|8|#1094|
|gh-action|actions/setup-node|4.0.2|6.1.0|#992,#1010,#1020,#1045,#1059,#1072,#1091,#1124|
|gh-action|actions/upload-artifact|4.3.3|6.0.0|#991,#995,#1018,#1033,#1044,#1053,#1060,#1123|
|gh-action|codecov/codecov-action|4.3.1|5.5.2|#977,#985,#1019,#1023,#1034,#1046,#1052,#1074,#1079,#1093,#1125|

