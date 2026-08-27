---
title: Scratchsmith
date: 2026-08-27 07:51:31 +00:00
tags:
  - schubydoo
  - GitHub Actions
draft: false
repo: https://github.com/schubydoo/scratchsmith
marketplace: https://github.com/marketplace/actions/scratchsmith
version: v0.2.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Scratchsmith is a daemonless packager that converts dynamically linked glibc ELF binaries into minimal, reproducible `FROM scratch` OCI images. It resolves binary dependencies and stages the necessary glibc components, ensuring non-root execution and SBOM generation with optional vulnerability scanning and image size optimization. Useful for building secure, lightweight container images for applications reliant on dynamic libraries and network services.
---


Version updated for **https://github.com/schubydoo/scratchsmith** to version **v0.2.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/scratchsmith) to find the latest changes.

## Action Summary

Scratchsmith is a daemonless packager that converts dynamically linked glibc ELF binaries into minimal, reproducible `FROM scratch` OCI images. It resolves binary dependencies and stages the necessary glibc components, ensuring non-root execution and SBOM generation with optional vulnerability scanning and image size optimization. Useful for building secure, lightweight container images for applications reliant on dynamic libraries and network services.

## What's Changed

## Features

- `scratchsmith.toml` now covers every packing flag, and supports named `[profile.<name>]` sections selectable with `pack --profile <name>` (layered over the base config, CLI flags still win) — so a `[profile.ci]` can set strip/sbom/sign/push together. ([#71](https://github.com/schubydoo/scratchsmith/pull/71))
- `pack --upx` compresses the packed binary with UPX (it self-decompresses at runtime); the size report shows the delta, and `doctor` reports whether `upx` is available. ([#69](https://github.com/schubydoo/scratchsmith/pull/69))
