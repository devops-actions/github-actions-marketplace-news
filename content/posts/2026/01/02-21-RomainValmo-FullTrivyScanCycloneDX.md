---
title: Full Trivy Scan with CycloneDX SBOM
date: 2026-01-02 21:17:17 +00:00
tags:
  - RomainValmo
  - GitHub Actions
draft: false
repo: https://github.com/RomainValmo/FullTrivyScanCycloneDX
marketplace: https://github.com/marketplace/actions/full-trivy-scan-with-cyclonedx-sbom
version: v1.0.6
dependentsNumber: "?"
---


Version updated for **https://github.com/RomainValmo/FullTrivyScanCycloneDX** to version **v1.0.6**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/full-trivy-scan-with-cyclonedx-sbom) to find the latest changes.

## Action Summary

This GitHub Action provides an automated security analysis for projects by scanning Dockerfiles and dependency files, generating accurate CycloneDX SBOMs (Software Bill of Materials), and enriching them with vulnerability details and metadata. It simplifies the process of identifying vulnerabilities, categorizing components, and producing standardized reports, making it easier to manage security risks and ensure compliance with CycloneDX 1.6 standards. Key functionalities include merging SBOMs intelligently, enriching data with fixed versions and statuses, and generating detailed metadata for advanced reporting.

## Release notes

# Quick Start Guide

## What does this action do?

A GitHub Action that automatically scans your project with Trivy to:
- ✅ Detect all your Dockerfiles and build them
- ✅ Analyze your dependency files (requirements.txt, package.json, etc.)
- ✅ Generate CycloneDX SBOMs for each component
- ✅ Merge all SBOMs into a single file
- ✅ Enrich with vulnerabilities and fixed versions
- ✅ Produce a detailed metadata file

