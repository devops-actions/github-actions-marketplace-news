---
title: Setup Yarn Berry
date: 2024-02-28 19:23:25 +00:00
tags:
  - threeal
  - GitHub Actions
draft: false
repo: threeal/setup-yarn-action
marketplace: https://github.com/marketplace/actions/setup-yarn-berry
version: v2.0.0
dependentsNumber: "1"
---


Version updated for **threeal/setup-yarn-action** to version **v2.0.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-yarn-berry) to find the latest changes.

## Release notes

## What's Changed

### Action Changes

* Add Yarn Version to the Cache Key by @threeal in https://github.com/threeal/setup-yarn-action/pull/127
* Get Yarn Cache Path From Yarn Config by @threeal in https://github.com/threeal/setup-yarn-action/pull/131
* Refactor Steps for Getting Cache Information by @threeal in https://github.com/threeal/setup-yarn-action/pull/139
* Getting Yarn Version Silently by @threeal in https://github.com/threeal/setup-yarn-action/pull/141
* Add Support to Global Cache by @threeal in https://github.com/threeal/setup-yarn-action/pull/143
* Separate Step for Getting Cache Key and Paths by @threeal in https://github.com/threeal/setup-yarn-action/pull/145
* Parse and Format Yarn Install Output by @threeal in https://github.com/threeal/setup-yarn-action/pull/151
* Modify Action to Fail if Yarn Lock File Does Not Exist by @threeal in https://github.com/threeal/setup-yarn-action/pull/129
* Remove Hack Preventing Grouped Output During Yarn Install by @threeal in https://github.com/threeal/setup-yarn-action/pull/155
* Enable Yarn Silently by @threeal in https://github.com/threeal/setup-yarn-action/pull/165
* Improve Error Handling in Main Function by @threeal in https://github.com/threeal/setup-yarn-action/pull/178
* Add Support to Disable Cache by @threeal in https://github.com/threeal/setup-yarn-action/pull/181
* Improve Error Handling in Get Cache Info Functions by @threeal in https://github.com/threeal/setup-yarn-action/pull/183
* Add Assertion to Check if Using Correct Yarn Version by @threeal in https://github.com/threeal/setup-yarn-action/pull/189
* Enable Yarn in Dedicated Directory by @threeal in https://github.com/threeal/setup-yarn-action/pull/198
* Run Yarn Command Without Corepack by @threeal in https://github.com/threeal/setup-yarn-action/pull/202
* Add Function for Setting Yarn Version by @threeal in https://github.com/threeal/setup-yarn-action/pull/215
* Add `version` Input by @threeal in https://github.com/threeal/setup-yarn-action/pull/212

### Documentation Changes

* Bump Copyright Year to 2024 by @threeal in https://github.com/threeal/setup-yarn-action/pull/61
* Rename Action to Setup Yarn Berry Action by @threeal in https://github.com/threeal/setup-yarn-action/pull/179
* Audit Readme Documentation by @threeal in https://github.com/threeal/setup-yarn-action/pull/219

### Development Changes

* Use Default ncc Build Output by @threeal in https://github.com/threeal/setup-yarn-action/pull/82
* Remove Check Yarn Version Step in Test Workflow by @threeal in https://github.com/threeal/setup-yarn-action/pull/84
* Remove Package Name in `package.json` by @threeal in https://github.com/threeal/setup-yarn-action/pull/92
* Setup Latest Node.js in Workflows by @threeal in https://github.com/threeal/setup-yarn-action/pull/48 and https://github.com/threeal/setup-yarn-action/pull/101
* Fix Git Ignore Pattern for JavaScript Files by @threeal in https://github.com/threeal/setup-yarn-action/pull/104
* Use Prettier with Cache Enabled by @threeal in https://github.com/threeal/setup-yarn-action/pull/106
* Simplify ESLint Configuration by @threeal in https://github.com/threeal/setup-yarn-action/pull/110
* Refactor Function to Be Modular by @threeal in https://github.com/threeal/setup-yarn-action/pull/96
* Fix Yarn Lock File by @threeal in https://github.com/threeal/setup-yarn-action/pull/116
* Fix ESLint Not Linting Source Files by @threeal in https://github.com/threeal/setup-yarn-action/pull/119
* Remove eslint-plugin-json-files by @threeal in https://github.com/threeal/setup-yarn-action/pull/120
* Reintroduce Unit Testing Using Jest by @threeal in https://github.com/threeal/setup-yarn-action/pull/122
* Add Test Coverage Check by @threeal in https://github.com/threeal/setup-yarn-action/pull/124
* Set `NODE_OPTIONS` for Running `test` Script by @threeal in https://github.com/threeal/setup-yarn-action/pull/126
* Add Back TypeScript Support by @threeal in https://github.com/threeal/setup-yarn-action/pull/113 and https://github.com/threeal/setup-yarn-action/pull/133
* Write Tests in TypeScript by @threeal in https://github.com/threeal/setup-yarn-action/pull/135
* Build Distribution Files Directly From TypeScript Files by @threeal in https://github.com/threeal/setup-yarn-action/pull/137
* Add Test for `getCacheKey` and `getCachePaths` Functions by @threeal in https://github.com/threeal/setup-yarn-action/pull/147
* Refactor Yarn Functions by @threeal in https://github.com/threeal/setup-yarn-action/pull/149
* Organize Yarn Source Files by @threeal in https://github.com/threeal/setup-yarn-action/pull/153
* Organize Main Function to Separate File by @threeal in https://github.com/threeal/setup-yarn-action/pull/157
* Refactor Steps for Getting Yarn Paths for Cache Paths by @threeal in https://github.com/threeal/setup-yarn-action/pull/159
* Add Test for Main Function by @threeal in https://github.com/threeal/setup-yarn-action/pull/161
* Refactor Flow in `getCacheKey` Function by @threeal in https://github.com/threeal/setup-yarn-action/pull/168
* Test Log Output in Get Cache Information Functions by @threeal in https://github.com/threeal/setup-yarn-action/pull/170
* Refactor Test Mock by @threeal in https://github.com/threeal/setup-yarn-action/pull/172
* Utilize `jest.mocked` Function in Testing by @threeal in https://github.com/threeal/setup-yarn-action/pull/174
* Test Log Output in Main Function by @threeal in https://github.com/threeal/setup-yarn-action/pull/176
* Organize Get Cache Info Testing by @threeal in https://github.com/threeal/setup-yarn-action/pull/185
* Configure Jest to Run Tests Verbosely by @threeal in https://github.com/threeal/setup-yarn-action/pull/187
* Add Option for Independent Yarn Version Retrieval by @threeal in https://github.com/threeal/setup-yarn-action/pull/194
* Organize Corepack Functions by @threeal in https://github.com/threeal/setup-yarn-action/pull/199
* Move `getYarnConfig` to `config.ts` File by @threeal in https://github.com/threeal/setup-yarn-action/pull/204
* Integrate Jest Extended by @threeal in https://github.com/threeal/setup-yarn-action/pull/208
* Revert from Disabling Yarn Global Cache by @threeal in https://github.com/threeal/setup-yarn-action/pull/210
* Add Jobs for Testing the `version` Input by @threeal in https://github.com/threeal/setup-yarn-action/pull/217
* Utilize `.env.yarn` to Set `NODE_OPTIONS` by @threeal in https://github.com/threeal/setup-yarn-action/pull/221

