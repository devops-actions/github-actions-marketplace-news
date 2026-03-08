---
title: grype_me
date: 2026-03-08 21:21:40 +00:00
tags:
  - TomTonic
  - GitHub Actions
draft: false
repo: https://github.com/TomTonic/grype_me
marketplace: https://github.com/marketplace/actions/grype_me
version: v1.3.9-release
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/TomTonic/grype_me** to version **v1.3.9-release**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/grype_me) to find the latest changes.

## Action Summary

The `grype_me` GitHub Action leverages Anchore Grype to scan project supply chains for known vulnerabilities in source code dependencies, container images, directories, or SBOM files. It automates the generation of Shields.io badges and detailed vulnerability reports, facilitating ongoing security monitoring and enabling nightly scans of the latest releases. Key features include pre-downloaded vulnerability databases for faster execution, configurable build failure thresholds based on severity, and integration with GitHub Gists for dynamic badge updates.

## Release notes

## What's Changed
* Security fix + hardening of runtime Container image
  - Switch to scratch-based image
  - Remove external dependencies (git binary replaced by native go implementation)
  - Drop privileges from root (default GitHub user for actions) to normal user
* Security update in tool chain. See release notes of Go v1.26.1 under https://go.dev/doc/devel/release#go1.26.minor
* Re-release for correct numbering

**Full Changelog**: https://github.com/TomTonic/grype_me/compare/v1.3.2-release...v1.3.9-release
