---
title: sbomify
date: 2026-01-05 21:20:06 +00:00
tags:
  - sbomify
  - GitHub Actions
draft: false
repo: https://github.com/sbomify/github-action
marketplace: https://github.com/marketplace/actions/sbomify
version: v0.10
dependentsNumber: "24"
---


Version updated for **https://github.com/sbomify/github-action** to version **v0.10**.
- This action is used across all versions by **24** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbomify) to find the latest changes.

## Action Summary

The `sbomify GitHub Action` automates the generation, enrichment, and management of Software Bill of Materials (SBOMs) within CI/CD pipelines. It supports creating SBOMs from various sources such as dependency lockfiles and Docker images, while allowing augmentation with business and package metadata for enhanced traceability and compliance. By streamlining SBOM creation and enabling cryptographic signing and attestation, it helps establish a verifiable chain of trust from source code to final artifacts.

## Release notes

## Changelog v0.10

### New Features

**Upload Plugin Architecture**
- Implement multi-destination upload support via `UPLOAD_DESTINATIONS` environment variable
- Add **Dependency Track** as a new upload destination with `DTRACK_*` prefixed configuration variables
- Support uploading to multiple destinations simultaneously (e.g., `sbomify,dependency-track`)
- sbomify credentials now only required when uploading to sbomify

**Additional Packages Injection**
- Inject packages not captured by lockfile scanning (vendored code, runtime deps, system libraries)
- Auto-detect `additional_packages.txt` convention-based file in working directory
- Support custom file location via `ADDITIONAL_PACKAGES_FILE` environment variable
- Support inline PURLs via `ADDITIONAL_PACKAGES` environment variable (comma or newline separated)
- Merge and deduplicate packages from all sources before injection

**cdxgen Generator**
- Add **cdxgen** as a new SBOM generator (priority 20) with ecosystem-aware scanning
- Best-in-class support for **Java/Maven** (`pom.xml`, `build.gradle`, `gradle.lockfile`)
- Support for Python, JavaScript, Go, Rust, Ruby, Dart, C++, PHP, .NET, Swift, Elixir, Scala, and Docker images
- Run cdxgen from lock file directory for consistent behavior
- Add `--required-only` and `--fail-on-error` flags for stricter builds

**CycloneDX 1.3 Support**
- Add CycloneDX 1.3 schema for validation and output

### Improvements

**PURL Normalization and Sanitization**
- Add PURL normalization to fix common encoding issues (double `@@`, `%40%40`)
- Detect and filter invalid PURLs:
  - File references (local workspace packages)
  - Link references (npm link)
  - Path-based versions
  - Invalid root namespace
  - Missing versions (for ecosystems that require them)
- Extend PURL sanitization to `tools.components` in generated SBOMs
- Add stub components for orphaned dependency graph references

**VCS URL Normalization (SPDX Compliance)**
- Normalize VCS URLs to SPDX-standard format:
  - `scm:git:...` → strips prefix, normalizes inner URL
  - `git@host:path` → `git+https://host/path`
  - Known git hosts (GitHub, GitLab, etc.) → adds `git+` prefix
- Expand allowed URL schemes to include SPDX VCS schemes (`git`, `git+ssh`, `git+https`, `git+http`)
- Recognize 15 known git hosting providers for automatic normalization

**Expanded Lockfile Support**
- Add support for Java: `pom.xml`, `build.gradle`, `build.gradle.kts`, `gradle.lockfile`
- Add support for: `pyproject.toml`, `package.json`, `bun.lock`, `composer.json`, `composer.lock`, `packages.lock.json`, `Package.swift`, `Package.resolved`, `mix.lock`, `build.sbt`, `.terraform.lock.hcl`

**Other Improvements**
- Include schema files in package distribution for offline validation
- Improve validation logging with better error messages
- Extract tool versions from Dockerfile (single source of truth)

### Bug Fixes

- Fix orphaned dependency graph references by creating stub components
- Fix root namespace detection for invalid PURLs
- Fix `_is_invalid_purl` to explicitly handle `None` input
- Include schema files in package distribution
