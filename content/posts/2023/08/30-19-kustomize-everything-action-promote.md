---
title: Kustomize Image and Helm Promotion
date: 2023-08-30 19:03:14 +00:00
tags:
  - kustomize-everything
  - GitHub Actions
draft: false
repo: kustomize-everything/action-promote
marketplace: https://github.com/marketplace/actions/kustomize-image-and-helm-promotion
version: v4.0.0
dependentsNumber: 1
---


Version updated for **kustomize-everything/action-promote** to version **v4.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kustomize-image-and-helm-promotion) to find the latest changes.

## Release notes

## Breaking changes
* If you are using `pull-request` promotion but have disabled aggregated changes, https://github.com/kustomize-everything/action-promote/pull/35 modifies the name of the PR deployment branch. Since you are necessarily not dependent on existing branches if you aren't aggregating changes this shouldn't cause an issue for most users but if you are using PR promotion and have disabled aggregated changes, verify that your use case does not depend on the branch name staying consistent.
* Upgrading the default kustomize to 5.1.1 https://github.com/kubernetes-sigs/kustomize/releases/tag/kustomize%2Fv5.1.1 . Please make note of all the changes in 5.0.0 and determine if this change will impact your use case: https://github.com/kubernetes-sigs/kustomize/releases/tag/kustomize%2Fv5.0.0 . If it will and you need to use a different kustomize version, specify it using the `version` input to specify a kustomize release and `sha256-checksum` input to specify the appropriate checksum for the release with your architecture (github runner default is `linux_amd64` so assume that unless you know otherwise.)

## What's Changed
* add overylayname and unique_key in pr branch name by @domdepasquale in https://github.com/kustomize-everything/action-promote/pull/35
* Prep for 4.0.0 release, upgrade kustomize to 5.1.1 by @highb in https://github.com/kustomize-everything/action-promote/pull/36

## New Contributors
* @domdepasquale made their first contribution in https://github.com/kustomize-everything/action-promote/pull/35

**Full Changelog**: https://github.com/kustomize-everything/action-promote/compare/v3.7.3...v4.0.0
