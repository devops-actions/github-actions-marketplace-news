---
title: nod AI Compliance Gatekeeper
date: 2026-01-17 06:24:57 +00:00
tags:
  - mraml
  - GitHub Actions
draft: false
repo: https://github.com/mraml/nod
marketplace: https://github.com/marketplace/actions/nod-ai-compliance-gatekeeper
version: v1.9.0
dependentsNumber: "?"
---


Version updated for **https://github.com/mraml/nod** to version **v1.9.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nod-ai-compliance-gatekeeper) to find the latest changes.

## Action Summary

**nod** is a platform-agnostic, rule-based linter designed to ensure AI/LLM specifications meet critical security, compliance, and regulatory standards before development begins. It automates the validation of specifications by identifying missing security elements, enforcing compliance rules, and generating audit reports, addressing the "compliance-blind" nature of automated development tools. Key features include directory scanning, compliance reporting, deep validation, automated scaffolding, and integration with security dashboards, providing robust guardrails for pre-development compliance.

## Release notes

Release v1.9.0: The Agentic & Enterprise Update

This release represents a significant leap forward in capabilities, transforming nod from a single-file linter into a comprehensive compliance platform capable of handling distributed documentation and integrating with modern AI workflows.

🚀 Key Features

Distributed Compliance (Directory Scanning):

nod can now scan entire directories (e.g., nod docs/).

Aggregates compliance evidence from multiple files into a single "Virtual Monolith."

Verifies requirement coverage across distributed specs (e.g., Security controls in security.md, Architecture in arch.md).

Tracks exactly which file satisfied a requirement in the audit log.

Deep Validation Engine:

Field Pattern Matching: Validate specific values using regex (e.g., ensure Retention Period is numeric).

Structure Validation: Enforce document structure by requiring specific subsections via must_contain.

Cross-Reference Validation: Ensure traceability between documents (e.g., verifying every Threat-X maps to a Control-X).

Requirement Modes: New mode configuration allows enforcing rules in every file (in_all_files) vs. just once per project (at_least_one).

Agentic Workflow Integration:

Context Export: Generate system prompts for AI agents (Cursor, Windsurf, Ralph) via --export cursor or --export windsurf.

Auto-Fix (--fix): Automatically appends missing compliance sections to a nod-compliance.md file (for directories) or the file itself.

Agent-Friendly Outputs: JSON attestations now include specific remediation summaries tailored for LLM consumption.

Enterprise Governance:

Signed Baselines (--freeze/--verify): Lock compliance state to a nod.lock file and detect drift in CI/CD.

Integrity Signing: Cryptographically sign audit artifacts with HMAC-SHA256 when NOD_SECRET_KEY is present.

Compliance Reporting: New --output compliance format generates executive-style summaries with % completion metrics.

Security & Stability:

Strict SSL: Enforced hostname and certificate validation for remote rule fetching.

Resource Protection: Added file size limits (5MB) and network timeouts to prevent DoS.

SARIF v2.1.0: Full support for GitHub Advanced Security dashboards with security severity scoring.

📦 Updated Rule Packs

EU AI Act: Updated for high-risk system classification and documentation requirements.

NIST AI RMF: Full mapping to Govern, Map, Measure, Manage functions.

OWASP LLM Top 10: Defense rules for prompt injection, data leakage, and model theft.

Security Baseline: Standard encryption and access control requirements.

🚦 Upgrade Guide

# Update via pip (once published)
pip install --upgrade nod-linter

# Update GitHub Action
uses: mraml/nod@v1.9.0

