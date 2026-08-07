---
title: Pipr Review
date: 2026-08-07 07:22:47 +00:00
tags:
  - somus
  - GitHub Actions
draft: false
repo: https://github.com/somus/pipr
marketplace: https://github.com/marketplace/actions/pipr-review
version: v0.8.0
dependentsNumber: "1"
actionType: Docker
actionSummary: |
  Pipr automates AI code reviews across multiple code hosts. It supports various platforms including GitHub, GitLab, Azure DevOps, Bitbucket, Gitea, Forgejo, and Codeberg. Users can configure different models, set up review limits, and compose custom workflows using a typed SDK. Pipr validates findings before publishing comments and integrates seamlessly into existing CI/CD processes without tying policies to specific platforms.
---


Version updated for **https://github.com/somus/pipr** to version **v0.8.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipr-review) to find the latest changes.

## Action Summary

Pipr automates AI code reviews across multiple code hosts. It supports various platforms including GitHub, GitLab, Azure DevOps, Bitbucket, Gitea, Forgejo, and Codeberg. Users can configure different models, set up review limits, and compose custom workflows using a typed SDK. Pipr validates findings before publishing comments and integrates seamlessly into existing CI/CD processes without tying policies to specific platforms.

## What's Changed

## [0.8.0](https://github.com/somus/pipr/compare/v0.7.0...v0.8.0) (2026-08-06)


### ⚠ BREAKING CHANGES

* trigger 0.8.0 release

### Features

* improve review run observability ([#141](https://github.com/somus/pipr/issues/141)) ([b975983](https://github.com/somus/pipr/commit/b975983f237935330b4033a42f40e75db1ea2ede))
* **sdk:** validate custom findings through task context ([#144](https://github.com/somus/pipr/issues/144)) ([99a3838](https://github.com/somus/pipr/commit/99a3838eca92318d0b67c6c85b139c830022a4ee))
* trigger 0.8.0 release ([4821a0a](https://github.com/somus/pipr/commit/4821a0a903fa88515d6915eeee4e8d2160ff610d))


### Bug Fixes

* **bitbucket:** scope fork checkout credentials ([#143](https://github.com/somus/pipr/issues/143)) ([13dfdf6](https://github.com/somus/pipr/commit/13dfdf60f83a826b34503e2e200efb02f1066717))
