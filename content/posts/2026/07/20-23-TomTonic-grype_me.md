---
title: grype_me
date: 2026-07-20 23:11:52 +00:00
tags:
  - TomTonic
  - GitHub Actions
draft: false
repo: https://github.com/TomTonic/grype_me
marketplace: https://github.com/marketplace/actions/grype_me
version: v1.3.18-release
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  This GitHub Action automates the scanning of project dependencies and vulnerabilities using the latest Grype database. It provides a simple interface to scan repositories, container images, directories, or SBOMs, generating detailed reports and badges that can be used in READMEs. The action is designed to be lightweight and fast, leveraging pre-downloaded databases to speed up vulnerability scans compared to installing Grype during each run.
---


Version updated for **https://github.com/TomTonic/grype_me** to version **v1.3.18-release**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/grype_me) to find the latest changes.

## Action Summary

This GitHub Action automates the scanning of project dependencies and vulnerabilities using the latest Grype database. It provides a simple interface to scan repositories, container images, directories, or SBOMs, generating detailed reports and badges that can be used in READMEs. The action is designed to be lightweight and fast, leveraging pre-downloaded databases to speed up vulnerability scans compared to installing Grype during each run.

## What's Changed

# v1.3.18-release

## Source Code Updates

None. No Go module, Go toolchain, or Dockerfile *base image tag* changes in this release — only a digest refresh of the already-current `golang:1.26.5-bookworm` build stage (Debian point-release rebuild, same Go version).

## CI Updates

- Bumped GitHub Actions used in this repository's own workflows: `actions/checkout` v7.0.0 → v7.0.1, `actions/setup-go` v6.5.0 → v7.0.0, `actions/setup-python` v6.3.0 → v7.0.0, `github/codeql-action` v4.37.0 → v4.37.1.
  - `actions/setup-go` v7 and `actions/setup-python` v7 migrate to ESM internally and now require GitHub Actions runner v2.327.1 or later; this only affects how this repository's own CI executes and has no effect on consumers of the `grype_me` action itself.
  - `actions/checkout` v7.0.1 is a minor point release on top of the pull-request-target/fork-checkout hardening already shipped in v7.0.0 (introduced in the previous release); it adds small fixes (safer handling of the "unsafe PR checkout" opt-in default, stricter branch-name whitespace trimming, escaping of values passed to `git config --unset`). No CVE is associated with this point release.
- Refreshed the `golang:1.26.5-bookworm` build-stage image digest (routine upstream rebuild; Go version unchanged).
- Updated the `platformdirs` Python dependency (used by the yamllint CI tooling) 4.10.0 → 4.10.1.

## Changed Behavior

None.

## New Features

None.

**Full Changelog**: https://github.com/TomTonic/grype_me/compare/v1.3.17-release...v1.3.18-release
