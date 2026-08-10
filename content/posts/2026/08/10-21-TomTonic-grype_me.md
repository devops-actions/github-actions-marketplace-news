---
title: grype_me
date: 2026-08-10 21:23:43 +00:00
tags:
  - TomTonic
  - GitHub Actions
draft: false
repo: https://github.com/TomTonic/grype_me
marketplace: https://github.com/marketplace/actions/grype_me
version: v1.3.19-release
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  The grype_me GitHub Action automates the scanning of project supply chains for known vulnerabilities using Anchore Grype. It provides a simple, quick way to generate detailed badge reports and integrates seamlessly with GitHub workflows. The action runs on a daily basis to update security badges, ensuring developers are aware of potential vulnerabilities in their projects.
---


Version updated for **https://github.com/TomTonic/grype_me** to version **v1.3.19-release**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/grype_me) to find the latest changes.

## Action Summary

The grype_me GitHub Action automates the scanning of project supply chains for known vulnerabilities using Anchore Grype. It provides a simple, quick way to generate detailed badge reports and integrates seamlessly with GitHub workflows. The action runs on a daily basis to update security badges, ensuring developers are aware of potential vulnerabilities in their projects.

## What's Changed

# v1.3.19-release

## Source Code Updates

- **`cloudflare/circl` 1.6.4 → 1.6.5.** A large security-hardening release (43 merged PRs) for CIRCL, the crypto library pulled in transitively via `go-git`'s SSH support. No CVE ID has been assigned, but the release fixes multiple denial-of-service-style panics on malformed input (invalid points, malformed signatures across several primitives), tightens input validation (rejecting non-canonical encodings, trailing signature data), and improves constant-time behavior in FourQ arithmetic. Recommended even though `grype_me` does not call CIRCL directly.
- **`go-git/go-git/v5` 5.19.1 → 5.19.2** and **`go-git/go-billy/v5` 5.9.0 → 5.9.1.** Routine patch releases. The path-validation issue that let a crafted repository write outside the intended checkout target, including the `.git` directory (CVE-2026-45571), was already fixed in v5.19.1 and remains fixed here — it is not new to this release. `go-billy` v5.9.1 backports `golang.org/x/net`/`golang.org/x/text` security updates into its own build; `grype_me`'s `go.sum` already pinned newer versions of both, so this bump has no additional effect on this project's build.

## CI Updates

- Hardened the GHCR image cleanup and publish workflows (`cleanup-ghcr.yml`, `publish-ghcr.yml`):
  - `publish-ghcr.yml` now validates that a release tag is well-formed semver (`vX.Y.Z` or `vX.Y.Z-release`) before deriving the moving `v1`/`v1.2`/`v1.2.3` tags, and fails the workflow with a clear error instead of silently publishing a malformed tag.
  - `cleanup-ghcr.yml` now also removes GHCR image versions whose tags don't match any recognized scheme (e.g. leftovers from a mistyped release like `v.1.2.3`), and turns individual deletion failures into a failed workflow run (previously only logged as a warning) so cleanup problems are no longer silently swallowed.
- Routine Actions/tooling bumps: `step-security/harden-runner` v2.20.0 → v2.20.1, `docker/login-action` v4.4.0 → v4.6.0, `github/codeql-action` v4.37.1 → v4.37.6, `ossf/scorecard-action` v2.4.3 → v2.4.4; Python tooling `platformdirs` 4.10.1 → 4.11.1, `packaging` 26.2 → 26.3; refreshed `golang:1.26.5-bookworm` build-stage digest (no Go version change).

## Changed Behavior

- Maintainers publishing a release with an invalid version tag will now see the `publish-ghcr` workflow fail fast rather than push a mistagged image; the next scheduled cleanup run will also retroactively remove any previously published images with malformed tags.

## New Features

None.

**Full Changelog**: https://github.com/TomTonic/grype_me/compare/v1.3.18-release...v1.3.19-release
