---
title: AIsbom Security Scanner
date: 2026-05-04 06:27:34 +00:00
tags:
  - Lab700xOrg
  - GitHub Actions
draft: false
repo: https://github.com/Lab700xOrg/aisbom
marketplace: https://github.com/marketplace/actions/aisbom-security-scanner
version: v0.9.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Lab700xOrg/aisbom** to version **v0.9.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aisbom-security-scanner) to find the latest changes.

## Action Summary

AIsbom is a security and compliance scanning tool tailored for Machine Learning artifacts, enabling deep binary introspection of model files (e.g., `.pt`, `.pkl`, `.safetensors`, `.gguf`) to detect malware risks and legal license violations embedded in serialized weights. It automates the generation of software bills of materials (SBOMs) in industry-standard formats (SPDX 2.3 and CycloneDX) while offering both local and air-gapped scanning capabilities. This action addresses security, compliance, and transparency challenges in AI/ML workflows, providing actionable insights and shareable SBOM reports for auditing and collaboration.

## What's Changed

### What's new

**Shareable SBOM URLs** — Instantly generate a secure, hosted viewer link for your SBOM by appending the `--share` flag to your scan.

* **Privacy-first**: Includes a strict confirmation prompt before uploading, unless explicitly bypassed with `--share-yes` for CI/CD pipelines.
* **Telemetry**: Added `cli_share_created` event tracking the `has_share_yes` parameter to measure bypass usage.
* **Safe Empty Scans**: Automatically aborts upload if the target path is empty and no artifacts or dependencies are discovered.
* **Documentation**: Added a new "Share Your SBOM" section to the README and updated the Telemetry & Privacy section to reflect the opt-in upload behavior (data retained for 30 days).

### What's not changing

Scanner behavior, exit codes, output formats — all identical to v0.8.x.

Telemetry behavior remains the same as v0.8.0.

