---
title: Labeler
date: 2023-12-04 19:17:51 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: actions/labeler
marketplace: https://github.com/marketplace/actions/labeler
version: v5.0.0
dependentsNumber: "52,529"
---


Version updated for **actions/labeler** to version **v5.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **52,529** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/labeler) to find the latest changes.

## Release notes

## What's Changed
This release contains the following breaking changes:
1) The ability to apply labels based on the names of base and/or head branches was added ([#186](https://github.com/actions/labeler/issues/186) and [#54](https://github.com/actions/labeler/issues/54)). The match object for changed files was expanded with new combinations in order to make it more intuitive and flexible ([#423](https://github.com/actions/labeler/issues/423) and [#101](https://github.com/actions/labeler/issues/101)). As a result, the configuration file structure was significantly redesigned and is not compatible with the structure of the previous version. Please read the [action documentation](https://github.com/actions/labeler/tree/main#pull-request-labeler) to find out how to adapt your configuration files for use with the new action version.

2) The bug related to the `sync-labels` input was fixed ([#112](https://github.com/actions/labeler/issues/112)). Now the input value is read correctly.

3) By default, `dot` input is set to `true`. Now, paths starting with a dot (e.g. `.github`) are matched by default.

4) Version 5 of this action updated the [runtime to Node.js 20](https://docs.github.com/en/actions/creating-actions/metadata-syntax-for-github-actions#runs-for-javascript-actions). All scripts are now run with Node.js 20 instead of Node.js 16 and are affected by any breaking changes between Node.js 16 and 20.

For more information, please read the [action documentation](https://github.com/actions/labeler/tree/main#pull-request-labeler).
## New Contributors
* @joshdales made their first contribution in https://github.com/actions/labeler/pull/203
* @dusan-trickovic made their first contribution in https://github.com/actions/labeler/pull/626
* @sungh0lim made their first contribution in https://github.com/actions/labeler/pull/630
* @TrianguloY made their first contribution in https://github.com/actions/labeler/pull/629

**Full Changelog**: https://github.com/actions/labeler/compare/v4...v5.0.0
