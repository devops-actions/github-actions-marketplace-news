---
title: Publish Nix flakes to FlakeHub
date: 2024-06-04 00:51:33 +00:00
tags:
  - DeterminateSystems
  - GitHub Actions
draft: false
repo: DeterminateSystems/flakehub-push
marketplace: https://github.com/marketplace/actions/publish-nix-flakes-to-flakehub
version: v4
dependentsNumber: "463"
---


Version updated for **DeterminateSystems/flakehub-push** to version **v4**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **463** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-nix-flakes-to-flakehub) to find the latest changes.

## Release notes

## What's Changed
* `extra-tags` -> `extra-labels` by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/68
* Set the mtime fields in the tarball correctly by @edolstra in https://github.com/DeterminateSystems/flakehub-push/pull/61
* Allow for case-insensitive README names by @lucperkins in https://github.com/DeterminateSystems/flakehub-push/pull/70
* Go fast? by @grahamc in https://github.com/DeterminateSystems/flakehub-push/pull/71
* Filter out empty strings from labels and tags by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/73
* Update production-test.yml by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/74
* Update to handle the new schema format by @edolstra in https://github.com/DeterminateSystems/flakehub-push/pull/72
* Fix flake-schemas URL by @edolstra in https://github.com/DeterminateSystems/flakehub-push/pull/75
* Make it possible to error when uploading an already-existing release by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/78
* Read README from flake's store path by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/81
* Don't re-append the subdir to the store path by @grahamc in https://github.com/DeterminateSystems/flakehub-push/pull/82
* Set content type header by @Hoverbear in https://github.com/DeterminateSystems/flakehub-push/pull/84
* Prevent "bearer" capitalization mistakes by using the bearer_auth function by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/86
* Private flakes scaffolding by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/87
* JWT: correct the audience by @grahamc in https://github.com/DeterminateSystems/flakehub-push/pull/89
* Set the aud claim for local dev by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/90
* Mechanical migration to FlakeHub by @grahamc in https://github.com/DeterminateSystems/flakehub-push/pull/92
* Require flake.lock to be up-to-date if it exists by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/96
* Register flake output paths with FlakeHub by @edolstra in https://github.com/DeterminateSystems/flakehub-push/pull/95
* Fix typos in README by @oscar-izval in https://github.com/DeterminateSystems/flakehub-push/pull/97
* update deps by @grahamc in https://github.com/DeterminateSystems/flakehub-push/pull/101
* Bump h2 from 0.3.22 to 0.3.24 by @dependabot in https://github.com/DeterminateSystems/flakehub-push/pull/104
* Offer an improved error experience by @Hoverbear in https://github.com/DeterminateSystems/flakehub-push/pull/105
* Show github annotation on specific errors. by @Hoverbear in https://github.com/DeterminateSystems/flakehub-push/pull/106
* Do some code splitting to make future work on flakehub-push more joyful by @Hoverbear in https://github.com/DeterminateSystems/flakehub-push/pull/107
* Less GitHub dependence by @Hoverbear in https://github.com/DeterminateSystems/flakehub-push/pull/108
* Revert "Less GitHub dependence" by @grahamc in https://github.com/DeterminateSystems/flakehub-push/pull/110
* Remove non-token dependencies on GitHub Actions by @Hoverbear in https://github.com/DeterminateSystems/flakehub-push/pull/109
* push.rs: fix log message by @colemickens in https://github.com/DeterminateSystems/flakehub-push/pull/113
* Decouple `--github-token` and `is_github_actions` logic by @Hoverbear in https://github.com/DeterminateSystems/flakehub-push/pull/112
* Publish to FlakeHub by @lucperkins in https://github.com/DeterminateSystems/flakehub-push/pull/115
* Bump eyre from 0.6.11 to 0.6.12 by @dependabot in https://github.com/DeterminateSystems/flakehub-push/pull/117
* Bump h2 from 0.3.24 to 0.3.26 by @dependabot in https://github.com/DeterminateSystems/flakehub-push/pull/118
* Update gix and gix-ref by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/119
* Bump mio from 0.8.10 to 0.8.11 by @dependabot in https://github.com/DeterminateSystems/flakehub-push/pull/120
* Bump rustls from 0.21.10 to 0.21.11 by @dependabot in https://github.com/DeterminateSystems/flakehub-push/pull/123
* Make flake public on FlakeHub by @lucperkins in https://github.com/DeterminateSystems/flakehub-push/pull/116
* Provide a TypeScript version of the Action by @lucperkins in https://github.com/DeterminateSystems/flakehub-push/pull/124
* Fix Dependabot issue by @lucperkins in https://github.com/DeterminateSystems/flakehub-push/pull/127
* Enable FlakeHub Cache by @lucperkins in https://github.com/DeterminateSystems/flakehub-push/pull/126
* Fix environment variable name for flake visibility by @lucperkins in https://github.com/DeterminateSystems/flakehub-push/pull/125
* refactor internals, add initial gitlab support by @colemickens in https://github.com/DeterminateSystems/flakehub-push/pull/121
* Update gix and gix-ref by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/130
* Update detsys-ts by @lucperkins in https://github.com/DeterminateSystems/flakehub-push/pull/131
* Update detsys-ts by @lucperkins in https://github.com/DeterminateSystems/flakehub-push/pull/132
* srv update by @grahamc in https://github.com/DeterminateSystems/flakehub-push/pull/133
* Update detsys-ts (status page changes) by @lucperkins in https://github.com/DeterminateSystems/flakehub-push/pull/134

## New Contributors
* @oscar-izval made their first contribution in https://github.com/DeterminateSystems/flakehub-push/pull/97
* @dependabot made their first contribution in https://github.com/DeterminateSystems/flakehub-push/pull/104

**Full Changelog**: https://github.com/DeterminateSystems/flakehub-push/compare/v3...v4
