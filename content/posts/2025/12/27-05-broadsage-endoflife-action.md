---
title: EOL GitHub Action
date: 2025-12-27 05:28:39 +00:00
tags:
  - broadsage
  - GitHub Actions
draft: false
repo: https://github.com/broadsage/endoflife-action
marketplace: https://github.com/marketplace/actions/eol-github-action
version: v3.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/broadsage/endoflife-action** to version **v3.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eol-github-action) to find the latest changes.

## Action Summary

The "End-of-Life GitHub Action" automates software lifecycle management by detecting End-of-Life (EOL) dates for over 380 products, such as Python, Node.js, and Kubernetes. It helps maintain secure and supported dependencies by scheduling EOL checks, auto-generating multi-version test matrices, and creating issues or failing builds when products reach EOL. This action is ideal for ensuring dependency compliance and streamlining CI/CD workflows with intelligent version tracking and filtering.

## Release notes

## [3.0.0](https://github.com/broadsage/endoflife-action/compare/v2.0.3...v3.0.0) (2025-12-27)


### ⚠ BREAKING CHANGES

* This is the initial v2.0.0 release with file-based version extraction and automated release management using release-please and Renovate.

### Features

* automate GitHub Marketplace publishing and refactor release workflows ([8d7f993](https://github.com/broadsage/endoflife-action/commit/8d7f993657919a093a3c31a58a65e3f98673f78b))
* initial release of endoflife-action v2.0.0 ([306e11b](https://github.com/broadsage/endoflife-action/commit/306e11b52a909a4b55611f2d29f1a0403020f621))


### Bug Fixes

* add package-lock.json for npm cache support ([f32a858](https://github.com/broadsage/endoflife-action/commit/f32a8587e0434f1f2ea9dbf0780a32e403452dc2))
* adjust coverage thresholds and remove CodeQL manual config ([a56b2e0](https://github.com/broadsage/endoflife-action/commit/a56b2e075a7c57bed19790079418cf493bf8e7ad))
* apply Prettier formatting to all source files ([44600e0](https://github.com/broadsage/endoflife-action/commit/44600e0838bd9b7e7c8811a46f66552880370c72))
* chnage scorecard workflow format ([ecae88f](https://github.com/broadsage/endoflife-action/commit/ecae88fdd88c2db08e40e6781ed790ec509b877e))
* download build artifacts in integration test job ([ebf05b3](https://github.com/broadsage/endoflife-action/commit/ebf05b35ca257557c50b6a86368c9fab603a777e))
* generate changelog dynamically ([dd01e58](https://github.com/broadsage/endoflife-action/commit/dd01e583a938ef51b967aa8860a48cdd4338b9e7))
* swap release-please config and manifest contents to standard format ([642bac4](https://github.com/broadsage/endoflife-action/commit/642bac4cb9ef580ad5be2dc9dd40330f9b0728ab))
* trigger workflow only on tag creation ([d362c1f](https://github.com/broadsage/endoflife-action/commit/d362c1f41d71fe43a914fa1cc223793440d9abd0))
* update action name to avoid marketplace conflicts ([b60f6fc](https://github.com/broadsage/endoflife-action/commit/b60f6fca101b44dd9563499d318c70a1bb5a696d))
* update action name to avoid marketplace conflicts ([a0c0968](https://github.com/broadsage/endoflife-action/commit/a0c0968ccccc879e3d1018cd1b8528fbb56b3d9c))
* Update code format ([420c438](https://github.com/broadsage/endoflife-action/commit/420c438edb1b23eddc158e7379fe429e75cf20ea))
* upgrade node from 22.x to 24.x ([bd103b8](https://github.com/broadsage/endoflife-action/commit/bd103b87de2a66133ddd3d286589d175d2c0bde4))


### Code Refactoring

* change in node version ([d1c80f0](https://github.com/broadsage/endoflife-action/commit/d1c80f0d923afbc5fa75721a4510e23fe1237628))
* eliminate workflow duplication and improve consistency ([5ee8458](https://github.com/broadsage/endoflife-action/commit/5ee8458dc4f21a8737cd0fca8ee2a572a4a14096))
* improve action structure and documentation ([18bc8b9](https://github.com/broadsage/endoflife-action/commit/18bc8b9a6ab762afb90530daba71c28f4b1bb28b))
* improve dependency security scanning in CI ([fb50974](https://github.com/broadsage/endoflife-action/commit/fb5097468d4e5d1ba817ce78da489157fa30a9c8))
* test on latest Node.js LTS and n-1 version ([6484cfb](https://github.com/broadsage/endoflife-action/commit/6484cfbe0f9a12fcf724f158c1b1f6330e8bdac2))
* use Node.js 22.x for build and security jobs ([eb96980](https://github.com/broadsage/endoflife-action/commit/eb96980e0cd78c23a41be21b6a5e10331b5b41d9))
* use Node.js 22.x for build and security jobs ([70b5d27](https://github.com/broadsage/endoflife-action/commit/70b5d27ee47aaebb298fb04c75a07bff70cffca3))


### Documentation

* standardize company name from BroadSage to Broadsage ([a698b88](https://github.com/broadsage/endoflife-action/commit/a698b8870b68fa27238ae48663574dae49958fc5))


### Miscellaneous

* commit dist/ artifacts following GitHub Actions best practices ([9cffec7](https://github.com/broadsage/endoflife-action/commit/9cffec7d728d4c8358e39fe23a06b8eee72ec278))
* configure releases to use version tags only ([49f41f4](https://github.com/broadsage/endoflife-action/commit/49f41f411f93177ca00e7e8c7128a7ca5fee7176))
* **main:** release 1.0.0 ([c43dad4](https://github.com/broadsage/endoflife-action/commit/c43dad4127b4e5909ac97f5e9625efdc5cc67b1e))
* **main:** release 1.0.0 ([c43dad4](https://github.com/broadsage/endoflife-action/commit/c43dad4127b4e5909ac97f5e9625efdc5cc67b1e))
* **main:** release 1.0.0 ([19c3786](https://github.com/broadsage/endoflife-action/commit/19c37869ff39e8e76d672f5c6874c9ea5e92a498))
* **main:** release 1.0.1 ([b0cd60e](https://github.com/broadsage/endoflife-action/commit/b0cd60ecd8defc31f6aa766c3d6b7bc037990762))
* **main:** release 1.0.1 ([b0cd60e](https://github.com/broadsage/endoflife-action/commit/b0cd60ecd8defc31f6aa766c3d6b7bc037990762))
* **main:** release 1.0.1 ([cbdd9fb](https://github.com/broadsage/endoflife-action/commit/cbdd9fbdfe6d230cf20827ef144cc9f24c8259a8))
* **main:** release endoflife-action 2.0.0 ([10baa8f](https://github.com/broadsage/endoflife-action/commit/10baa8f291695f79b8e5a611812c0e285426dd72))
* **main:** release endoflife-action 2.0.0 ([10baa8f](https://github.com/broadsage/endoflife-action/commit/10baa8f291695f79b8e5a611812c0e285426dd72))
* **main:** release endoflife-action 2.0.0 ([8f948eb](https://github.com/broadsage/endoflife-action/commit/8f948ebc73a64495aa11b1a20a0bd538f98e551a))
* **main:** release endoflife-action 2.0.1 ([9440115](https://github.com/broadsage/endoflife-action/commit/94401152a709f35afa38fff1690895e8db835aea))
* **main:** release endoflife-action 2.0.1 ([9440115](https://github.com/broadsage/endoflife-action/commit/94401152a709f35afa38fff1690895e8db835aea))
* **main:** release endoflife-action 2.0.1 ([0ba8c9b](https://github.com/broadsage/endoflife-action/commit/0ba8c9bf6a211036e9f3bb984298037de3123bb0))
* **main:** release endoflife-action 2.0.2 ([ed784e7](https://github.com/broadsage/endoflife-action/commit/ed784e7339c1b44ee73cb465d809c7429bd93028))
* **main:** release endoflife-action 2.0.2 ([ed784e7](https://github.com/broadsage/endoflife-action/commit/ed784e7339c1b44ee73cb465d809c7429bd93028))
* **main:** release endoflife-action 2.0.2 ([5362cdc](https://github.com/broadsage/endoflife-action/commit/5362cdc7e6cc662d253870f5e4881708df96bf53))
* **main:** release endoflife-action 2.0.3 ([b8fbc82](https://github.com/broadsage/endoflife-action/commit/b8fbc82d9bf51c77c6a7f510e4cef6336b9167c8))
* **main:** release endoflife-action 2.0.3 ([b8fbc82](https://github.com/broadsage/endoflife-action/commit/b8fbc82d9bf51c77c6a7f510e4cef6336b9167c8))
* **main:** release endoflife-action 2.0.3 ([224857f](https://github.com/broadsage/endoflife-action/commit/224857f093de41745de2e19871134d7f6edf48d1))
* optimize dist/ to contain only essential runtime files ([407e1a2](https://github.com/broadsage/endoflife-action/commit/407e1a2aeef60d40904387a7dacf06b8addf27a5))


### Tests

* fix failing tests and improve coverage to meet thresholds ([48c442a](https://github.com/broadsage/endoflife-action/commit/48c442a12089f1294abb58e3012264a90093e431))
