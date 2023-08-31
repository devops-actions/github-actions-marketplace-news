---
title: Fast Forward Merge
date: 2023-08-31 19:03:19 +00:00
tags:
  - sequoia-pgp
  - GitHub Actions
draft: false
repo: sequoia-pgp/fast-forward
marketplace: https://github.com/marketplace/actions/fast-forward-merge
version: v1.0.0
dependentsNumber: 3
---


Version updated for **sequoia-pgp/fast-forward** to version **v1.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fast-forward-merge) to find the latest changes.

## Release notes

This action merges a pull request by fast forwarding the target branch. The action is triggered when an authorized user adds a comment containing `/fast-forward` to the pull request.

The ability to fast forward a branch (the equivalent of doing `git merge --ff-only`) is needed to have an unmodified, linear history.  Unfortunately, it is not currently possible to fast forward a branch using GitHub's web UX. Even when it is possible to do a fast forward, GitHub rewrites the commits, which changes their commit hashes, and destroys any signatures.  This action improves the situation a bit by making it possible to fast forward directly from the web UX by posting a comment on the pull request.
