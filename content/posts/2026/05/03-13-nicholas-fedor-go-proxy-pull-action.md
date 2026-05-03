---
title: Go Proxy Cache Updater
date: 2026-05-03 13:53:42 +00:00
tags:
  - nicholas-fedor
  - GitHub Actions
draft: false
repo: https://github.com/nicholas-fedor/go-proxy-pull-action
marketplace: https://github.com/marketplace/actions/go-proxy-cache-updater
version: v1.0.8
dependentsNumber: "9"
actionType: Docker
---


Version updated for **https://github.com/nicholas-fedor/go-proxy-pull-action** to version **v1.0.8**.

- This action is used across all versions by **9** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/go-proxy-cache-updater) to find the latest changes.

## Action Summary

The **Go Proxy Cache Updater Action** automates the process of proactively pulling new Go module releases into a specified proxy cache whenever a new version tag is created. This ensures that modules are immediately available for use and that documentation is updated on platforms like `pkg.go.dev`. By reducing latency, improving reliability, and ensuring accessibility during potential upstream issues, it addresses common challenges with on-demand proxy caching for Go modules.

## What's Changed

## What's Changed

* Fix shellcheck linting issues in entrypoint.sh by @nicholas-fedor in https://github.com/nicholas-fedor/go-proxy-pull-action/pull/36
* Fix entrypoint execution and POSIX compliance issues by @nicholas-fedor in https://github.com/nicholas-fedor/go-proxy-pull-action/pull/41
* chore(deps): update golang docker tag to v1.26 by @renovate[bot] in https://github.com/nicholas-fedor/go-proxy-pull-action/pull/44
* chore(deps): update golang:1.26-alpine docker digest to f853308 by @renovate[bot] in https://github.com/nicholas-fedor/go-proxy-pull-action/pull/48


**Full Changelog**: https://github.com/nicholas-fedor/go-proxy-pull-action/compare/v1.0.7...v1.0.8
