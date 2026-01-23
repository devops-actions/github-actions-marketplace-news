---
title: nod AI Compliance Gatekeeper
date: 2026-01-23 05:57:42 +00:00
tags:
  - mraml
  - GitHub Actions
draft: false
repo: https://github.com/mraml/nod
marketplace: https://github.com/marketplace/actions/nod-ai-compliance-gatekeeper
version: v2.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/mraml/nod** to version **v2.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nod-ai-compliance-gatekeeper) to find the latest changes.

## Action Summary

The **nod AI Spec Compliance Gatekeeper** is a platform-agnostic, rule-based linter designed to ensure that AI and LLM specifications meet critical security and compliance standards before development begins. It automates the detection of missing regulatory elements, enforces structured compliance rules, and provides tools for deep validation, reporting, and gap analysis, effectively addressing compliance blind spots in automated and agentic workflows. Key capabilities include directory scanning, compliance reporting, auto-fixing specifications, integrity signing, and integration with GitHub and GitLab security tools, making it an essential solution for "shift-left" security and specification auditing.

## Release notes

# **Release v2.1.0: Stability & Security Hardening**

This release focuses on critical engineering improvements to ensure **nod** works seamlessly in real-world environments. It addresses key issues with PyPI distribution, large repository performance, and JSON validation logic, while introducing a formal test suite.

## **🔴 Critical Fixes**

* **Fixed "Broken Pip" Installation:** \* Added `MANIFEST.in` and updated the configuration loader to correctly bundle and locate default rule packs (`defaults/*.yaml`). Installing via `pip install nod-linter` now works out-of-the-box.  
* **Smart File Ignoring:**  
  * Implemented `fnmatch` support for `.nodignore`.  
  * Added default exclusions for performance-killing directories like `node_modules`, `venv`, `__pycache__`, `dist`, and `build`.  
* **JSON Validation Logic:**  
  * Fixed a logic flaw where distributed JSON specs were aggregated into text blobs, breaking deep validation. The scanner now correctly parses JSON files individually to support `must_match` field validation.

## **🛡️ Security Hardening**

* **High-Fidelity Secret Detection:** \* Updated the `security_baseline` profile. Replaced the generic "hardcoded credential" placeholder with rigorous regex patterns to detect: \* AWS Access Keys (`AKIA...`) \* OpenAI Secret Keys (`sk-...`) \* Private Key blocks (`-----BEGIN PRIVATE KEY-----`) \* Generic high-entropy assignments (`password = "..."`).

## **✨ Usability Polish**

* **Version Flag:** Added `nod --version` to quickly check the installed release.  
* **Quiet Mode:** Added `nod --quiet` (or `-q`) to suppress banners and success messages, ideal for cleaner CI/CD logs.

## **🏗️ Engineering Maturity**

* **Automated Test Suite:** Introduced `tests/test_core.py` using `unittest` to validate core logic, config loading, and regex engines, preventing future regressions.  
* **Strict Type Hinting:** Enhanced code readability and safety with comprehensive PEP 484 type annotations throughout the codebase.

## **🚦 Upgrade Guide**

```
# Update via pip
pip install --upgrade nod-linter

# Update GitHub Action
uses: mraml/nod@v2.1.0
```

*License: Apache 2.0*


