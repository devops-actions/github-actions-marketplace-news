---
title: grype_me
date: 2026-08-28 17:43:37 +00:00
tags:
  - TomTonic
  - GitHub Actions
draft: false
repo: https://github.com/TomTonic/grype_me
marketplace: https://github.com/marketplace/actions/grype_me
version: v1.3.21-release
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  This GitHub Action, `grype_me`, automates the scanning of dependencies to detect vulnerabilities using Anchore Grype. It provides a quick and efficient way to scan repositories, container images, or directories for known security issues by leveraging pre-downloaded vulnerability data within a Docker image. The action generates detailed reports and shields.io badges, which can be linked directly from Markdown text in the README. Users can configure various options such as scan mode, fail build behavior, and output format to suit their needs.
---


Version updated for **https://github.com/TomTonic/grype_me** to version **v1.3.21-release**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/grype_me) to find the latest changes.

## Action Summary

This GitHub Action, `grype_me`, automates the scanning of dependencies to detect vulnerabilities using Anchore Grype. It provides a quick and efficient way to scan repositories, container images, or directories for known security issues by leveraging pre-downloaded vulnerability data within a Docker image. The action generates detailed reports and shields.io badges, which can be linked directly from Markdown text in the README. Users can configure various options such as scan mode, fail build behavior, and output format to suit their needs.

## What's Changed

# v1.3.21-release

## Architectural Changes

- **Migrated to Go 1.27** (from 1.26.6). Building and testing `grype_me` now requires a Go 1.27+ toolchain.
- **Adopted `encoding/json/v2`**, newly available in the standard library without `GOEXPERIMENT=jsonv2` as of Go 1.27, across `gist.go`, `scanner.go`, `types.go`, and their tests. Streaming JSON now goes through `json.UnmarshalRead`/`json.MarshalWrite` instead of `json.NewDecoder`/`json.NewEncoder`.
- **Test suite migrated to Go 1.27's `httptest.NewTestServer`** in `gist_test.go`: the mock GitHub Gist API server is now bound to the test's lifecycle (in-memory fake network, auto-closed when the test ends) instead of manually created via `httptest.NewServer` + `defer server.Close()`.
- Applied `go fix`-driven idiom cleanups: a C-style index loop in `git.go`'s tag-version parser became `for i := range nums`; a manual `strings.Index`/slice split in `gist.go`'s URL-stripping helper became `strings.Cut`.

## Changed Behavior

- The `db.status` field in the internal `GrypeOutput` JSON struct dropped its `omitempty` tag as part of the `json/v2` migration. This has no observable effect on parsing — struct-typed fields were never treated as "empty" under either JSON implementation — but is a cleanup of a previously ineffective tag.

## Source Code Updates

- Go toolchain **1.26.6 → 1.27.0** (major version). Go 1.27 is Go's regular six-month feature release, not itself billed as a security release; the fixes already backported into 1.26.6 in the previous release cycle (module sum-database/GOSUMDB tile-verification bypass, `encoding/xml` stack exhaustion, `net/http` header-timeout gap, `net/url` quadratic path resolution) are included as a baseline. I found no CVEs specific to the 1.27.0 release beyond those already covered.
- `github.com/skeema/knownhosts` (indirect, via `go-git`'s SSH known-hosts handling) 1.3.2 → 1.3.3. I could not find published release notes for this version; treating it as a routine maintenance bump.

## CI Updates

- Docker build-stage base image bumped to `golang:1.27.0-bookworm` (with a follow-up digest-only refresh of the same tag).
- `github/codeql-action` v4.37.7 → v4.37.9.
- `docker/setup-buildx-action` v4.2.0 → v4.3.0.
- `step-security/harden-runner` v2.20.1 → v2.21.0.
- Python tooling: `platformdirs` (yamllint CI dependency) 4.11.3 → 4.11.5.
- Refreshed the self-referential `TomTonic/grype_me` action digest pin used in this repository's own dogfooding workflow.

## New Features

None — this release is an internal toolchain/idiom modernization; observable action behavior for consumers is unchanged.

