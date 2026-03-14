---
title: qualtio SBOM Generator
date: 2026-03-14 21:27:47 +00:00
tags:
  - qualtio
  - GitHub Actions
draft: false
repo: https://github.com/qualtio/SBOM-Generator
marketplace: https://github.com/marketplace/actions/qualtio-sbom-generator
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/qualtio/SBOM-Generator** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qualtio-sbom-generator) to find the latest changes.

## Action Summary

The SBOM Generator GitHub Action automates the creation of Software Bill of Materials (SBOM) for repositories using Syft and uploads it as a workflow artifact. It addresses the need for software supply chain security and compliance with standards such as SLSA, NIST SSDF, and the EU Cyber Resilience Act, while also enabling integration with GitHub's dependency graph. Key capabilities include support for multiple SBOM formats, artifact uploads, and compatibility with tools like OWASP Dependency-Track.

## Release notes

## 🎉 Initial Release

Generate a Software Bill of Materials (SBOM) for your repository using 
[Syft](https://github.com/anchore/syft) and upload it as a workflow artifact 
— in a single step.

Supports SPDX and CycloneDX formats, natively compatible with GitHub's 
Dependency Graph, OWASP Dependency-Track, and EU Cyber Resilience Act requirements.

### Features
- 📦 Generates SBOM in `spdx-json`, `cyclonedx-json`, `cyclonedx-xml` or `github` format
- ⬆️ Uploads SBOM automatically as a workflow artifact
- 🔢 Outputs package count for downstream steps
- 🔧 Configurable Syft version
- 🚨 Optional sanity check: fail if fewer than N packages detected

### Usage
\```yaml
- uses: qualtio/SBOM-Generator@v1
\```

Full documentation in the [README](https://github.com/qualtio/SBOM-Generator#readme).

