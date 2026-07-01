---
title: Skyhook Docker Multi-Registry Build Push
date: 2026-07-01 22:35:33 +00:00
tags:
  - skyhook-io
  - GitHub Actions
draft: false
repo: https://github.com/skyhook-io/docker-build-push-action
marketplace: https://github.com/marketplace/actions/skyhook-docker-multi-registry-build-push
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/skyhook-io/docker-build-push-action** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skyhook-docker-multi-registry-build-push) to find the latest changes.

## What's Changed

# [2.0.0](https://github.com/skyhook-io/docker-build-push-action/compare/v1.5.2...v2.0.0) (2026-07-01)


* feat!: upgrade Docker actions and drop buildx_install input ([#7](https://github.com/skyhook-io/docker-build-push-action/issues/7)) ([09a68f8](https://github.com/skyhook-io/docker-build-push-action/commit/09a68f83b7508e143b63dc823259a2192bcc6d33))


### BREAKING CHANGES

* removed the buildx_install input. docker/setup-buildx-action v4 removed its install input, so the composite no longer exposes buildx_install; the docker build -> docker buildx build alias it enabled is gone. Use the BUILDX_BUILDER env var if that behavior is needed.

Claude-Session: https://claude.ai/code/session_011T9ASy4VmRoYrnuTsLd9oU

* ci: add Dependabot for GitHub Actions




