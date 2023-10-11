---
title: The SILE Typesetter
date: 2023-10-11 19:04:15 +00:00
tags:
  - sile-typesetter
  - GitHub Actions
draft: false
repo: sile-typesetter/sile
marketplace: https://github.com/marketplace/actions/the-sile-typesetter
version: v0.14.12
dependentsNumber: "0"
---


Version updated for **sile-typesetter/sile** to version **v0.14.12**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/the-sile-typesetter) to find the latest changes.

## Release notes

### Summary of Improvements

This is another minor maintenance release. We throw a few less warning messages having dropped a few that were not actually informative. A few memory management bugs have been fixed, most notably affecting Lua 5.1. For the most part we hope you are on LuaJIT anyway (or your system's default Lua, hopefully newer than 5.1) but we do try to keep everything working smoothly on any platform. A few other minor improvements are noted below.

In other news, the v0.15.0 release is coming soon too. It is already stable enough to be used for real work and should play nice with most systems. Issue #1864 has some notes on how to run the development branch for it before it is released.


### Features

* **i18n:** Add Portuguese localizations for bibtex package ([#1859](https://github.com/sile-typesetter/sile/issues/1859)) ([f716c35](https://github.com/sile-typesetter/sile/commit/f716c35109d36c7cb2118ab9c7c65227d9941e01))
* **utilities:** Add utility function for console messages without trace info ([18526ce](https://github.com/sile-typesetter/sile/commit/18526ce75eeb8deb12e9b232e727993409ed8e06))


### Bug Fixes

* **build:** Make sure vendored luarocks isn't a phony target that runs repeatedly ([713434d](https://github.com/sile-typesetter/sile/commit/713434dadbc271299c8548dd2f2d4af57c1eec62))
* **core:** Allocate exactly what we use, not a guess with an extra just in case ([640ded0](https://github.com/sile-typesetter/sile/commit/640ded0a90e427124f555a2a48d263cde5300d7d))
* **core:** Correct usage of HarfBuzz when passing a filtered list of shapers ([f488643](https://github.com/sile-typesetter/sile/commit/f4886437d0ebf229db1c2779a8a324bf441efc1a))
* **core:** Fixup class loader so cache is all Lua module specs ([#1863](https://github.com/sile-typesetter/sile/issues/1863)) ([7efff5b](https://github.com/sile-typesetter/sile/commit/7efff5b7e94f0c4897910c064ef842e6be2e4ab1))
* **packages:** Don't warn on TOC content change if not actually used ([87c443d](https://github.com/sile-typesetter/sile/commit/87c443d1571f571b595c3e32febdcb03129f5b9a))

