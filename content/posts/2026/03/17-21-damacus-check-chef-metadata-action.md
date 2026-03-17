---
title: Check Chef Cookbook Metadata
date: 2026-03-17 21:48:05 +00:00
tags:
  - damacus
  - GitHub Actions
draft: false
repo: https://github.com/damacus/check-chef-metadata-action
marketplace: https://github.com/marketplace/actions/check-chef-cookbook-metadata
version: v1.0.0
dependentsNumber: "3"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/damacus/check-chef-metadata-action** to version **v1.0.0**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/check-chef-cookbook-metadata) to find the latest changes.

## Action Summary

This GitHub Action validates the `metadata.rb` file in Chef cookbooks, ensuring key fields such as `maintainer`, `license`, `version`, and `chef_version` meet predefined standards and are properly configured. It automates the detection of missing or invalid metadata, performs accessibility checks on URLs, and processes multiple cookbooks concurrently for efficiency. This action streamlines cookbook validation, enhancing compliance and consistency in Chef repositories.

## Release notes

## [1.0.0](https://github.com/damacus/check-chef-metadata-action/compare/0.4.0...v1.0.0) (2026-03-17)


### ⚠ BREAKING CHANGES

* Upgrade to Node24 ([#677](https://github.com/damacus/check-chef-metadata-action/issues/677))

### Features

* add annotation level support and improve annotation test coverage ([#663](https://github.com/damacus/check-chef-metadata-action/issues/663)) ([8b52d8a](https://github.com/damacus/check-chef-metadata-action/commit/8b52d8abb4e12ea3a4e80b47df59b5f6d6fe5a5c))
* Add input validation and improve type safety ([#576](https://github.com/damacus/check-chef-metadata-action/issues/576)) ([39508f9](https://github.com/damacus/check-chef-metadata-action/commit/39508f960a96b8e652535d1c270cf9e2f5dd7e76))
* **metadata:** Add SemVer validation for version field ([87cbcc4](https://github.com/damacus/check-chef-metadata-action/commit/87cbcc43b535e0d22972cd7d49c4f6d288d263ff))
* **metadata:** Add support for multiple supports entries and validation ([4bc1441](https://github.com/damacus/check-chef-metadata-action/commit/4bc144178b93715690d85d837fcec8d84b996353))
* **metadata:** Add version constraint validation for chef_version field ([939f8c8](https://github.com/damacus/check-chef-metadata-action/commit/939f8c84e2d000e373dde1b4d96c0d5b7ebfcdb5))
* multi-cookbook support, robust parsing, and advanced validation ([#654](https://github.com/damacus/check-chef-metadata-action/issues/654)) ([f44b38c](https://github.com/damacus/check-chef-metadata-action/commit/f44b38ce91e2f620be2b08fc0d14cdc82c80353e))
* **outputs:** Export parsed metadata as Action outputs ([f267084](https://github.com/damacus/check-chef-metadata-action/commit/f267084f50436f2b2514cc53979eeac670bd15ac))
* parallel URL validation and timeouts ([#658](https://github.com/damacus/check-chef-metadata-action/issues/658)) ([44735dc](https://github.com/damacus/check-chef-metadata-action/commit/44735dc848b389277987ff91918386e4b02b500a))
* **reporting:** Consolidate check runs and improve inline annotations ([00307c4](https://github.com/damacus/check-chef-metadata-action/commit/00307c4bfb5fee93e313d8560eb035d22cb462e2))
* **reporting:** Implement error aggregation and enhanced PR comments with line precision ([46005aa](https://github.com/damacus/check-chef-metadata-action/commit/46005aa6391a7b6f3b292cbf084ac59589330479))
* **reporting:** Refine annotation style to match Rubocop and ensure relative paths ([cc3daa5](https://github.com/damacus/check-chef-metadata-action/commit/cc3daa5b9e5e6caeb694689a1e667ea4e1b0d150))
* Upgrade to Node24 ([#677](https://github.com/damacus/check-chef-metadata-action/issues/677)) ([437bd79](https://github.com/damacus/check-chef-metadata-action/commit/437bd7991c3cdcff30d162b15db925ae6ac3922b))
* **validation:** Integrate new mandatory fields and error aggregation ([6e696f0](https://github.com/damacus/check-chef-metadata-action/commit/6e696f0c889aa9813d2435f791b7b5302616141e))


### Bug Fixes

* Add missing supports field to test fixture and update dist ([0dcd3cd](https://github.com/damacus/check-chef-metadata-action/commit/0dcd3cd08b7abc9c699f34ae0f87825117cec3d3))
* **deps:** update dependency @actions/github to v9 ([#684](https://github.com/damacus/check-chef-metadata-action/issues/684)) ([e47d44e](https://github.com/damacus/check-chef-metadata-action/commit/e47d44eb44fea9d660c055dce4ba645203f90c81))
* make PR comments unique per job to avoid race conditions ([a8f3ff7](https://github.com/damacus/check-chef-metadata-action/commit/a8f3ff77a91d782eb6991b20ef8e728ebd021143))
* **reporting:** clean up PR comment format and ensure check run summary is readable ([#657](https://github.com/damacus/check-chef-metadata-action/issues/657)) ([d713034](https://github.com/damacus/check-chef-metadata-action/commit/d7130348e7f4374af61fdbab2d17a91bd5c398d2))
* **reporting:** ensure proper Rubocop-style annotations and consolidate check runs ([0d21f7c](https://github.com/damacus/check-chef-metadata-action/commit/0d21f7ce781da533f2518529250d8e6fb9e1eec4))
* resolve test failures and remove blocking formatting check ([2fe12f4](https://github.com/damacus/check-chef-metadata-action/commit/2fe12f423eaca5ede25bbb4d3551df88896f0dc3))
* Restore line tracking in metadata parser and fix tests ([91abc5e](https://github.com/damacus/check-chef-metadata-action/commit/91abc5ef636e3f78c87a7f898cbc293c30c9026d))
* Rubocop-style annotations and consolidated check runs ([359d8c2](https://github.com/damacus/check-chef-metadata-action/commit/359d8c277613e4fcbc514da6fe91a1cbfbae0bc3))
* Upgrade deps and mock out Jest errors ([#585](https://github.com/damacus/check-chef-metadata-action/issues/585)) ([555667b](https://github.com/damacus/check-chef-metadata-action/commit/555667b9d13c91c7f9b79279f9bb91e2b57b63fb))

---
This PR was generated with [Release Please](https://github.com/googleapis/release-please). See [documentation](https://github.com/googleapis/release-please#release-please).
<!-- devin-review-badge-begin -->
