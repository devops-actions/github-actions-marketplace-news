---
title: The SILE Typesetter
date: 2023-08-23 10:58:51 +00:00
tags:
  - sile-typesetter
  - GitHub Actions
draft: false
repo: sile-typesetter/sile
marketplace: https://github.com/marketplace/actions/the-sile-typesetter
version: v0.14.11
dependentsNumber: 0
---


Version updated for **sile-typesetter/sile** to version **v0.14.11**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/the-sile-typesetter) to find the latest changes.

## Release notes

### Summary of Improvements

Today we only fix the things we broke yesterday. This is a very minor release with only a couple of touch-ups to actual code. The biggest motivation for the release is actually the documentation. Our documentation changes don't show up in the automatic change logs, but we fixed a number of problems with the layout of the manual. Over the last couple releases we introduced several mistakes in the documentation code causing a bit of mess. The manual still isn't perfect, but at least no bits are drawn over other bits any more! Additionally a whole new chapter on how to write modules to add input and output formats landed thanks to @Omikhleia.	


### Bug Fixes

* **core:** Leave legacy masterFilename alone but use first input filename internally ([29667a7](https://github.com/sile-typesetter/sile/commit/29667a752181dd40abe18672f6175fe10a9c5546))
* **core:** Make masterFilename actually a filename ([759131e](https://github.com/sile-typesetter/sile/commit/759131e6c87517b56a433dccde29658dbe6df023))
* **packages:** Avoid mix-and-matching indents in fixed-width specimin blocks ([de41cac](https://github.com/sile-typesetter/sile/commit/de41cac06a911e7c56f0ba4d1248a6da5999e6f3))
* **utilities:** Use real semver parser for deprecation warnings ([5f0fed5](https://github.com/sile-typesetter/sile/commit/5f0fed51b2a9597272da62f00c15f8836f8c7bd1))

