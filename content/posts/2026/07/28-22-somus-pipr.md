---
title: Pipr Review
date: 2026-07-28 22:40:34 +00:00
tags:
  - somus
  - GitHub Actions
draft: false
repo: https://github.com/somus/pipr
marketplace: https://github.com/marketplace/actions/pipr-review
version: v0.7.0
dependentsNumber: "1"
actionType: Docker
actionSummary: |
  This GitHub Action automates AI-based code reviews across various platforms such as GitHub, GitLab, Azure DevOps, Bitbucket, Gitea, Forgejo, and Codeberg. It allows users to select models, configure review settings, and run AI-driven reviews from their repository's TypeScript config without tying it to a single host. The action supports custom tasks and agents through a typed SDK and provides flexibility in setting inline-comment limits and summary publication. It can also be executed locally before enabling CI.
---


Version updated for **https://github.com/somus/pipr** to version **v0.7.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipr-review) to find the latest changes.

## Action Summary

This GitHub Action automates AI-based code reviews across various platforms such as GitHub, GitLab, Azure DevOps, Bitbucket, Gitea, Forgejo, and Codeberg. It allows users to select models, configure review settings, and run AI-driven reviews from their repository's TypeScript config without tying it to a single host. The action supports custom tasks and agents through a typed SDK and provides flexibility in setting inline-comment limits and summary publication. It can also be executed locally before enabling CI.

## What's Changed

## [0.7.0](https://github.com/somus/pipr/compare/v0.6.3...v0.7.0) (2026-07-28)


### ⚠ BREAKING CHANGES

* trigger 0.7.0 release

### Features

* add code host adapter foundations ([#133](https://github.com/somus/pipr/issues/133)) ([6e954f0](https://github.com/somus/pipr/commit/6e954f098989993d1b49e4017086214423a2b649))
* add provider-neutral run observability ([#115](https://github.com/somus/pipr/issues/115)) ([d327b43](https://github.com/somus/pipr/commit/d327b43f4762fdbd1e7d263b3c2b536ce898c045))
* support Azure DevOps Server ([#136](https://github.com/somus/pipr/issues/136)) ([623572c](https://github.com/somus/pipr/commit/623572c8e478141402df1b96dec9a4a1acddd121))
* support Bitbucket Data Center ([#137](https://github.com/somus/pipr/issues/137)) ([01713fc](https://github.com/somus/pipr/commit/01713fcb4fef425813a7b62c59e9df6ecf6b382d))
* support enterprise GitHub and GitLab ([#135](https://github.com/somus/pipr/issues/135)) ([6970df1](https://github.com/somus/pipr/commit/6970df1ed7533798dbe331891a55e50510e7122c))
* support Gitea-compatible code hosts ([#134](https://github.com/somus/pipr/issues/134)) ([e9a3e95](https://github.com/somus/pipr/commit/e9a3e95baf14ebfc1623f20ed9982d71cb4672f4))
* trigger 0.7.0 release ([d89c242](https://github.com/somus/pipr/commit/d89c2427b0ea9262a1c168567414ae77424a983d))


### Bug Fixes

* clarify combined review runtime ([d80ffd6](https://github.com/somus/pipr/commit/d80ffd659e12238955702bae67e6a74b18477bf6))
* keep release fixture version aligned ([a25e68b](https://github.com/somus/pipr/commit/a25e68b2dc8a141734a5d1c03e553ab70401d9bc))
* publish findings after resolved review threads ([#138](https://github.com/somus/pipr/issues/138)) ([2cfd820](https://github.com/somus/pipr/commit/2cfd820e6b918a564faddc01cd6027d943a59080))
