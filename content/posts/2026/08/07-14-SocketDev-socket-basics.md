---
title: Socket Basics Security Scanner
date: 2026-08-07 14:33:22 +00:00
tags:
  - SocketDev
  - GitHub Actions
draft: false
repo: https://github.com/SocketDev/socket-basics
marketplace: https://github.com/marketplace/actions/socket-basics-security-scanner
version: v3.0.0
dependentsNumber: "8"
actionType: Docker
actionSummary: |
  Socket Basics automates the process of running various security scanners across multiple languages and container images, providing a unified view of findings. It normalizes outputs into Socket's standardized format and delivers results through preferred notification channels, including pull request comments. The tool is configured in the Socket Dashboard and can be easily integrated into GitHub Actions with a scoped API key for secure scanning without requiring any workflow changes.
---


Version updated for **https://github.com/SocketDev/socket-basics** to version **v3.0.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/socket-basics-security-scanner) to find the latest changes.

## Action Summary

Socket Basics automates the process of running various security scanners across multiple languages and container images, providing a unified view of findings. It normalizes outputs into Socket's standardized format and delivers results through preferred notification channels, including pull request comments. The tool is configured in the Socket Dashboard and can be easily integrated into GitHub Actions with a scoped API key for secure scanning without requiring any workflow changes.

## What's Changed

## Summary

**Major release:** Trivy-backed scanning returns, now built and published through Socket's own supply chain ⚡️

### 🐳 Added
- Container image and Dockerfile scanning ([Trivy](https://trivy.dev)) restored in the pre-built GitHub Action and Docker images. Trivy now comes from a **Socket-built distribution** — rebuilt from unmodified upstream source (`v0.73.0`) by Socket's own release pipeline and pinned by digest in the Dockerfiles (`TRIVY_IMAGE` build arg; overridable for builds without registry access).
- End-to-end integration test for the Trivy connector (fixture Dockerfile scan through `--dockerfiles`), plus smoke-test assertions that the bundled `trivy` matches the pinned version and can execute the connector's scan path.
- Reintroduced `latest` and `latest-heavy` floating Docker tag aliases for customers who prefer always receiving the latest Socket Basics releases.
  - **We still recommend pinning an exact version or digest for secure, reproducible pipelines.**
  - Exact version tags remain immutable registry-side.

### 🔄 Changed
- **Behavioral (the reason this is a major):** Trivy-backed scanning was intentionally disabled in the `2.x.x` pre-built images following repeated Trivy supply-chain compromises, and documented as such throughout the project. With this `3.0.0` release, **Trivy is deliberately re-enabled**: configurations that set Trivy parameters (`--images`, `--dockerfiles`, `trivy_vuln_enabled`, …) will begin producing container / Dockerfile findings again. 
  - 🚨 **TL;DR: pipelines that gate on findings should expect new results on the first run after upgrading.**
- OSS toolchain refresh: TruffleHog `v3.96.0`, OpenGrep `v1.26.0` (SAST rule updates may shift findings), uv `v0.12.1`, gosec `v2.28.0`, Go `v1.26.5` (`app_tests`), Socket CLI `v2.6.3` (`Dockerfile.heavy`), and the `socketdev` Python SDK to `v3.5.0` (typed fail-closed batch purl parameters).
  - Runtime bases (`python:3.12`, `node:22`) remain unchanged.
- Dependabot no longer tracks the `aquasecurity/trivy` base image; Trivy updates flow through Socket's release process, never independent bumps.

### 🔧 Fixed
- The `app_tests` image had been unbuildable since the repository layout migration (stale source references, wrong build context, dereferenced `npm` symlinks, corrupt `uv.lock`) — repaired and building in CI again.
- Documentation: removed the now-outdated "temporarily ships without Trivy" notices repo-wide (they described the intentional 2.x posture); APT install instructions now use upstream's `generic` distribution (required since Trivy `v0.72.0`).
  - Warnings against using Trivy `v0.69.4`–`v0.69.6` (the compromised version range) retained for native installs.

**Full Changelog**: https://github.com/SocketDev/socket-basics/compare/v2.2.1...v3.0.0
