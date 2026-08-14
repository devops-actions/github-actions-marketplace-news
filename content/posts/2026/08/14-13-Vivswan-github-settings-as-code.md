---
title: GitHub Settings as Code
date: 2026-08-14 13:35:15 +00:00
tags:
  - Vivswan
  - GitHub Actions
draft: false
repo: https://github.com/Vivswan/github-settings-as-code
marketplace: https://github.com/marketplace/actions/github-settings-as-code
version: v2.0.0
dependentsNumber: "15"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the application of declarative repository settings from a `.github/settings.yml` file, replacing the Probot Settings app. It manages branch protections, rulesets, and other configurations in a stateless manner, providing detailed error messages upon failure. The action is triggered on pushes to `.github/settings.yml` or manual workflows dispatches, ensuring that every change is visible and auditable through workflow runs.
---


Version updated for **https://github.com/Vivswan/github-settings-as-code** to version **v2.0.0**.

- This action is used across all versions by **15** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-settings-as-code) to find the latest changes.

## Action Summary

This GitHub Action automates the application of declarative repository settings from a `.github/settings.yml` file, replacing the Probot Settings app. It manages branch protections, rulesets, and other configurations in a stateless manner, providing detailed error messages upon failure. The action is triggered on pushes to `.github/settings.yml` or manual workflows dispatches, ensuring that every change is visible and auditable through workflow runs.

## What's Changed

## [2.0.0](https://github.com/Vivswan/github-settings-as-code/compare/v1.0.1...v2.0.0) (2026-08-11)


### ⚠ BREAKING CHANGES

* the action moved to Vivswan/github-settings-as-code; uses: references to Vivswan/repo-settings-as-code fail with "repository not found" and must be updated.
* branches[].protection.required_signatures now acts. Previously the key rode the protection PUT, where GitHub dropped it (check mode showed permanent drift). A settings file already carrying it will start toggling the signed-commit requirement on the first apply after upgrading - a stale required_signatures: false would REMOVE a hand-enabled requirement. Audit existing declarations for intent before moving to v2. The v1 line keeps the old inert behavior.
* actions.fork_pr_contributor_approval and actions.fork_pr_workflows_private_repos now act. Previously both keys fell through to the base permissions PUT, where GitHub ignored them and a notice said so. A settings file already carrying either key will start applying these policies on the first apply after upgrading; audit existing declarations for intent before moving to v2. The v1 line keeps the old inert behavior.
* actions.oidc_customization_sub now acts. Previously the key fell through to the base permissions PUT, where GitHub ignored it and a notice said so. A settings file already carrying the key will start customizing the OIDC subject claim template on the first apply after upgrading; audit existing declarations for intent before moving to v2. The v1 line keeps the old inert behavior.

### Features

