---
title: compose-lint
date: 2026-04-18 13:56:30 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.3.6
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.3.6**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

**compose-lint** is a security-focused linter for Docker Compose files that identifies and flags potential misconfigurations based on OWASP and CIS security standards. It automates the detection of issues such as unsafe Docker socket mounts, overexposed ports, and privilege escalation risks, helping users ensure their container configurations are secure before deployment. This lightweight and opinionated tool provides fast, zero-configuration analysis to improve the security posture of Docker Compose setups.

## What's Changed


### Fixed

- Dockerfile `FROM` lines now pin the multi-arch OCI image index
  (manifest list) digest instead of the per-arch amd64 manifest
  digest. The 0.3.5 per-arch pins resolved correctly during the
  single-arch `docker-smoke` but failed in `docker-publish`'s arm64
  leg because the pinned digest referenced an amd64-only manifest.

### Changed

- `docker-smoke` in `publish.yml` now runs as a native-runner matrix
  across `linux/amd64` (`ubuntu-latest`) and `linux/arm64`
  (`ubuntu-24.04-arm`). Each leg builds the image without QEMU
  emulation and runs the full fixture battery (version check, clean,
  insecure, SARIF). Multi-arch regressions — per-arch digest pins,
  native-wheel mismatches, future base-image surprises — now fail
  the release-gate instead of surfacing mid-release during the
  production Docker Hub push.
- New `ci.yml` job `dockerfile-digests` runs
  `scripts/verify-dockerfile-digests.sh` on every PR. The script
  HEADs each `FROM ...@sha256:` in the Dockerfile and fails if the
  `Content-Type` is not an OCI image index or Docker manifest list
  — catching the per-arch-pin mistake at review time rather than
  release time. No image pulls; ~1s total.

No CLI, config, or finding-shape changes. Exit codes (0/1/2) are
preserved. A Compose file that passed on 0.3.5 passes identically on
0.3.6.


