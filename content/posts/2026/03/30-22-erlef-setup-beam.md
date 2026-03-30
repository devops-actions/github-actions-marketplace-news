---
title: setup-beam
date: 2026-03-30 22:20:27 +00:00
tags:
  - erlef
  - GitHub Actions
draft: false
repo: https://github.com/erlef/setup-beam
marketplace: https://github.com/marketplace/actions/setup-beam
version: v1.24.0
dependentsNumber: "14,185"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/erlef/setup-beam** to version **v1.24.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **14,185** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-beam) to find the latest changes.

## Action Summary

The `setup-beam` GitHub Action automates the setup of an Erlang/OTP environment in workflows, with optional support for installing Elixir, Gleam, rebar3, and related tools. It simplifies managing tool versions through strict or loose version matching, version files, and semantic versioning, while ensuring compatibility with multiple operating systems. This action is ideal for streamlining CI/CD pipelines for projects using Erlang/OTP and associated technologies.

## What's Changed

## ⚠️ Potentially breaking changes

Since GitHub is phasing out Node 20 runners, the `erlef/setup-beam` action has updated its requirements ([see PR #426](https://github.com/erlef/setup-beam/pull/426)). Please **ensure your workflow files are updated** to align with the [latest GitHub Actions standards](https://github.blog/changelog/2025-09-19-deprecation-of-node-20-on-github-actions-runners/) to avoid execution failures.

## What's Changed

* Support Node 24 runtime by @levibuzolic in https://github.com/erlef/setup-beam/pull/426
* Fix error that occurs when parsing TOML files that use dotted keys by @mitchellhenke in https://github.com/erlef/setup-beam/pull/444

* Automation
  * Update 3rd party licenses (automation) by @github-actions[bot] in https://github.com/erlef/setup-beam/pull/435, https://github.com/erlef/setup-beam/pull/436, and https://github.com/erlef/setup-beam/pull/442

* Security
  * Bump eslint from 10.0.3 to 10.1.0 by @dependabot[bot] in https://github.com/erlef/setup-beam/pull/439
  * Bump yauzl from 3.2.0 to 3.2.1 in the npm_and_yarn group across 1 directory by @dependabot[bot] in https://github.com/erlef/setup-beam/pull/437
  * Bump csv-parse from 6.1.0 to 6.2.1 by @dependabot[bot] in https://github.com/erlef/setup-beam/pull/440
  * Bump picomatch from 4.0.3 to 4.0.4 in the npm_and_yarn group across 1 directory by @dependabot[bot] in https://github.com/erlef/setup-beam/pull/443
  * fix: address `Prototype Pollution via parse() in NodeJS flatted` by @paulo-ferraz-oliveira in https://github.com/erlef/setup-beam/pull/445

## New Contributors
* @levibuzolic made their first contribution in https://github.com/erlef/setup-beam/pull/426
* @mitchellhenke made their first contribution in https://github.com/erlef/setup-beam/pull/444

**Full Changelog**: https://github.com/erlef/setup-beam/compare/v1...v1.24.0
