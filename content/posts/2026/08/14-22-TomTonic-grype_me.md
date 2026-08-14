---
title: grype_me
date: 2026-08-14 22:18:44 +00:00
tags:
  - TomTonic
  - GitHub Actions
draft: false
repo: https://github.com/TomTonic/grype_me
marketplace: https://github.com/marketplace/actions/grype_me
version: v1.3.20-release
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  This GitHub Action automates the scanning of project dependencies for known vulnerabilities using Anchore Grype, a fast and efficient vulnerability scanner. It supports repository and artifact scans and provides detailed reports with badges generated via GitHub Gist. The action is designed to be easy to use and integrates seamlessly into CI/CD pipelines.
---


Version updated for **https://github.com/TomTonic/grype_me** to version **v1.3.20-release**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/grype_me) to find the latest changes.

## Action Summary

This GitHub Action automates the scanning of project dependencies for known vulnerabilities using Anchore Grype, a fast and efficient vulnerability scanner. It supports repository and artifact scans and provides detailed reports with badges generated via GitHub Gist. The action is designed to be easy to use and integrates seamlessly into CI/CD pipelines.

## What's Changed

# v1.3.20-release

## Source Code Updates

- **Go toolchain updated 1.26.5 → 1.26.6.** This point release fixes 10 security issues; the ones I could confirm from the upstream advisory include:
  - **CVE-2026-56865 / CVE-2026-56864 — `go` command, module sum-database (GOSUMDB) verification.** A flaw in transparency-log tile verification allowed a malicious `GOPROXY` to forge log tiles or return arbitrary content outside the log, letting `go build`/`go mod download` accept unverified, attacker-controlled module content into the local module cache. This is directly relevant to `grype_me`'s own build (the Docker builder stage runs `go mod download`/`go build`) and to any downstream Go project this action scans — recommend rebuilding with this toolchain.
  - **CVE-2026-56859 — `encoding/xml`:** a broken recursion-depth counter allowed the nesting guard to never fire, risking stack exhaustion (DoS) when decoding crafted XML.
  - **CVE-2026-56853 — `net/http`:** `ReadHeaderTimeout` was not applied while probing a new connection for an unencrypted HTTP/2 client preface, allowing a slow/stalled client to hold a connection open past the configured timeout.
  - **CVE-2026-56856 — `net/url`:** quadratic-complexity path resolution could be abused for denial of service on crafted URLs.
  - The remaining fixes in this release touch `crypto/tls`, `encoding/asn1`, `html/template`, and `net`; I could not find individually itemized CVE descriptions for those in the sources available to me, so I'm not attributing specific CVE IDs to them here rather than guessing.
- `golang.org/x/crypto` 0.54.0 → 0.55.0 and `golang.org/x/net` 0.57.0 → 0.58.0 (indirect, via `go-git`): routine version bumps. I found no dedicated golang-announce security tag for either of these specific versions, so treat them as non-security refreshes.

## CI Updates

- Refreshed the `golang` build-stage Docker base image to the `1.26.6-bookworm` tag (carrying the toolchain security fixes above into the container build), after an interim digest-only refresh of the prior `1.26.5-bookworm` tag.
- `github/codeql-action` v4.37.6 → v4.37.7.
- Python tooling: `platformdirs` (used by yamllint CI tooling) 4.11.1 → 4.11.3.
- Refreshed the self-referential `TomTonic/grype_me` action digest pin used for this repository's own dogfooding workflow.

## Changed Behavior

None.

## New Features

None.


**Full Changelog**: https://github.com/TomTonic/grype_me/compare/v1.3.19-release...v1.3.20-release
