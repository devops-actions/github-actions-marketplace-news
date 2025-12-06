---
title: Eco CI Energy Estimation
date: 2024-10-24 16:47:02 +00:00
tags:
  - green-coding-solutions
  - GitHub Actions
draft: false
repo: green-coding-solutions/eco-ci-energy-estimation
marketplace: https://github.com/marketplace/actions/eco-ci-energy-estimation
version: v4.0.0
dependentsNumber: "19"
---


Version updated for **green-coding-solutions/eco-ci-energy-estimation** to version **v4.0.0**.
- This action is used across all versions by **19** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eco-ci-energy-estimation) to find the latest changes.

## Release notes

Important: First of all thanks to our many contributors for this new version ❤️ 

## New features

- Eco-CI is now greatly reduced in overhead. Most of the changes we describe in the [pre-release notes](https://github.com/green-coding-solutions/eco-ci-energy-estimation/releases/tag/v4.0-rc3).
  - The footrpint is greatly reduced from > 200 MB to < 1 MB
  - The overhead is reduced from ~ 20 seconds to almost zero due to pre-calculation of the power profiles

- Eco-CI is now compatible with the new GMT endpoint format `/v2/ci/measurement/add`
  - This is mostly an internal change, but allows you to use [CarbonDB 2.0](https://www.green-coding.io/projects/carbondb/)


## What's Changed
* Update to cache@v4 by @jan-kiszka in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/71
* Changes the ip resolver from ip-api.com to ipapi.com because of https by @ribalba in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/78
* Pre calculated Machine energy profiles by @ArneTR in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/76
* Better overhead and api by @ArneTR in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/83
* api-base is now github.api_url by default by @ArneTR in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/82
* Bump actions/checkout from 3 to 4 in /.github/workflows by @dependabot in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/93
* Bump actions/setup-node from 3 to 4 in /.github/workflows by @dependabot in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/94
* Update overhead_test.yml by @ribalba in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/90
* Fix indentation of display-results task by @ceddlyburge in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/98
* Testing CarbonDB 2.0 by @ArneTR in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/100
* Microseconds microgramm by @ArneTR in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/101
* Electricitymaps unified by @ArneTR in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/102
* Alpine requires coreutils to get timestamp in microseconds by @davidkopp in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/104

## New Contributors
* @jan-kiszka made their first contribution in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/71
* @dependabot made their first contribution in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/93
* @ceddlyburge made their first contribution in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/98
* @davidkopp made their first contribution in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/104

**Full Changelog**: https://github.com/green-coding-solutions/eco-ci-energy-estimation/compare/v3.1...v4.0.0
