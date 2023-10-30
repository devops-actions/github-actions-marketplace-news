---
title: CaSILE
date: 2023-10-30 19:16:50 +00:00
tags:
  - sile-typesetter
  - GitHub Actions
draft: false
repo: sile-typesetter/casile
marketplace: https://github.com/marketplace/actions/casile
version: v0.11.4
dependentsNumber: "6"
---


Version updated for **sile-typesetter/casile** to version **v0.11.4**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/casile) to find the latest changes.

## Release notes

### Features

* **build:** Allow builds --enable-developer to run remotely from source directory ([de47b88](https://github.com/sile-typesetter/casile/commit/de47b88d7146b9af74b6f1f307ba5f222bdf5b76))
* **core:** Add vendored lunamark fork removed from SILE upstream ([9b92dd1](https://github.com/sile-typesetter/casile/commit/9b92dd173f5e6fb58d58417faa2015500b1b037b))
* **core:** Extend SILE paths to toolkit and project-rocks ([eda4346](https://github.com/sile-typesetter/casile/commit/eda434662ef5345cfb5cd95267816de067262ce7))
* **i18n:** Add missing translation key for epub format output ([865924c](https://github.com/sile-typesetter/casile/commit/865924c9adf82c61b2288aeeed7424b341675685))
* **rules:** Extend rather than obliterate user-specified SILE_PATH ([f605617](https://github.com/sile-typesetter/casile/commit/f605617750f5cf55c7a28ad23c764c9966a69fd8))
* **scripts:** Export CaSILE's build dir for scripts that may use it outside of the project dir ([d488856](https://github.com/sile-typesetter/casile/commit/d4888566737d0dd49b6fd05b4c0987e032ee0f12))
* **scripts:** Prepend publisher toolkit scripts dir to path ([d149efb](https://github.com/sile-typesetter/casile/commit/d149efb80afb867805d4e5c801f2c28f9e18e3e8))


### Bug Fixes

* **build:** Correct Rust dependency calculations in make target ([862b69f](https://github.com/sile-typesetter/casile/commit/862b69fed116373c4b982c9de4d2d7e585697778))
* **build:** Move build-time dependency checks out of runtime dep check configure flag ([eedd6a4](https://github.com/sile-typesetter/casile/commit/eedd6a4c06075c83ad0cb487e538858a9a53f05b))
* **docker:** Update container dependencies with upstream Arch Linux package changes ([3c0fcb9](https://github.com/sile-typesetter/casile/commit/3c0fcb9c5ea925e4113327224c41e145b3c27e8b))
* **rules:** Don't trip on ebook metadata when source identified but not with a title ([51cb99c](https://github.com/sile-typesetter/casile/commit/51cb99c743f41fd4fffe7e58390ee847622b74fb))

