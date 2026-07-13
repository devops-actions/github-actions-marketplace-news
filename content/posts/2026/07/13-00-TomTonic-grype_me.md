---
title: grype_me
date: 2026-07-13 00:09:06 +00:00
tags:
  - TomTonic
  - GitHub Actions
draft: false
repo: https://github.com/TomTonic/grype_me
marketplace: https://github.com/marketplace/actions/grype_me
version: v1.3.17-release
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/TomTonic/grype_me** to version **v1.3.17-release**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/grype_me) to find the latest changes.

## What's Changed

# v1.3.17-release

## Source Code Updates

- **Go toolchain updated 1.26.4 → 1.26.5.** This release includes two upstream Go security fixes:
  - **CVE-2026-39822** — `os.Root` symlink escape: on Unix, opening a path ending in `/` inside an `os.Root` could follow a symlink to a location outside the root if the final path component was itself a symlink (e.g. `root.Open("symlink/")` would open `symlink` even though it points outside the root).
  - **CVE-2026-42505** — `crypto/tls` Encrypted Client Hello (ECH) privacy leak.

  `grype_me` does not use `os.Root` or ECH directly, but the fix ships automatically via the toolchain bump and is recommended for all users building or running this action.

- **Indirect dependency refresh** (all transitive via `go-git`, used for repository scanning): `golang.org/x/crypto` 0.52.0 → 0.54.0, `golang.org/x/net` 0.55.0 → 0.57.0, `golang.org/x/sys` 0.46.0 → 0.47.0, `golang.org/x/term` 0.43.0 → 0.45.0, `golang.org/x/text` 0.37.0 → 0.40.0, `cloudflare/circl` 1.6.3 → 1.6.4, `cyphar/filepath-securejoin` 0.6.1 → 0.7.0, `klauspost/cpuid/v2` 2.3.0 → 2.4.0. These are routine patch-level refreshes; no additional CVEs beyond those already remediated in prior releases were identified as fixed specifically within these increments.

## CI Updates

- Bumped GitHub Actions: `actions/checkout` v6.0.3 → v7.0.0, `actions/setup-go` v6.4.0 → v6.5.0, `actions/setup-python` v6.2.0 → v6.3.0, `docker/build-push-action` v7.2.0 → v7.3.0, `docker/login-action` v4.2.0 → v4.4.0, `docker/setup-buildx-action` v4.1.0 → v4.2.0, `golangci-lint-action` v9.2.1 → v9.3.0, `github/codeql-action` v4.36.2 → v4.37.0, `step-security/harden-runner` v2.19.4 → v2.20.0.
- Refreshed base image digests for the `golang:1.26.x-bookworm` build stage and `alpine:3.24` runtime stage in the Dockerfile.
- Updated the `typing-extensions` Python dependency (used by the yamllint tooling) 4.15.0 → 4.16.0.

## Changed Behavior

None.

## New Features

None.

**Full Changelog**: https://github.com/TomTonic/grype_me/compare/v1.3.16-release...v1.3.17-release
