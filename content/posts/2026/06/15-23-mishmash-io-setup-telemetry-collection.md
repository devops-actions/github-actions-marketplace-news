---
title: Setup OpenTelemetry signals collection
date: 2026-06-15 23:29:07 +00:00
tags:
  - mishmash-io
  - GitHub Actions
draft: false
repo: https://github.com/mishmash-io/setup-telemetry-collection
marketplace: https://github.com/marketplace/actions/setup-opentelemetry-signals-collection
version: v1.0.8
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/mishmash-io/setup-telemetry-collection** to version **v1.0.8**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-opentelemetry-signals-collection) to find the latest changes.

## What's Changed

# Summary

This is a ***security release.*** It updates vulnerable `esbuild` dependency to a safe version. For the original vulnerability announcements visit:
- https://github.com/advisories/GHSA-gv7w-rqvm-qjhr
- https://github.com/advisories/GHSA-g7r4-m6w7-qqqr

## Other changes

#### Input options

The action now takes a new option that allows the server to emit its own telemetry. Use if you want to investigate the inner workings of the telemetry server.

#### Java telemetry collection

The default version of the java agent is now `2.28.1`.

#### This release also updates a number of other dependencies, including:

* rollup
* @rollup/rollup-linux-x64-gnu
* prettier
* prettier-eslint
* tsx

For a full list see the link at the bottom.

#### Build workflow updates:

* Bump ruby/setup-ruby
* Bump actions/checkout
* Bump github/codeql-action


**Full Changelog**: https://github.com/mishmash-io/setup-telemetry-collection/compare/v1.0.7...v1.0.8

