---
title: Close and Release Nexus Staged Repo
date: 2023-11-17 19:04:27 +00:00
tags:
  - nexus-actions
  - GitHub Actions
draft: false
repo: nexus-actions/release-nexus-staging-repo
marketplace: https://github.com/marketplace/actions/close-and-release-nexus-staged-repo
version: v1.3.0
dependentsNumber: "84"
---


Version updated for **nexus-actions/release-nexus-staging-repo** to version **v1.3.0**.
- This action is used across all versions by **84** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/close-and-release-nexus-staged-repo) to find the latest changes.

## Release notes

Add typings for [github-actions-typing](https://github.com/typesafegithub/github-actions-typing)

In order to [qualify](https://typesafegithub.github.io/github-workflows-kt/user-guide/using-actions/#requirements-for-adding-a-new-action) for inclusion in [github-workflows-kt](https://github.com/typesafegithub/github-workflows-kt), the tagging scheme has changed to include a patch version (`v1.y.z`). 

Previous tags `v1.1` and `v1.2` are kept in order to not break existing references but should be considered deprecated.

Previous tag `v1` is now a branch that points to the latest `v1.y.z` (currently `v1.3.0`) as [recommended by GitHub](https://docs.github.com/en/actions/creating-actions/about-custom-actions#using-tags-for-release-management). If your worflows depended on `v1`, they will now use tag `v1.3.0` instead of `v1.0.0` previously
