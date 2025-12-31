---
title: AIsbom Security Scanner
date: 2025-12-31 13:08:17 +00:00
tags:
  - Lab700xOrg
  - GitHub Actions
draft: false
repo: https://github.com/Lab700xOrg/aisbom
marketplace: https://github.com/marketplace/actions/aisbom-security-scanner
version: v0.4.1
dependentsNumber: "0"
---


Version updated for **https://github.com/Lab700xOrg/aisbom** to version **v0.4.1**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aisbom-security-scanner) to find the latest changes.

## Action Summary

AIsbom is a security and compliance scanner tailored for Machine Learning artifacts. It automates the detection of malware risks, license violations, and supply chain vulnerabilities by performing deep binary introspection on serialized model files (e.g., `.pt`, `.pkl`, `.safetensors`). The tool provides comprehensive risk assessments in standard SBOM formats (SPDX and CycloneDX), supports remote scanning of hosted models, and detects configuration drift to ensure the integrity and compliance of AI projects.

## Release notes

This release introduces powerful new compliance and drift detection features, along with standardized output formats.

## 🚀 New Features

*   **Diff Command (`aisbom diff`)**:
    *   Compare two SBOMs to detect silent regressions (risk increases, license changes, hash drift).
    *   **CI/CD Integration**: Automatically exits with code `1` if critical regressions are found, functioning as a quality gate.
*   **SPDX 2.3 Support**:
    *   New `--format spdx` option generates industry-standard SPDX 2.3 JSON artifacts.
    *   Fully compliant with ISO/IEC 5962:2021.
*   **Enhanced Safety Heuristics**:
    *   Improved detection of malicious patterns in pickle files (e.g., specific `posix.system` and `subprocess` calls).
*   **CLI Telemetry**:
    *   The "Visualize this report" link now includes version and source tracking to help us improve the platform.

## 🛠 Improvements

*   **Output Standardization**: Unified the "Visualize this report" panel behavior, ensuring it appears consistently for both CycloneDX (default) and SPDX formats.
*   **Cleaner Terminal Output**: Links are now masked behind clickable text (`👉 Open Secure Viewer`) to reduce visual clutter.
*  Corrected README.md
