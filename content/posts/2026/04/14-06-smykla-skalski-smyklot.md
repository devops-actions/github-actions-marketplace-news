---
title: Smyklot
date: 2026-04-14 06:37:38 +00:00
tags:
  - smykla-skalski
  - GitHub Actions
draft: false
repo: https://github.com/smykla-skalski/smyklot
marketplace: https://github.com/marketplace/actions/smyklot
version: v1.12.0
dependentsNumber: "2"
actionType: Docker
---


Version updated for **https://github.com/smykla-skalski/smyklot** to version **v1.12.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/smyklot) to find the latest changes.

## Action Summary

Smyklot is a GitHub App that automates pull request approvals and merges by validating user permissions against the repository's CODEOWNERS file. It streamlines collaboration by enabling actions like approving, merging, and cleaning up PRs through comment commands, emoji reactions, and customizable configurations. This tool reduces manual intervention, enforces repository ownership rules, and enhances workflow efficiency with flexible command formats and minimal permissions.

## What's Changed

## [1.12.0](https://github.com/smykla-skalski/smyklot/compare/v1.11.2...v1.12.0) (2026-04-13)

### Features

* **lint:** migrate to markdownlint-cli2 ([dbca17b](https://github.com/smykla-skalski/smyklot/commit/dbca17b7535f03178ee48b86029caf0f60006fd2))

### Bug Fixes

* **deps:** update ginkgo to v2.28.1 ([#57](https://github.com/smykla-skalski/smyklot/issues/57)) ([758ed1d](https://github.com/smykla-skalski/smyklot/commit/758ed1dfb912073a4c5410cbdce502e5b5ff5837))
* **deps:** update module github.com/jferrl/go-githubauth/v2 to v2.0.1 ([#82](https://github.com/smykla-skalski/smyklot/issues/82)) ([805a892](https://github.com/smykla-skalski/smyklot/commit/805a892f9c6d6a21b637194fad60cb96fb3d0981))
* **deps:** update module github.com/onsi/gomega to v1.39.0 ([#58](https://github.com/smykla-skalski/smyklot/issues/58)) ([6d3aa92](https://github.com/smykla-skalski/smyklot/commit/6d3aa928bd941b588361d2daa6e8500c2063cd9d))
* **deps:** update module github.com/onsi/gomega to v1.39.1 ([#68](https://github.com/smykla-skalski/smyklot/issues/68)) ([354caf4](https://github.com/smykla-skalski/smyklot/commit/354caf44e18b5c3c88ae55337ea18a8e45cc0f5b))
* **pkg:** use fmt.Fprintf, suppress G704 ([dfcb851](https://github.com/smykla-skalski/smyklot/commit/dfcb851e0b281b94fc7247fd1bdedeb7821d9e73))

### Code Refactoring

* **docs:** slim down CLAUDE.md ([29d09d4](https://github.com/smykla-skalski/smyklot/commit/29d09d46cb91bb638c060bb631764066bc7ad745))


## Smyklot v1.12.0

Docker image: `ghcr.io/smykla-skalski/smyklot:1.12.0`

## Changelog
* e8e0c9f8b02f5e507df95af7a0b1635bc81df478 chore(release): bump version to 1.12.0
* 805a892f9c6d6a21b637194fad60cb96fb3d0981 fix(deps): update module github.com/jferrl/go-githubauth/v2 to v2.0.1 (#82)
* bf841a7124982b8e0cd5c8d50f56e75b1cb2ede9 chore(sync): sync organization files (#83)
* 9bdd90422f188f1ae5acebb138a4e2d4fc54a6c7 ci(deps): update docker/login-action action to v4 (#72)
* c5a66182c38242dc2d51118eaf21b170e684cec3 ci(deps): update dorny/paths-filter action to v4 (#75)
* 758ed1dfb912073a4c5410cbdce502e5b5ff5837 fix(deps): update ginkgo to v2.28.1 (#57)
* 015cdfe11446b6cd19071800ea50b872575e5a1b chore(deps): update dependency go to v1.26.2 (#61)
* d2ac38e104d28bfa035d052afc7fcded07f3e146 ci(deps): update jdx/mise-action action to v4 (#76)
* 5450a3757b58dc8a75ec59c6d5c3f5b0078a4edc ci(deps): update docker/setup-buildx-action action to v4 (#73)
* 9f071895b623f0083b8aeaba1074a9360366b35f ci(deps): update goreleaser/goreleaser-action action to v7 (#70)
* e9d885b9c4346c1f6f0c4137c3ebd54d7beeef77 chore(deps): update node.js to v24.14.1 (#59)
* be4db1a06e69fb83342956cc4e885d709413565a ci(deps): update actions/cache action to v5.0.4 (#67)
* 33ee31ba45bcfa9e4c52899b59f68181aaaaea17 chore(deps): update alpine:3.23 docker digest to 2510918 (#66)
* 1182c7be86f672469809507a78fa086b7d22e3b7 ci(deps): update docker/login-action action to v3.7.0 (#69)
* 354caf44e18b5c3c88ae55337ea18a8e45cc0f5b fix(deps): update module github.com/onsi/gomega to v1.39.1 (#68)
* d21adbd3cf190a59bdc075e32614aa95afd6d9ac ci(deps): update dorny/paths-filter action to v3.0.3 (#74)
* ebd4d46ae35d026c1294a93bfb9e4f2a70f5768d chore(deps): update docker/dockerfile:1 docker digest to 2780b5c (#79)
* 59bef6b4f6c629163194d9e230b825b78649c252 chore(deps): update dependency npm:markdownlint-cli2 to v0.22.0 (#80)
* 2e5a1e476ff2aaee49bb71a3eda2055ed4a801a1 chore(deps): update dependency go to v1.26.2 (#60)
* d2cd067e8b3a43baffcf166db1476d77261e53cf ci(deps): update jdx/mise-action action to v3.6.3 (#71)
* c3421b5dec364dda43021dc629c5bfdb55851c15 chore(deps): update dependency actionlint to v1.7.12 (#81)
* 0960271bbc01e52a46557275d139397cd37a342d ci(deps): update actions/create-github-app-token action to v3 (#78)
* dfcb851e0b281b94fc7247fd1bdedeb7821d9e73 fix(pkg): use fmt.Fprintf, suppress G704
* 10b3e19031f2d390101cfe1b614c114e7cf31ac8 chore(deps): update dependency actionlint to v1.7.11 (#56)
* 6d3aa928bd941b588361d2daa6e8500c2063cd9d fix(deps): update module github.com/onsi/gomega to v1.39.0 (#58)
* ff394fceb10e9d0c9039906c2e258d1b24c246fd ci(deps): update actions/checkout action to v6.0.2 (#64)
* 715e179b3ddb565ef1809f0fc1a2a083eb5dd8ab ci(deps): update jdx/mise-action action to v3.6.1 (#63)
* 7fd83d864838fc79869a10d0ff4be074a0e87ddd ci(deps): update actions/cache action to v5.0.2 (#62)
* c33ce9cbe6bf7ebcc6ce7ddb4cea2b55aae6eaed docs(readme): remove AI writing patterns
* dbca17b7535f03178ee48b86029caf0f60006fd2 feat(lint): migrate to markdownlint-cli2
* 29d09d46cb91bb638c060bb631764066bc7ad745 refactor(docs): slim down CLAUDE.md


