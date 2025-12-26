---
title: Privalyse Security Scan
date: 2025-12-26 05:29:29 +00:00
tags:
  - Privalyse
  - GitHub Actions
draft: false
repo: https://github.com/Privalyse/privalyse-cli
marketplace: https://github.com/marketplace/actions/privalyse-security-scan
version: v0.3.2
dependentsNumber: "?"
---


Version updated for **https://github.com/Privalyse/privalyse-cli** to version **v0.3.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/privalyse-security-scan) to find the latest changes.

## Action Summary

Privalyse is a static analysis tool designed to detect and prevent privacy violations by tracing data flows within applications, identifying PII leaks, hardcoded secrets, and GDPR non-compliance. It automates the detection of sensitive data usage and leaks, offering context-aware insights that go beyond traditional regex-based tools. Key capabilities include secret detection, PII leak prevention, data sovereignty mapping, and specialized checks for AI-driven applications.

## Release notes

### 🚀 New Features
*   **Deep Taint Analysis (JS/TS):** Now uses AST-based tracking to follow variables through the code (Source -> Sink), reducing false positives significantly compared to regex-only approaches.
*   **AI Guardrails:** Enhanced detection for PII leaking into LLM prompts.

### 📚 Documentation
*   **New README:** Complete overhaul with better "Quick Start" and CI/CD integration examples.
*   **Marketplace Ready:** First official release to GitHub Marketplace.

### 🛡️ Security
*   **Zero Data Egress:** The scanner runs 100% locally on the runner. No code is sent to external servers.
