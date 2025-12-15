---
title: llm-cost
date: 2025-12-15 13:16:55 +00:00
tags:
  - Rul1an
  - GitHub Actions
draft: false
repo: https://github.com/Rul1an/llm-cost
marketplace: https://github.com/marketplace/actions/llm-cost
version: v1.3.0
dependentsNumber: "?"
---


Version updated for **https://github.com/Rul1an/llm-cost** to version **v1.3.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/llm-cost) to find the latest changes.

## Release notes

# 📣 Announcement: FinOps Validation Suite (v1.3.0)

**"FinOps-as-Code" is now Enterprise Ready.**

We are proud to announce the release of **llm-cost v1.3.0**, introducing the **FinOps Validation Suite**. This release transforms `llm-cost` from a developer tool into a trusted financial instrument, capable of audit-grade cost validation.

## 🎯 The Problem
Data Engineers and Platform Teams often struggle with:
*   **Drift**: "Why is the bill 5% higher than the estimate?"
*   **Opacity**: "Which models caused the variance?"
*   **Compliance**: "Can we trust this data for chargeback?"

## 🛡️ The Solution: FinOps Validation Suite
We have implemented a rigorous, multi-tier testing infrastructure that runs on every change to the codebase.

### 1. P0 & P1 Certification (`finops_p0`, `finops_p1`)
Every commit is validated against strict FinOps criteria:
*   ✅ **Determinism**: Zero-bit variance in output generation.
*   ✅ **Schema Integrity**: Validates input/output against FOCUS v1.1 specs.
*   ✅ **PII Guard**: Ensures no Personal Identifiable Information leaks into billing reports.
*   ✅ **Scale**: Verified up to **1M rows** and **2000+ unique cardinality**.

### 2. FinOps Reports in CI/CD  📊
No more digging through console logs.
Every Pull Request now generates a **Cost Integrity Card** directly in GitHub, reporting:
*   **Drift (BPS)**: Exact variance vs. reference.
*   **Audit Hash**: SHA256 of the calculation logic.

![FinOps Report Example](docs/images/finops-report-example.png)

### 3. Fail-Fast Policy
We have adopted a strict **Fail-Fast** policy for `calibrate`. Using corrupt or mismatched billing data will now trigger an immediate exit (Code 2), preventing "garbage-in/garbage-out" scenarios in your data pipeline.

## 🚀 Get Started
The suite is active by default.
For Platform Engineers, integrate the reporting step:

```yaml
- name: Generate Audit Report
  run: python3 tools/finops/render_report.py
```

*Build trust in your AI spend.*

