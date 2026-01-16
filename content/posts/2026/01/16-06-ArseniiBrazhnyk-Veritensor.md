---
title: Veritensor AI Model Security Scanner
date: 2026-01-16 06:00:53 +00:00
tags:
  - ArseniiBrazhnyk
  - GitHub Actions
draft: false
repo: https://github.com/ArseniiBrazhnyk/Veritensor
marketplace: https://github.com/marketplace/actions/veritensor-ai-model-security-scanner
version: v1.3.0
dependentsNumber: "?"
---


Version updated for **https://github.com/ArseniiBrazhnyk/Veritensor** to version **v1.3.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/veritensor-ai-model-security-scanner) to find the latest changes.

## Action Summary

Veritensor is a security platform designed to safeguard AI supply chains by analyzing AI models for threats, authenticity, and compliance. It automates the detection of malicious code, verifies model integrity against trusted registries, and ensures licensing compliance while enabling cryptographic signing for deployment security. This tool simplifies supply chain security management by integrating seamlessly into CI/CD pipelines and supporting formats like Pickle, PyTorch, and Keras.

## Release notes

# 🚀 Veritensor v1.3.0: Deep Scanning, Hybrid Compliance & Enterprise Reporting

This major release hardens the detection engine against obfuscated attacks and introduces industry-standard reporting for enterprise compliance.

## 🔥 New Features

*   **🔍 Deep Archive Inspection (PyTorch Fix)**
    Fixed a critical blind spot in PyTorch model analysis.
    * **The Problem:** PyTorch models (`.bin`, `.pt`) are often Zip archives containing a `data.pkl` file. Previously, scanners treated them as raw streams, missing nested malware.
    * **The Fix:** The engine now automatically detects Zip headers, extracts contents in memory, and recursively scans internal Pickle files.
    * **Validated:** Successfully detects hidden malware in nested archives (tested against known malicious repos like `star23/baller13`).
*   **🧠 Hybrid License Check (File + API)**
    Veritensor now uses a smart fallback mechanism for license verification.
    * **Zero-Trust:** First, it inspects embedded file metadata (Safetensors/GGUF).
    * **API Fallback:** If metadata is missing, it automatically queries the Hugging Face Hub API to fetch the license from the Model Card (requires `--repo`).
     _Benefit_: Drastically reduces "License not found" warnings for valid PyTorch models while maintaining security.
*   **📊 Enterprise Reporting (SBOM & SARIF)**
    * **SARIF Support:** Native integration with GitHub Security Tab (`--sarif`).
    * **CycloneDX SBOM:** Generate software bill of materials for compliance audits (`--sbom`).  
*   **⚡ UX Improvements**
    * Added `veritensor init` command to quickly generate a default configuration file.


---

## 📦 Upgrade

```bash
pip install --upgrade veritensor
```
