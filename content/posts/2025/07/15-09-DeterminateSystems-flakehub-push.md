---
title: Publish Nix flakes to FlakeHub
date: 2025-07-15 09:02:20 +00:00
tags:
  - DeterminateSystems
  - GitHub Actions
draft: false
repo: https://github.com/DeterminateSystems/flakehub-push
marketplace: https://github.com/marketplace/actions/publish-nix-flakes-to-flakehub
version: v6
dependentsNumber: "1,009"
---


Version updated for **https://github.com/DeterminateSystems/flakehub-push** to version **v6**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1,009** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-nix-flakes-to-flakehub) to find the latest changes.

## Release notes

## What's Changed
* Add flakehub cache to the macos builds by @grahamc in https://github.com/DeterminateSystems/flakehub-push/pull/161
* Update cargo deps for gix-path by @grahamc in https://github.com/DeterminateSystems/flakehub-push/pull/160
* Bump actions/download-artifact from 3 to 4.1.7 in /.github/workflows by @dependabot[bot] in https://github.com/DeterminateSystems/flakehub-push/pull/158
* Handle unset derivation outputs attribute by @edolstra in https://github.com/DeterminateSystems/flakehub-push/pull/163
* Refactor ReleaseMetadata, PushContext by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/165
* Make it easier to test without GitHub or a local FlakeHub by @edolstra in https://github.com/DeterminateSystems/flakehub-push/pull/164
* ci: disable GHA cache by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/166
* ci: fixup upload-artifact action by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/167
* Export the exact flakeref as an output by @grahamc in https://github.com/DeterminateSystems/flakehub-push/pull/168
* Flake ref output by @grahamc in https://github.com/DeterminateSystems/flakehub-push/pull/169
* Update `detsys-ts`: Merge pull request #67 from DeterminateSystems/allow-obliterating-id-token-privs by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/174
* Update deps by @grahamc in https://github.com/DeterminateSystems/flakehub-push/pull/177
* Cargo.lock: update deps by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/179
* [FH-550] prevent pushes from non-default branch by @colemickens in https://github.com/DeterminateSystems/flakehub-push/pull/184
* Spruce up README docs by @lucperkins in https://github.com/DeterminateSystems/flakehub-push/pull/185
* Update `detsys-ts`: Merge pull request #71 from DeterminateSystems/updates by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/187
* Update deps by @cole-h in https://github.com/DeterminateSystems/flakehub-push/pull/191
* Update `detsys-ts`: Merge pull request #74 from DeterminateSystems/dependabot/npm_and_yarn/npm-deps-eb3d92718e by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/195
* Document multiple flakes in a repo by @lucperkins in https://github.com/DeterminateSystems/flakehub-push/pull/196
* Update `detsys-ts`: Merge pull request #78 from DeterminateSystems/dependabot/npm_and_yarn/npm-deps-0af3b8ec11 by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/199
* relay nice warning if user is not authenticated (possibly not signed up) by @colemickens in https://github.com/DeterminateSystems/flakehub-push/pull/198
* fixup: url join for token status endpoint by @colemickens in https://github.com/DeterminateSystems/flakehub-push/pull/201
* Update `detsys-ts`: Merge pull request #79 from DeterminateSystems/dependabot/npm_and_yarn/npm_and_yarn-14f44f5325 by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/203
* github: improve error for unauthenticated users by @colemickens in https://github.com/DeterminateSystems/flakehub-push/pull/202
* improve unauthenticated error message (again) by @colemickens in https://github.com/DeterminateSystems/flakehub-push/pull/204
* Update `detsys-ts`: Merge pull request #80 from DeterminateSystems/fixup-traces by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/205
* Update `detsys-ts`: Merge pull request #81 from DeterminateSystems/dont-capture-some-crashes by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/206
* Update `detsys-ts`: Merge pull request #82 from DeterminateSystems/even-more-crashes by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/207
* Update `detsys-ts`: Ignore hyphen-sep'd diags (#83) by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/208
* Update `detsys-ts`: Bump vite from 6.2.3 to 6.2.4 in the npm_and_yarn group (#85) by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/210
* Update `detsys-ts`: Merge pull request #84 from DeterminateSystems/dependabot/npm_and_yarn/npm-deps-73588cc3c5 by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/209
* Update `detsys-ts`: Merge pull request #86 from DeterminateSystems/dependabot/npm_and_yarn/npm_and_yarn-2bd33993d4 by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/211
* Remove gix-ref dependency by @dependabot[bot] in https://github.com/DeterminateSystems/flakehub-push/pull/212
* Update `detsys-ts`: Merge pull request #87 from DeterminateSystems/dependabot/npm_and_yarn/npm-deps-2f3c1638ee by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/215
* Bump tokio from 1.40.0 to 1.43.1 by @dependabot[bot] in https://github.com/DeterminateSystems/flakehub-push/pull/216
* Bump crossbeam-channel from 0.5.13 to 0.5.15 by @dependabot[bot] in https://github.com/DeterminateSystems/flakehub-push/pull/218
* Update `detsys-ts`: Merge pull request #88 from DeterminateSystems/dependabot/npm_and_yarn/npm_and_yarn-b7c6efa8f1 by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/220
* Update `detsys-ts`: Merge pull request #89 from DeterminateSystems/dependabot/npm_and_yarn/npm-deps-0b8d2803d6 by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/221
* Update wording around paid features by @lucperkins in https://github.com/DeterminateSystems/flakehub-push/pull/219
* Update `detsys-ts`: Update Nix and JS dependencies (#91) by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/223
* Update `detsys-ts`: Merge pull request #92 from DeterminateSystems/dependabot/npm_and_yarn/npm_and_yarn-de653eece3 by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/224
* Update `detsys-ts`: Merge pull request #93 from DeterminateSystems/dependabot/npm_and_yarn/npm-deps-a403fbca50 by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/225
* Don't raise on exec by @grahamc in https://github.com/DeterminateSystems/flakehub-push/pull/227
* Update `detsys-ts`: Merge pull request #94 from DeterminateSystems/dependabot/npm_and_yarn/npm-deps-dde80b0a8d by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/226
* Replace the old upload_s3 and x86_64-linux approach with push-artifact-ids and the CI workflow by @grahamc in https://github.com/DeterminateSystems/flakehub-push/pull/228
* Update `detsys-ts`: Merge pull request #95 from DeterminateSystems/graham/fh-813-create-a-determinate-nix-action-with-pinned-releases by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/229
* Switch to determinate-nix-action by @lucperkins in https://github.com/DeterminateSystems/flakehub-push/pull/230
* support semaphore via FLAKEHUB_PUSH_OIDC_TOKEN by @colemickens in https://github.com/DeterminateSystems/flakehub-push/pull/222
* Update `detsys-ts`: Merge pull request #97 from DeterminateSystems/dependabot/npm_and_yarn/npm-deps-a9a1a26a5c by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/232
* Update pnpm deps and drop x86_64-darwin by @grahamc in https://github.com/DeterminateSystems/flakehub-push/pull/237
* Update `detsys-ts`: Remove FHC action since it's composite (#103) by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/239
* Update `detsys-ts`: Merge pull request #101 from DeterminateSystems/gustavderdrache/write-correlation by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/238
* Remove Apple SDK frameworks by @lucperkins in https://github.com/DeterminateSystems/flakehub-push/pull/235
* Update `detsys-ts`: Skip complicated rewrites, record groups. (#104) by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/241
* Fix compatibility with lazy trees by @edolstra in https://github.com/DeterminateSystems/flakehub-push/pull/242
* Update `detsys-ts`: Await the request promise so we can cover it with the timout handler (#105) by @detsys-pr-bot in https://github.com/DeterminateSystems/flakehub-push/pull/243


**Full Changelog**: https://github.com/DeterminateSystems/flakehub-push/compare/v5...v6
