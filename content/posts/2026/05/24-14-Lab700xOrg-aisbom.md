---
title: AIsbom Security Scanner
date: 2026-05-24 14:16:59 +00:00
tags:
  - Lab700xOrg
  - GitHub Actions
draft: false
repo: https://github.com/Lab700xOrg/aisbom
marketplace: https://github.com/marketplace/actions/aisbom-security-scanner
version: v1.0.4
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Lab700xOrg/aisbom** to version **v1.0.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aisbom-security-scanner) to find the latest changes.

## Action Summary

AIsbom is a security and compliance scanner specifically designed for Machine Learning artifacts. It automates the detection of malware risks, security vulnerabilities, and legal license violations within serialized model files (e.g., `.pt`, `.pkl`, `.safetensors`) using deep binary introspection, going beyond traditional SBOM tools that only analyze dependency files. The action supports industry-standard SBOM formats like SPDX and CycloneDX, offering robust auditing for both online and air-gapped environments.

## What's Changed

### What's new
* **Disable Rich Auto-Highlighting**: Fixed a visual formatting bug where Rich's default Console parser automatically colorized path-like substrings, IP addresses, and numbers inside plain f-strings (e.g. coloring parts of "aisbom 1.0.4" or "(CycloneDX v1.6)" cyan). Setting `highlight=False` ensures CLI output displays exactly as authored, while manual Rich formatting markup tags remain supported.
* **Upgraded Dependencies**: Integrates the 5 recently merged Dependabot dependency and security updates (including `click`, `torch`, `packaging`, `typer`, and `pyinstaller`).

### What's not changing
All core scanner rules, exit codes, SBOM output schemas, and command signatures are identical to v1.0.3.

