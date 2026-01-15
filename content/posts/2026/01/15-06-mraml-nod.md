---
title: nod AI Compliance Gatekeeper
date: 2026-01-15 06:02:00 +00:00
tags:
  - mraml
  - GitHub Actions
draft: false
repo: https://github.com/mraml/nod
marketplace: https://github.com/marketplace/actions/nod-ai-compliance-gatekeeper
version: v1.8.0
dependentsNumber: "?"
---


Version updated for **https://github.com/mraml/nod** to version **v1.8.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nod-ai-compliance-gatekeeper) to find the latest changes.

## Action Summary

**nod** is a rule-based linter designed to ensure AI/LLM specifications comply with critical security and regulatory standards before development begins. It automates the detection of missing compliance elements, risk assessments, and vulnerabilities at the design phase, acting as a pre-development gatekeeper for agentic workflows and AI-driven processes. Key capabilities include multi-file compliance scanning, detailed reporting, auto-fixing missing elements, and exporting rules to constrain AI behavior, providing deterministic guardrails for secure and compliant AI system design.

## Release notes

# v1.8.0: Distributed Compliance & Deep Validation

This release introduces "Distributed Compliance," allowing organizations to validate requirements across a folder of specification documents rather than a single monolith. It also adds "Deep Validation" capabilities, enabling regex checks on field values and cross-referencing between documents (e.g., ensuring Threats map to Controls).

## 🚀 New Features
* **Directory Scanning:** Run `nod docs/` to validate an entire document set.
* **Cross-Reference Validation:** Ensure traceability between specs (e.g., `Threat-1` <-> `Control-1`).
* **Field Pattern Matching:** Validate values like "Retention: 30 days" via regex.
* **Requirement Modes:** Enforce rules in `all_files` vs `at_least_one`.
