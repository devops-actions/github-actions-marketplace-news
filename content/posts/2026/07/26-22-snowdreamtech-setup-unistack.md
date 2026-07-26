---
title: Setup UniStack
date: 2026-07-26 22:27:59 +00:00
tags:
  - snowdreamtech
  - GitHub Actions
draft: false
repo: https://github.com/snowdreamtech/setup-unistack
marketplace: https://github.com/marketplace/actions/setup-unistack
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the installation and configuration of UniStack, a runtime and tool manager. It automatically detects the best installation method based on available runtimes and provides options to install using npm, pip (coming soon), GitHub Release, or Go install. The action also supports GitHub Proxy for restricted networks and caching using Handlebars-based templates for fast repeated runs across different platforms.
---


Version updated for **https://github.com/snowdreamtech/setup-unistack** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-unistack) to find the latest changes.

## Action Summary

This GitHub Action automates the installation and configuration of UniStack, a runtime and tool manager. It automatically detects the best installation method based on available runtimes and provides options to install using npm, pip (coming soon), GitHub Release, or Go install. The action also supports GitHub Proxy for restricted networks and caching using Handlebars-based templates for fast repeated runs across different platforms.

## What's Changed

## 0.1.0 (2026-07-26)


### Features

* add job summary output ([23587ed](https://github.com/snowdreamtech/setup-unistack/commit/23587ed14e5d14273098cd42059b0467f6a1e1c8))
* add support for concurrent blob downloads in artifact caching ([9b9d1bb](https://github.com/snowdreamtech/setup-unistack/commit/9b9d1bb9323907dcc47782922d82f03471ab152a))
* add support for UNIRTM_ENV in cache key generation ([436e727](https://github.com/snowdreamtech/setup-unistack/commit/436e7279c362ae25cea4d3173b4c12acf850a861))
* add trust input parameter to automatically run unirtm trust ([16c6613](https://github.com/snowdreamtech/setup-unistack/commit/16c6613c4b2cf3dcd447a3ed364e67aab09f1a3f))
* atomic caching to prevent corrupted cache on install failure ([2f09505](https://github.com/snowdreamtech/setup-unistack/commit/2f095057de7fc0af68a6f9514d4f056c81c56d76))
* implement setup-unirtm GitHub Action with TypeScript ([1da677a](https://github.com/snowdreamtech/setup-unistack/commit/1da677a9177cc0eb04ea5fcdcdf988bc3ccb8be7))
* initial release for setup-unigo ([4e6b2b8](https://github.com/snowdreamtech/setup-unistack/commit/4e6b2b8760ba8a07355d2f6fde1f03c9ed4c4e59))
* rename version input to unirtm-version to avoid collisions ([3f7d925](https://github.com/snowdreamtech/setup-unistack/commit/3f7d92577c2da1c2b2f4739a69b0d8a369226834))
* resolve 'latest' to absolute latest release instead of second latest ([4f47865](https://github.com/snowdreamtech/setup-unistack/commit/4f478651eedaf562c7728b2b5f8e40e5ab31c1b4))
* support 'latest' as a special version keyword to fetch the newest release ([c4a4244](https://github.com/snowdreamtech/setup-unistack/commit/c4a4244f7fccfdf58813de5d9a982e2fa092a42b))


### Bug Fixes

* add --force to npm install to resolve bin conflicts in unirtm packages ([59bf0e7](https://github.com/snowdreamtech/setup-unistack/commit/59bf0e754a2785541f5809e34ec3002c70e3f49b))
* add description to ts-expect-error ([c97d35c](https://github.com/snowdreamtech/setup-unistack/commit/c97d35c504297f776ec979bc13294b13a6eb980c))
* bundle action as cjs to avoid dynamic require errors in [@actions](https://github.com/actions) dependencies ([1fb0b83](https://github.com/snowdreamtech/setup-unistack/commit/1fb0b836177c6a84d6890f971e1d189eb6dffba8))
* bundle action as esm to fix require is not defined error ([fe9c6e1](https://github.com/snowdreamtech/setup-unistack/commit/fe9c6e194892a14ffaba8376f23ff2a59f2a2f08))
* **cache:** resolve cache key and binary recovery issues ([7275ddf](https://github.com/snowdreamtech/setup-unistack/commit/7275ddf7ebf71794f51a15c1a565216e827de2af))
* change verification command from unirtm --version to unirtm version ([e5fb58b](https://github.com/snowdreamtech/setup-unistack/commit/e5fb58b290dd17cf2ac180cde021d96845ee143c))
* **ci:** change unirtm --version to unirtm version in CI workflow ([6e03aa8](https://github.com/snowdreamtech/setup-unistack/commit/6e03aa87a320ba6357871b6576ed361dc7396bc0))
* complete cache implementation with multi-path and restore-keys ([61e9381](https://github.com/snowdreamtech/setup-unistack/commit/61e93810b9a60d01016cd3614d4796c25b00b8ec))
* correct go install module path to match UniGo go.mod ([7a25f88](https://github.com/snowdreamtech/setup-unistack/commit/7a25f880984486440d1441cf192589078053ba43))
* correct GO_MODULE path for go install method ([8cbefba](https://github.com/snowdreamtech/setup-unistack/commit/8cbefba21eb941b8c44a1c8b40e52ee8ce8c7f08))
* correct pip package name and remove legacy Harden Runner ([190f867](https://github.com/snowdreamtech/setup-unistack/commit/190f867ac9f43edf7c7ebe2ea27926d3cab76871))
* correctly handle Windows cache path ([6ddc56f](https://github.com/snowdreamtech/setup-unistack/commit/6ddc56f89435f1ea903e08eaa0eebc02c3eb91f3))
* correctly mock exact cache hit in main.test.ts ([4e2f3f9](https://github.com/snowdreamtech/setup-unistack/commit/4e2f3f947f2f1aa64f6a3abefbc383f2f8064fc8))
* correctly save CACHE_RESULT state in main.ts ([6d9149f](https://github.com/snowdreamtech/setup-unistack/commit/6d9149f6a88ad8e37b8dd104e6c0dbe746986d78))
* defer version resolution for npm and pip ([a220f4e](https://github.com/snowdreamtech/setup-unistack/commit/a220f4e6a5f500426f1d63414bfc3291a192ee93))
* fetch second latest version by default to resolve chicken-and-egg issue ([fe5c71f](https://github.com/snowdreamtech/setup-unistack/commit/fe5c71fec09ad92dbcf467b5fd57441ed15e4f34))
* force release 0.1.15 to include ci improvements ([ceb3c7f](https://github.com/snowdreamtech/setup-unistack/commit/ceb3c7fe6764f9823ed10da935f3e93e694cb225))
* force release to include recent dependency and lint updates ([cac74e6](https://github.com/snowdreamtech/setup-unistack/commit/cac74e608646aaee71c6c8907ed92214de391ad8))
* improve Windows compatibility and add README ([8802f9f](https://github.com/snowdreamtech/setup-unistack/commit/8802f9fd62b51f5ccbedb504bfa0b9d31b789618))
* pin jiti version explicitly ([84d67ce](https://github.com/snowdreamtech/setup-unistack/commit/84d67ce6e07f2c730cdc4a8f6967d79802fd5748))
* polyfill import.meta.url for esbuild CJS bundle ([3ff3077](https://github.com/snowdreamtech/setup-unistack/commit/3ff3077b5a9cb257747cd77d69fba16859f49968))
* remove --force from npm install as the bin conflict in unirtm is resolved ([83b63c8](https://github.com/snowdreamtech/setup-unistack/commit/83b63c8e0a0818005e24ce4f5182de709b29b4ca))
* remove empty test suite causing vitest failure ([21590b1](https://github.com/snowdreamtech/setup-unistack/commit/21590b175f30ea2e5a04d9504c005b70738ffbc3))
* remove esbuild minify to fix createRequire(import.meta.url) cjs interop bug ([0be14b5](https://github.com/snowdreamtech/setup-unistack/commit/0be14b5c2fb1a0633bc255f53fe461bf7ba0b27e))
* remove stale unirtm-specific references after migration ([8d1624f](https://github.com/snowdreamtech/setup-unistack/commit/8d1624f8d141763102436550d9fbf4880e2bd1f7))
* rename leftover mise cache configurations to unigo ([729dd49](https://github.com/snowdreamtech/setup-unistack/commit/729dd49637990a42a869f685786d728d4d7719e8))
* replace deprecated npm bin with npm prefix to fix exit code 1 ([cbb0550](https://github.com/snowdreamtech/setup-unistack/commit/cbb0550303cee26cb6a5297c93671c4001f36f4b))
* replace ts-ignore with ts-expect-error to satisfy linting ([dd15b75](https://github.com/snowdreamtech/setup-unistack/commit/dd15b75fffc2d0cdafe0caa53bf601509f8e86b5))
* robustly strip leading 'v' from requested version ([2f268be](https://github.com/snowdreamtech/setup-unistack/commit/2f268be27fe61f17109f04e5f27f68526c92b29b))
* skip unirtm install on exact cache hit and enhance cache logging ([c3f81aa](https://github.com/snowdreamtech/setup-unistack/commit/c3f81aa51250b771091914b3c5aa51b6ab742909))
* strictly defer version resolution and bypass GitHub API for npm/pip ([64a934c](https://github.com/snowdreamtech/setup-unistack/commit/64a934cb98cfd304c6accfa67fe5922c7ac8f397))
* temporarily disable pip auto-detection and integration test ([9d019b4](https://github.com/snowdreamtech/setup-unistack/commit/9d019b4818b55ea33febcaa4b15cf6bfc56c5635))
* unify cache path to ~/.local/share/unirtm for all platforms ([0b9243e](https://github.com/snowdreamtech/setup-unistack/commit/0b9243e5478509fe53878e6e76c74e1e1ad73301))


### Miscellaneous Chores

* re-trigger release-please ([38db8c8](https://github.com/snowdreamtech/setup-unistack/commit/38db8c8f1b9b86fd50e7e5de7878a40ea760b25c))


### Build System

* update dist for unistack migration ([d1de7ed](https://github.com/snowdreamtech/setup-unistack/commit/d1de7ed490534f6940f8c8d3c7f42b833c697e12))
