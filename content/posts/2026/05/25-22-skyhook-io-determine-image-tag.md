---
title: Skyhook Determine Image Tag
date: 2026-05-25 22:10:38 +00:00
tags:
  - skyhook-io
  - GitHub Actions
draft: false
repo: https://github.com/skyhook-io/determine-image-tag
marketplace: https://github.com/marketplace/actions/skyhook-determine-image-tag
version: v1.1.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/skyhook-io/determine-image-tag** to version **v1.1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skyhook-determine-image-tag) to find the latest changes.

## Action Summary

The "Determine Image Tag Action" is a GitHub Action designed to automate the generation of unique, consistent container image tags for builds and releases. It solves the problem of managing tag uniqueness and format consistency by offering customizable tag formats, automatic duplicate prevention with counters, branch name normalization, and adherence to Kubernetes label length limits. The action simplifies workflows by automatically creating tags based on predefined or custom formats, ensuring seamless integration with CI/CD pipelines.

## What's Changed

## [1.1.3](https://github.com/skyhook-io/determine-image-tag/compare/v1.1.2...v1.1.3) (2026-05-25)


### Bug Fixes

* preserve PR head ref selection in env-passthrough refactor ([e3e4b2e](https://github.com/skyhook-io/determine-image-tag/commit/e3e4b2e7aa9902ed8f08ad111af08bf3579b99e0)), closes [#2](https://github.com/skyhook-io/determine-image-tag/issues/2)
* prevent trailing separators and overflow in generated tags ([b1ebcc6](https://github.com/skyhook-io/determine-image-tag/commit/b1ebcc690e66d1148288686d73fd4970397aa97d))




