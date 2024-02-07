---
title: The SILE Typesetter
date: 2024-02-07 23:38:41 +00:00
tags:
  - sile-typesetter
  - GitHub Actions
draft: false
repo: sile-typesetter/sile
marketplace: https://github.com/marketplace/actions/the-sile-typesetter
version: v0.14.17
dependentsNumber: "0"
---


Version updated for **sile-typesetter/sile** to version **v0.14.17**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/the-sile-typesetter) to find the latest changes.

## Release notes

### Summary of Improvements

The "big v0.15" is still brewing, but we keep coming up with little improvements that easily fit in the v0.14 series. It turns out the special hyphenation handling we added to Polish (for explicitly hyphenated words) is used by quite a few languages. At this time we've applied it by default to Croatian, Czech, Portuguese, Slovak. and Spanish. Thanks to @Omikhleia for much of the research on this as well as @jodros, @DavidLRowe, @jakubkaczor, and @tomas-vl for domain expertise.

Additionally João contributed an option for columns command to more easily set up column frames with balancing turned on or off.


### Features

* **languages:** Enable explicit hyphen repetition handling in Croatian ([c29545d](https://github.com/sile-typesetter/sile/commit/c29545dd6f60bc01dc71de82f88274feff3b0fdf))
* **languages:** Enable explicit hyphen repetition handling in Czech ([b05d621](https://github.com/sile-typesetter/sile/commit/b05d6211b2c3daf9d8a69d7c4db75f430a86eea6))
* **languages:** Enable explicit hyphen repetition handling in Portuguese ([2a58d96](https://github.com/sile-typesetter/sile/commit/2a58d9684848ad7475e879191058d0c59de8e3c5))
* **languages:** Enable explicit hyphen repetition handling in Slovak ([82640b0](https://github.com/sile-typesetter/sile/commit/82640b03cdc82356a1ea9bbffbb4f5fd2471e3a2))
* **languages:** Enable explicit hyphen repetition handling in Spanish ([8db7f23](https://github.com/sile-typesetter/sile/commit/8db7f238fb63c86ee0d49bd34afd6a35a03f8eb8))
* **packages:** Add balancing option to makecolums command ([#1950](https://github.com/sile-typesetter/sile/issues/1950)) ([b5ce8e6](https://github.com/sile-typesetter/sile/commit/b5ce8e615c5e22c087ea8c8c6f7e30266e0f8634))

