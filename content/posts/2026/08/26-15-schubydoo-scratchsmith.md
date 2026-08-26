---
title: Scratchsmith
date: 2026-08-26 15:03:44 +00:00
tags:
  - schubydoo
  - GitHub Actions
draft: false
repo: https://github.com/schubydoo/scratchsmith
marketplace: https://github.com/marketplace/actions/scratchsmith
version: v0.2.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Scratchsmith automates the creation of minimal, non-root OCI images from dynamically linked glibc ELF binaries. It resolves dependencies using `ld.so`, stages necessary glibc components like NSS modules and a working `nsswitch.conf`, and assembles an image that can be executed without Docker. The action supports features like SBOM generation, ELF hardening linting, and detection of gaps in dynamic linking behavior through `dlopen`. It provides a daemonless workflow for packaging binaries into OCI images, making it suitable for use cases where static linking is not possible or when quick, reproducible builds are needed without Docker.
---


Version updated for **https://github.com/schubydoo/scratchsmith** to version **v0.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/scratchsmith) to find the latest changes.

## Action Summary

Scratchsmith automates the creation of minimal, non-root OCI images from dynamically linked glibc ELF binaries. It resolves dependencies using `ld.so`, stages necessary glibc components like NSS modules and a working `nsswitch.conf`, and assembles an image that can be executed without Docker. The action supports features like SBOM generation, ELF hardening linting, and detection of gaps in dynamic linking behavior through `dlopen`. It provides a daemonless workflow for packaging binaries into OCI images, making it suitable for use cases where static linking is not possible or when quick, reproducible builds are needed without Docker.

## What's Changed

## Fixes

- Automate crates.io publishing with OIDC trusted publishing, and fix the logo so it renders on the crates.io page. ([#66](https://github.com/schubydoo/scratchsmith/pull/66))
