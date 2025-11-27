---
title: Home Assistant builder
date: 2025-11-27 13:08:04 +00:00
tags:
  - home-assistant
  - GitHub Actions
draft: false
repo: https://github.com/home-assistant/builder
marketplace: https://github.com/marketplace/actions/home-assistant-builder
version: 2025.11.0
dependentsNumber: "3,686"
---


Version updated for **https://github.com/home-assistant/builder** to version **2025.11.0**.
- This action is used across all versions by **3,686** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/home-assistant-builder) to find the latest changes.

## Release notes

## :boom: Breaking Changes

This release **removes support for the armv7, i386, and armhf architectures** which were previously announced as deprecated in the Home Assistant architecture decisions (https://github.com/home-assistant/architecture/discussions/1230, https://github.com/home-assistant/architecture/discussions/1200, https://github.com/home-assistant/architecture/discussions/1199).

The `--all` flag has has been removed since it could silently fail for add-on developers who relied on it in builds for the deprecated architectures using the latest version of the builder action. If your build process uses `--all`,  update it to specify architectures explicitly (e.g., `--amd64 --aarch64`) or use a [matrix strategy](https://docs.github.com/en/actions/how-tos/write-workflows/choose-what-workflows-do/run-job-variations) for the build job (see [addons-example](https://github.com/home-assistant/addons-example) for a concrete example of an add-on build workflow).

If you need to build images for the deprecated architectures, you can specify an older builder action, e.g. `home-assistant/builder@2025.09.0` which still supports build of these architectures, including the `--all` flag.

## What's Changed

* Drop support for --all in favor of explicit architecture arguments (#265) @sairon
* Don't refer to `@master` action in the readme examples (#264) @sairon
* actions/publish: use dotslash self-reference (#258) @eshattow
* Remove deprecated archs (#263) @edenhaus
* Bump actions/checkout from 5 to 6 (#262) @[dependabot[bot]](https://github.com/apps/dependabot)
* Bump sigstore/cosign-installer from 3.10.0 to 4.0.0 (#254) @[dependabot[bot]](https://github.com/apps/dependabot)
* Bump docker/login-action from 3.5.0 to 3.6.0 (#253) @[dependabot[bot]](https://github.com/apps/dependabot)
* Bump home-assistant/builder from 2025.03.0 to 2025.09.0 (#252) @[dependabot[bot]](https://github.com/apps/dependabot)

