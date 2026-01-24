---
title: Veritensor AI Model Security Scanner
date: 2026-01-24 21:40:44 +00:00
tags:
  - ArseniiBrazhnyk
  - GitHub Actions
draft: false
repo: https://github.com/ArseniiBrazhnyk/Veritensor
marketplace: https://github.com/marketplace/actions/veritensor-ai-model-security-scanner
version: v1.3.1
dependentsNumber: "?"
---


Version updated for **https://github.com/ArseniiBrazhnyk/Veritensor** to version **v1.3.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/veritensor-ai-model-security-scanner) to find the latest changes.

## Action Summary

Veritensor is a zero-trust security tool designed to analyze and secure AI models throughout the supply chain. It automates the detection of malicious code, ensures model authenticity through cryptographic verification, and enforces compliance with licensing terms. Key capabilities include deep static analysis of AI model formats (e.g., Pickle, PyTorch, Keras), identity verification against Hugging Face registries, license compliance checks, and CI/CD integration for seamless deployment.

## Release notes

# 🚀 Veritensor v1.3.1: Python Wheels & Granular Control

This release focuses on expanding format support and improving CI/CD flexibility based on community feedback.

## 🔥 New Features

*   **📦 Python Wheel Support (.whl)**
    Veritensor now scans `.whl` packages. It inspects `setup.py` and internal scripts for suspicious patterns (secrets, obfuscation) and recursively scans any embedded Pickle files (Thanks to u/ResponsibleTruck4717 for the suggestion!).

*   **🎛️ Granular CLI Overrides**
    Replaced the blunt `--force` flag with precise controls for CI/CD pipelines:
    *   `--ignore-license`: Allows deployment of models with restrictive licenses.
    *   `--ignore-malware`: Forces deployment even if threats are found (Use with caution) (Thanks to @patrakov for the suggestion!).

*   **📝 Externalized Signatures & Expanded Rules**
    *   Security rules are now decoupled into `signatures.yaml` for easier updates.
    *   **New Heuristics:** Added detection for modern SSH keys (`ed25519`, `ecdsa`) and Windows PuTTY keys (`.ppk`) to catch credential theft attempts (Thanks to @patrakov for the suggestion!).

## 📦 Upgrade

```bash
pip install --upgrade veritensor
