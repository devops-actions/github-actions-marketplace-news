---
title: The SILE Typesetter
date: 2023-10-30 19:16:48 +00:00
tags:
  - sile-typesetter
  - GitHub Actions
draft: false
repo: sile-typesetter/sile
marketplace: https://github.com/marketplace/actions/the-sile-typesetter
version: v0.14.13
dependentsNumber: "0"
---


Version updated for **sile-typesetter/sile** to version **v0.14.13**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/the-sile-typesetter) to find the latest changes.

## Release notes

### Summary of Improvements

This minor release brings a couple improvements from a new contributor, @jodros. We have one new feature, a boolean option flag on our base class that enables landscape mode. Any paper orientation has been supported already, but the preset paper sizes only had the standard portrait orientation and landscape orientations required entering custom dimensions. This flag makes it a bit easier to swap the X and Y dimensions of the standard (or custom) value parsed from the *papersize* option. Additionally he fixed a bug in the *frametricks* package such that using the `\makecolumns` function doesn't break relative frame constraints used by, for example, footnote or folio frames. This fix only works for TTB-LTR automatic column setups for now.

Finally, some build system fixes and features were backported from v0.15.0 development work. Most significantly the handling of the `SILE_PATH` environment variable now allows multiple paths, which in turn allows a single project to utilize multiple external *collections* of 3rd party packages rather than having to collate them all into one location.


### Features

* **classes:** Add landscape option to base class ([#1892](https://github.com/sile-typesetter/sile/issues/1892)) ([0fb9ade](https://github.com/sile-typesetter/sile/commit/0fb9adefca3adf9ff8a56755e69474960792d85a))
* **cli:** Allow multiple runtime SILE_PATH segments (backport from develop branch) ([e7c8fe2](https://github.com/sile-typesetter/sile/commit/e7c8fe219686aa327032154484bf78be86c0baaa))


### Bug Fixes

* **frames:** Update frame constraints with new frame IDs after \makecolumns ([b2d6b4f](https://github.com/sile-typesetter/sile/commit/b2d6b4f7b095d74f3d39123904495a8e024c0f05))

