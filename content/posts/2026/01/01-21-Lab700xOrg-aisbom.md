---
title: AIsbom Security Scanner
date: 2026-01-01 21:10:52 +00:00
tags:
  - Lab700xOrg
  - GitHub Actions
draft: false
repo: https://github.com/Lab700xOrg/aisbom
marketplace: https://github.com/marketplace/actions/aisbom-security-scanner
version: v0.4.2
dependentsNumber: "0"
---


Version updated for **https://github.com/Lab700xOrg/aisbom** to version **v0.4.2**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aisbom-security-scanner) to find the latest changes.

## Action Summary

AIsbom is a security and compliance scanner designed for machine learning (ML) projects. It performs deep binary introspection on model artifacts to detect malware risks and license violations, going beyond traditional tools that only analyze dependency files. By automating tasks like risk assessment, SBOM generation, remote scanning of hosted models, and configuration drift detection, AIsbom enhances the security, compliance, and integrity of AI supply chains.

## Release notes

## 🚀 Features
*   **CLI Version Check**: The CLI now checks for updates in the background and notifies you if a newer version is available.
*   **Ethical Telemetry**: Collects minimal, anonymous usage data (OS, Python version, CI status) to help improve the tool.
    *   *Privacy*: Set `AISBOM_NO_TELEMETRY=1` to completely disable this behavior.
*   **SPDX Support**: The offline viewer now supports SPDX 2.2/2.3 JSON files.

## 🐛 Fixes
*   Fixed CI build failure by synchronizing `poetry.lock`.
*   Improved documentation for the `scan` commands.

## 📦 Installation
```bash
pip install aisbom-cli==0.4.2
