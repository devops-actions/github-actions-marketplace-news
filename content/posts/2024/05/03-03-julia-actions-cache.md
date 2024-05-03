---
title: Cache Julia artifacts, packages and registry
date: 2024-05-03 03:33:58 +00:00
tags:
  - julia-actions
  - GitHub Actions
draft: false
repo: julia-actions/cache
marketplace: https://github.com/marketplace/actions/cache-julia-artifacts-packages-and-registry
version: v2.0.0
dependentsNumber: "6,473"
---


Version updated for **julia-actions/cache** to version **v2.0.0**.
- This action is used across all versions by **6,473** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cache-julia-artifacts-packages-and-registry) to find the latest changes.

## Release notes

## Breaking Changes ⚠️ 

`v2.0.0` requires `node20`. This is a breaking change, because `node20` [does not support](https://github.blog/changelog/2024-03-07-github-actions-all-actions-will-run-on-node20-instead-of-node16-by-default/) the following operating systems:
- Red Hat Enterprise Linux 7
- CentOS 7
- Oracle Linux 7
- Debian 9
- Ubuntu 16.04
- Linux Mint 18
- openSUSE 15
- SUSE Enterprise Linux (SLES) 12 SP2
- Windows 7 64-bit
- Windows 8.1 64-bit

Therefore, if you are using self-hosted runners on one of the above operating systems, you won't be able to run `v2` of this action.

In contrast, `v1` of this action uses `node16`.

## What's Changed
* fix: Attempt to install jq on all runners by @musoke in https://github.com/julia-actions/cache/pull/105
* Pin third party action to hash by @SaschaMann in https://github.com/julia-actions/cache/pull/106
* Mention why the extra permissions are required by @rikhuijzer in https://github.com/julia-actions/cache/pull/108
* More accurate info about GitHub cache retion policy by @giordano in https://github.com/julia-actions/cache/pull/111
* Only run Dependabot once per month, but increase the PR limit by @DilumAluthge in https://github.com/julia-actions/cache/pull/115
* Update actions/cache to v3.3.3 by @IanButterworth in https://github.com/julia-actions/cache/pull/121
* Bump julia-actions/setup-julia from 1 to 2 by @dependabot in https://github.com/julia-actions/cache/pull/116
* Bump actions/checkout from 4.1.1 to 4.1.2 by @dependabot in https://github.com/julia-actions/cache/pull/118
* Bump pyTooling/Actions from 0.4.6 to 1.0.1 by @dependabot in https://github.com/julia-actions/cache/pull/117
* update setup-julia to v2 in readme by @IanButterworth in https://github.com/julia-actions/cache/pull/124
* Bump actions/checkout from 4.1.2 to 4.1.4 by @dependabot in https://github.com/julia-actions/cache/pull/126
* Bump pyTooling/Actions from 1.0.1 to 1.0.5 by @dependabot in https://github.com/julia-actions/cache/pull/127
* Bump actions/cache from 3.3.3 to 4.0.2 by @dependabot in https://github.com/julia-actions/cache/pull/123

## New Contributors
* @musoke made their first contribution in https://github.com/julia-actions/cache/pull/105
* @giordano made their first contribution in https://github.com/julia-actions/cache/pull/111
* @DilumAluthge made their first contribution in https://github.com/julia-actions/cache/pull/115

**Full Changelog**: https://github.com/julia-actions/cache/compare/v1.5.2...v2.0.0