## Dependency Updates

* Bump prettier from 3.1.0 to 3.2.5 by @dependabot in https://github.com/threeal/setup-yarn-action/pull/46, https://github.com/threeal/setup-yarn-action/pull/70, https://github.com/threeal/setup-yarn-action/pull/75, and https://github.com/threeal/setup-yarn-action/pull/93
* Bump @typescript-eslint/eslint-plugin from 6.13.2 to 7.1.0 by @dependabot in https://github.com/threeal/setup-yarn-action/pull/50, https://github.com/threeal/setup-yarn-action/pull/54, https://github.com/threeal/setup-yarn-action/pull/56, https://github.com/threeal/setup-yarn-action/pull/59, https://github.com/threeal/setup-yarn-action/pull/66, https://github.com/threeal/setup-yarn-action/pull/73, https://github.com/threeal/setup-yarn-action/pull/78, https://github.com/threeal/setup-yarn-action/pull/86, https://github.com/threeal/setup-yarn-action/pull/97, https://github.com/threeal/setup-yarn-action/pull/108, https://github.com/threeal/setup-yarn-action/pull/162, and https://github.com/threeal/setup-yarn-action/pull/206
* Bump @typescript-eslint/parser from 6.13.2 to 7.1.0 by @dependabot in https://github.com/threeal/setup-yarn-action/pull/49, https://github.com/threeal/setup-yarn-action/pull/53, https://github.com/threeal/setup-yarn-action/pull/57, https://github.com/threeal/setup-yarn-action/pull/60, https://github.com/threeal/setup-yarn-action/pull/65, https://github.com/threeal/setup-yarn-action/pull/72, https://github.com/threeal/setup-yarn-action/pull/77, https://github.com/threeal/setup-yarn-action/pull/85, https://github.com/threeal/setup-yarn-action/pull/98, https://github.com/threeal/setup-yarn-action/pull/107, https://github.com/threeal/setup-yarn-action/pull/163, and https://github.com/threeal/setup-yarn-action/pull/205
* Bump @types/node from 20.10.4 to 20.11.21 by @dependabot in https://github.com/threeal/setup-yarn-action/pull/52, https://github.com/threeal/setup-yarn-action/pull/58, https://github.com/threeal/setup-yarn-action/pull/63, https://github.com/threeal/setup-yarn-action/pull/69, https://github.com/threeal/setup-yarn-action/pull/76, https://github.com/threeal/setup-yarn-action/pull/79, https://github.com/threeal/setup-yarn-action/pull/80, https://github.com/threeal/setup-yarn-action/pull/90, https://github.com/threeal/setup-yarn-action/pull/102, https://github.com/threeal/setup-yarn-action/pull/111, https://github.com/threeal/setup-yarn-action/pull/190, and https://github.com/threeal/setup-yarn-action/pull/213
* Bump eslint from 8.55.0 to 8.57.0 by @dependabot in https://github.com/threeal/setup-yarn-action/pull/51 and https://github.com/threeal/setup-yarn-action/pull/200
* Bump actions/setup-node from 4.0.0 to 4.0.2 by @dependabot in https://github.com/threeal/setup-yarn-action/pull/55 and https://github.com/threeal/setup-yarn-action/pull/99
* Bump @actions/cache from 3.2.2 to 3.2.4 by @dependabot in https://github.com/threeal/setup-yarn-action/pull/68 and https://github.com/threeal/setup-yarn-action/pull/89
* Bump Yarn to Version 4.1.0 by @threeal in https://github.com/threeal/setup-yarn-action/pull/114

**Full Changelog**: https://github.com/threeal/setup-yarn-action/compare/v1.0.0...v2.0.0

