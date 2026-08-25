---
title: Scratchsmith
date: 2026-08-25 05:59:33 +00:00
tags:
  - schubydoo
  - GitHub Actions
draft: false
repo: https://github.com/schubydoo/scratchsmith
marketplace: https://github.com/marketplace/actions/scratchsmith
version: v0.1.3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The action is designed to package dynamically linked glibc ELF binaries into minimal `FROM scratch` OCI images. It resolves shared libraries using `ld.so`, stages necessary glibc components, and assembles a non-root image with reproducible layers. The primary purpose of Scratchsmith is to handle binaries that require glibc functionality but cannot be statically linked, providing an alternative packer for such cases.
---


Version updated for **https://github.com/schubydoo/scratchsmith** to version **v0.1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/scratchsmith) to find the latest changes.

## Action Summary

The action is designed to package dynamically linked glibc ELF binaries into minimal `FROM scratch` OCI images. It resolves shared libraries using `ld.so`, stages necessary glibc components, and assembles a non-root image with reproducible layers. The primary purpose of Scratchsmith is to handle binaries that require glibc functionality but cannot be statically linked, providing an alternative packer for such cases.

## What's Changed

## Features

### Homebrew tap — `brew install schubydoo/scratchsmith/scratchsmith` ([#30](https://github.com/schubydoo/scratchsmith/pull/30))

Scratchsmith is now installable via a Homebrew tap (Linux amd64/arm64, from the signed
release tarballs). The formula (`Formula/scratchsmith.rb`) is regenerated from each
release's cosign-verified `checksums.txt` by `packaging-bump.yml`, which opens an
auto-merging PR; that merge dispatches the [tap](https://github.com/schubydoo/homebrew-scratchsmith)
to mirror it — so `brew upgrade` tracks releases hands-free.
