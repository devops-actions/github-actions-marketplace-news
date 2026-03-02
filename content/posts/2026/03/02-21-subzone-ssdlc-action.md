---
title: AI SSDLC Security Suite
date: 2026-03-02 21:30:04 +00:00
tags:
  - subzone
  - GitHub Actions
draft: false
repo: https://github.com/subzone/ssdlc-action
marketplace: https://github.com/marketplace/actions/ai-ssdlc-security-suite
version: v1.1.0
dependentsNumber: "1"
actionType: Docker
---


Version updated for **https://github.com/subzone/ssdlc-action** to version **v1.1.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-ssdlc-security-suite) to find the latest changes.

## Action Summary

The AI SSDLC Security Suite GitHub Action provides comprehensive security scanning for Secure Software Development Lifecycle (SDLC) processes, integrating tools for SAST, secret detection, software composition analysis (SCA), infrastructure-as-code (IaC) security, and container scanning. It leverages AI for triage, fix suggestions, and STRIDE threat modeling, automating security assessments across multiple layers to identify vulnerabilities, suggest fixes, and streamline security workflows. This action simplifies security management by eliminating tooling setup, providing centralized reporting, and enhancing risk mitigation with AI-driven insights.

## Release notes

## What's Changed
* Feat/license validation management by @subzone in https://github.com/subzone/ssdlc-action/pull/3
* Update AI model version to claude-sonnet-4-6 in configuration and scr… by @subzone in https://github.com/subzone/ssdlc-action/pull/9
* feat: publish Docker image to GHCR and wire artifact upload for ssdlc-studio by @subzone in https://github.com/subzone/ssdlc-action/pull/10
* security: replace Ed25519 public key placeholder with real key by @subzone in https://github.com/subzone/ssdlc-action/pull/11
* fix: always run AI triage + repo-wide threat modeling fallback by @subzone in https://github.com/subzone/ssdlc-action/pull/12
* feat: add GitHub Models provider + fix github-token input by @subzone in https://github.com/subzone/ssdlc-action/pull/13
* ci: switch self-scan to GitHub Models provider by @subzone in https://github.com/subzone/ssdlc-action/pull/14
* ci: add models: read permission for GitHub Models AI by @subzone in https://github.com/subzone/ssdlc-action/pull/15
* fix: reduce token usage for GitHub Models 8k input limit by @subzone in https://github.com/subzone/ssdlc-action/pull/16
* security: remove nodejs/npm/wget/unzip — eliminate CRITICAL CVEs from image by @subzone in https://github.com/subzone/ssdlc-action/pull/17
* security: apt-get upgrade + pip/setuptools bump — fix remaining 14 HIGH CVEs by @subzone in https://github.com/subzone/ssdlc-action/pull/19
* feat: add trivy-ignore-unfixed option — fix self-scan CI for won't-fix CVEs by @subzone in https://github.com/subzone/ssdlc-action/pull/20
* fix: .trivyignore for Go stdlib CVEs in bundled tooling (Gitleaks/Trivy/gh) by @subzone in https://github.com/subzone/ssdlc-action/pull/21
* feat: release workflow for proper semver image versioning by @subzone in https://github.com/subzone/ssdlc-action/pull/22
* fix: dispatch Build & Push explicitly after tag push (GITHUB_TOKEN restriction) by @subzone in https://github.com/subzone/ssdlc-action/pull/23


**Full Changelog**: https://github.com/subzone/ssdlc-action/compare/v1.0.2...v1.1.0
