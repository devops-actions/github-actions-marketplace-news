---
title: grype_me
date: 2026-03-08 13:32:41 +00:00
tags:
  - TomTonic
  - GitHub Actions
draft: false
repo: https://github.com/TomTonic/grype_me
marketplace: https://github.com/marketplace/actions/grype_me
version: v1.3.5-release
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/TomTonic/grype_me** to version **v1.3.5-release**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/grype_me) to find the latest changes.

## Action Summary

The `grype_me` GitHub Action automates vulnerability scanning for project supply chains using Anchore Grype. It scans repositories, container images, directories, or SBOMs, identifies known vulnerabilities, and generates detailed reports and badges for tracking security status. This action streamlines nightly scans, provides faster performance with a pre-downloaded vulnerability database, and supports configurable thresholds for build failure based on severity.

## Release notes

## Security Update
* Removed orphaned runtime git binary dependency in repo scans
* Security fix + hardening of runtime Container image
* Security update in tool chain. See release notes of Go v1.26.1 under https://go.dev/doc/devel/release#go1.26.minor

**Full Changelog**: https://github.com/TomTonic/grype_me/compare/v1.3.2-release...v1.3.5-release