* add issue-on-failure private-report channel (quiet on healthy runs) ([934a321](https://github.com/Vivswan/github-settings-as-code/commit/934a321d64d49470ced76b484f6f714fc2a2bbe4))
* enrich API rejection errors and reject unknown keys in closed sections ([7a44e90](https://github.com/Vivswan/github-settings-as-code/commit/7a44e90bc15016d7926b812000f22043d1f3058f))
* first-class GraphQL operation layer ([7d5279f](https://github.com/Vivswan/github-settings-as-code/commit/7d5279fcdae87c0985c9a6ecb637c89dcd38e2f7))
* let settings.yml choose the undeclared-resource policy per section ([372b884](https://github.com/Vivswan/github-settings-as-code/commit/372b8844f1274cdfac71d04b5c526d6d6714da8f))
* manage Actions artifact/log retention and cache limits ([8014910](https://github.com/Vivswan/github-settings-as-code/commit/8014910b884aece9cc71f974cef26db4656da74f))
* manage code quality setup and check suite preferences ([adab49e](https://github.com/Vivswan/github-settings-as-code/commit/adab49e76316dfab7122b30c114d7bde1f69b1ba))
* manage Copilot agents secrets and variables ([1d839e1](https://github.com/Vivswan/github-settings-as-code/commit/1d839e1797f622da2cb01331a8ec395cd56dcf0b))
* manage deploy keys ([a6f7ae1](https://github.com/Vivswan/github-settings-as-code/commit/a6f7ae1251177cd07c1ce6d0acc3176e3986f9b0))
* manage environment custom deployment protection rules ([f752ce8](https://github.com/Vivswan/github-settings-as-code/commit/f752ce8626e98689902e4f83463816fe25636139))
* manage environment deployment branch-policy patterns ([34eafe4](https://github.com/Vivswan/github-settings-as-code/commit/34eafe4e46dd12f6b17dfdf4987b7898270d1718))
* manage environment variables in the environments section ([1d272c3](https://github.com/Vivswan/github-settings-as-code/commit/1d272c355ed1b933080d1234b3925625ec1e1edb))
* manage environment, Dependabot, and Codespaces secrets ([c8bbe75](https://github.com/Vivswan/github-settings-as-code/commit/c8bbe75a91fadbfe241e152ab3fdcf3d52120309))
* manage fork pull request workflow policies from the actions section ([cd2bfcf](https://github.com/Vivswan/github-settings-as-code/commit/cd2bfcfb332cd789cb4d8d55a7ca40daefcdfec8))
* manage Git LFS enablement from the repository section ([a0195fa](https://github.com/Vivswan/github-settings-as-code/commit/a0195faf6bc2a8df6e68437a38c35c6d419020bc))
* manage immutable releases from the repository section ([f2582f7](https://github.com/Vivswan/github-settings-as-code/commit/f2582f7b8d66d5d7db79fad6b2b0f70788baa590))
* manage pinned environments ([c368c98](https://github.com/Vivswan/github-settings-as-code/commit/c368c98a52ee5d0a35028e2501423316b5c65023))
* manage repository Actions secrets ([0f8ea4e](https://github.com/Vivswan/github-settings-as-code/commit/0f8ea4e0ba0ffc23802bfd608fc979b40045eaf2))
* manage repository Actions variables ([780abf0](https://github.com/Vivswan/github-settings-as-code/commit/780abf0ec19c50279cc2454606492101bfbdebf7))
* manage repository custom property values ([b5bf3ac](https://github.com/Vivswan/github-settings-as-code/commit/b5bf3ac547b0ad84ae19427cf2da06b35b3911fb))
* manage repository interaction limits ([c8dd58d](https://github.com/Vivswan/github-settings-as-code/commit/c8dd58d04de93da9f76168f985654e5d54646065))
* manage repository secret scanning custom patterns ([05f614c](https://github.com/Vivswan/github-settings-as-code/commit/05f614c0a894e2a9599e81f03c7de593164ad9eb))
* manage repository webhooks ([85013d3](https://github.com/Vivswan/github-settings-as-code/commit/85013d3d6437bd78357dd37547c1426c80fb449b))
* manage required commit signatures in the branches section ([16bec9a](https://github.com/Vivswan/github-settings-as-code/commit/16bec9a328879af3a522e67fb80c86e50c4e6460))
* manage the Actions OIDC subject claim from the actions section ([c4e712f](https://github.com/Vivswan/github-settings-as-code/commit/c4e712fd4b929ba6553f2e54c3f1b53b6fd7971b))
* manage the pull request creation cap and bypass list ([e98fb3a](https://github.com/Vivswan/github-settings-as-code/commit/e98fb3ad58b2f8b78d759480cf096a483678a741))
* manage the sponsor button and issue creation policy ([97111fb](https://github.com/Vivswan/github-settings-as-code/commit/97111fb2fa66779f099e6daf3c0ac5c5b44b189f))
* manage wildcard branch protection, force-push bypassers, and required deployments ([085ac52](https://github.com/Vivswan/github-settings-as-code/commit/085ac52683eaacbda1d974cf19f5a6e38f774b71))
* move repo-owned CI and release logic to template extension points ([#12](https://github.com/Vivswan/github-settings-as-code/issues/12)) ([cdde9cc](https://github.com/Vivswan/github-settings-as-code/commit/cdde9ccbf867af6d257ce26f5eac8180930b4ca9))
* reconcile pending collaborator invitations ([cb92188](https://github.com/Vivswan/github-settings-as-code/commit/cb9218874d6a6956cb1a575ce64418ad8614c199))
* rename to github-settings-as-code ([9678cee](https://github.com/Vivswan/github-settings-as-code/commit/9678ceef5375ce7a30f70107ef441a496cf8653b))


### Bug Fixes

* **ci:** cover src/report in the changed-sections selector and openapi cache key ([a1c4302](https://github.com/Vivswan/github-settings-as-code/commit/a1c43023ab54ea3dca16dd61a2034d2b003756fd))
* declare dependabot default labels and realign SECURITY.md ([aa89a23](https://github.com/Vivswan/github-settings-as-code/commit/aa89a230e6dbe0f823dc7998c21edbed0b167972))
* drop connections for real in the e2e mock, on bun 1.3.14 ([791c4bf](https://github.com/Vivswan/github-settings-as-code/commit/791c4bfe668f02b1d72bdb8677f14fd390678ea5))
* **e2e:** keep body-presence checks active for requestOffSpec rejections ([43426a6](https://github.com/Vivswan/github-settings-as-code/commit/43426a6cca49370f6200acef20dbe368af190106))
* mark the secrets-and-vaults action pins for major-tag rewrites ([9d1f616](https://github.com/Vivswan/github-settings-as-code/commit/9d1f616eaf368f959b1761945619ca1926ecc659))
* name every offender in errors and carry engine invariants in types ([49b386a](https://github.com/Vivswan/github-settings-as-code/commit/49b386a1313173fdcf376c7698852f497a355626))
* preserve a rotated deploy key's live read_only flag ([a36da82](https://github.com/Vivswan/github-settings-as-code/commit/a36da82b4c2ca0a91549b40ca8a4a1e522b16bc4))
* re-enable declared protection rules the API reports as disabled ([b469a6f](https://github.com/Vivswan/github-settings-as-code/commit/b469a6fde4c32b20fe4abf4b895a0d4f525d39d6))
* reject invalid actions and repository declarations before any section writes ([85be8ef](https://github.com/Vivswan/github-settings-as-code/commit/85be8efd6355326f3814616580d8ff6586e7cbe7))
* silence and label intentional error noise in green runs ([a786ae6](https://github.com/Vivswan/github-settings-as-code/commit/a786ae682fc791c0be8fc1bc94881265d28c30ed))
* track secret-reference provenance structurally through the merge ([e9c223e](https://github.com/Vivswan/github-settings-as-code/commit/e9c223e2f828aee777270939948093e3467618c9))
* unpad flow-mapping braces in the pins cap scenario ([7b041fd](https://github.com/Vivswan/github-settings-as-code/commit/7b041fd13a4da8466f5b9c622993a04a7fc3ff73))
* write version-less secret scanning patterns the way the API allows ([6fa0cef](https://github.com/Vivswan/github-settings-as-code/commit/6fa0cefed39867bcd44d615da5e5bf0c22b237c1))
