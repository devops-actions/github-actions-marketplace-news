---
title: waymux test
date: 2026-06-24 06:59:48 +00:00
tags:
  - waymux
  - GitHub Actions
draft: false
repo: https://github.com/waymux/waymux
marketplace: https://github.com/marketplace/actions/waymux-test
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waymux/waymux** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waymux-test) to find the latest changes.

## What's Changed

## waymux v1

Run real Linux GUI apps in a headless, software-rendered Wayland session on a
stock CI runner, with no GPU and no display, then collect a screenshot and an
optional lossless recording. It's "xvfb-run for Wayland," as a GitHub Action.

### Use it

Build your app into an image `FROM ghcr.io/waymux/waymux-ci`, then:

```yaml
- uses: waymux/waymux@v1
  id: waymux
  with:
    image: ghcr.io/waymux/my-app-with-waymux:latest
    run: ./run-gui-tests.sh
    record: 'true'        # also capture a clip (optional)
- run: echo "artifacts in ${{ steps.waymux.outputs.artifacts-path }}"
```

The screenshot (and recording) are uploaded as a build artifact, and the
output exposes their directory for downstream steps.

### Inputs

| Input | Default | Purpose |
| --- | --- | --- |
| `run` | (required) | Command to run inside the session |
| `image` | `ghcr.io/waymux/waymux-ci:latest` | Container image (build yours FROM it) |
| `size` | `1280x800` | Session size, WxH |
| `record` | `false` | Also record a lossless FFV1 clip |
| `artifacts` | `waymux-artifacts` | Output directory |
| `upload` | `true` | Upload the artifacts directory |

### Also ships

- Container images for CI: `waymux-ci` (apps) and `waymux-ci-plasma` (a full
  KDE Plasma 6 desktop), published to GHCR, Docker Hub, and the GitLab registry.
- A GitLab CI `include` template and the `waymux-run` wrapper for use outside
  GitHub Actions.

Everything runs on the CPU (Mesa llvmpipe), so it works on any stock runner.

Docs: https://waymux.dev
