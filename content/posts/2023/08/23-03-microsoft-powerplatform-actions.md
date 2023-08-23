---
title: powerplatform-actions
date: 2023-08-23 03:02:37 +00:00
tags:
  - microsoft
  - GitHub Actions
draft: false
repo: microsoft/powerplatform-actions
marketplace: https://github.com/marketplace/actions/powerplatform-actions
version: v1.0.0
dependentsNumber: 11
---


Version updated for **microsoft/powerplatform-actions** to version **v1.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **11** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/powerplatform-actions) to find the latest changes.

## Release notes

## What's Changed
* New action `set-online-solution-version`, for updating the versions of solutions already present in Dataverse #412
* Updated to new PAC v1.26.5
* Major version increase to v1
  * Drastic reduction in size of release tarball/zipball by removing PAC from Git-LFS to help mitigate issue https://github.com/microsoft/powerplatform-actions/issues/416
  * New action `actions-install` required prior to running any other v1 action

### Breaking Change
Converting an existing v0 pipeline to v1 requires first running the new `actions-install` action.
For example, converting this old action
```yaml
jobs:
  my-job-name:
    runs-on: windows-latest
    steps:
      - name: WhoAmI
        uses: microsoft/powerplatform-actions/who-am-i@v0
        with:
          environment-url: ...
          user-name: ...
          password-secret: ...
```
to v1 would now look like
```yaml
jobs:
  my-job-name:
    runs-on: windows-latest
    steps:
      - name: Power Platform Action Install
        uses: microsoft/powerplatform-actions/actions-install@v1
      - name: WhoAmI
        uses: microsoft/powerplatform-actions/who-am-i@v1
        with:
          environment-url: ...
          user-name: ...
          password-secret: ...
```


### PRs merged since last release
* Bump winston from 3.9.0 to 3.10.0 by @dependabot in https://github.com/microsoft/powerplatform-actions/pull/409
* Gavenkat updateonlinesolutionversion by @gavenkat78 in https://github.com/microsoft/powerplatform-actions/pull/412
* Bump gulp-eslint-new from 1.8.2 to 1.8.3 by @dependabot in https://github.com/microsoft/powerplatform-actions/pull/413
* Bump @types/node from 20.4.1 to 20.4.8 by @dependabot in https://github.com/microsoft/powerplatform-actions/pull/419
* Proposal - remove PAC files from repo (and thus tarball/zipball of actions) and install via nuget by @tehcrashxor in https://github.com/microsoft/powerplatform-actions/pull/424
* July Refresh by @tehcrashxor in https://github.com/microsoft/powerplatform-actions/pull/426
* Rolling Instance Build Fix by @tehcrashxor in https://github.com/microsoft/powerplatform-actions/pull/427
* Bump postcss from 8.4.25 to 8.4.28 by @dependabot in https://github.com/microsoft/powerplatform-actions/pull/425
* Better error messages and warnings by @tehcrashxor in https://github.com/microsoft/powerplatform-actions/pull/428
* Update readme for v1 changes by @tehcrashxor in https://github.com/microsoft/powerplatform-actions/pull/431

## New Contributors
* @gavenkat78 made their first contribution in https://github.com/microsoft/powerplatform-actions/pull/412

**Full Changelog**: https://github.com/microsoft/powerplatform-actions/compare/v0.10.10...v1.0.0
