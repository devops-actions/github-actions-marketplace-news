---
title: compose-lint
date: 2026-04-24 13:57:23 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.5.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.5.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

The `compose-lint` GitHub Action is a security-focused linter for Docker Compose files that identifies and prevents potentially dangerous misconfigurations before deployment. It automates the process of validating Compose files against best practices and security standards, such as OWASP and CIS benchmarks, providing a fast, opinionated, and zero-configuration way to ensure secure container configurations. Its key features include support for auto-detection of Compose files, thorough security checks, and integration with tools like Docker Scout, Trivy, and Grype for vulnerability scanning.

## What's Changed


### Changed

- Container image strips the `pip` package code and `pip` CLI binaries
  from the runtime venv but keeps pip's `.dist-info` metadata. 0.4.1
  stripped all of it to silence Docker Scout alerts on unreachable pip
  CVEs, but deleting the `.dist-info` also removed the signal SCA
  scanners use to identify pip — making the image appear vuln-free by
  metadata deletion rather than by code removal. Keeping the metadata
  while dropping the code gives honest reporting: scanners still see
  pip and flag CVE-2025-8869 / CVE-2026-1703, and the code that would
  host those CVEs is gone from the runtime layer. The CVEs also remain
  unreachable by execution path — distroless base, no shell, entrypoint
  is `/venv/bin/compose-lint`. The `activate*` shell-script stripping
  from 0.4.1 stays.

### Added

- OpenVEX document (`.vex/compose-lint.openvex.json`) published as a
  release asset alongside the SBOM, Sigstore bundles, and SLSA
  provenance, **and** attached to the container image manifest as a
  cosign in-toto attestation (predicate type `openvex`). Declares the
  known pip CVEs (CVE-2025-8869, CVE-2026-1703) as `not_affected`
  against the container image with justification
  `vulnerable_code_not_present`. Scanners invoked with `--vex` on the
  release asset, or attestation-aware scanners (Docker Scout; Trivy /
  Grype in attestation-discovery modes), render those CVEs as
  non-exploitable rather than either hiding pip or flagging reachable
  risk. New pip CVEs get added to the VEX when verified as covered by
  the same mitigation; CVEs in any actually-reachable code path do
  not.


