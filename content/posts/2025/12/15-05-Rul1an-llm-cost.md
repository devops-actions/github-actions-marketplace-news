---
title: llm-cost
date: 2025-12-15 05:36:53 +00:00
tags:
  - Rul1an
  - GitHub Actions
draft: false
repo: https://github.com/Rul1an/llm-cost
marketplace: https://github.com/marketplace/actions/llm-cost
version: v1.2.2
dependentsNumber: "?"
---


Version updated for **https://github.com/Rul1an/llm-cost** to version **v1.2.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/llm-cost) to find the latest changes.

## Release notes

### FinOps Validation Suite (Enterprise Compliance)

This release introduces the **FinOps Validation Suite**, ensuring accurate, traceable, and scalable cloud cost allocation for LLMs.

#### 🛡️ Compliance & Guardrails
*   **Fail-Fast Policy**: Defaulting to strict data integrity (Exit Code 2 on corrupt input).
*   **Max Groups Limit**: Enforces cardinality limits (default 100k) to prevent memory explosions.
*   **P0 & P1 Suites**: Comprehensive test coverage for Schema, PII, Unicode, and Duplicate Aggregation.

#### ⚡ Performance & Scale
*   **Nightly Heavy Tests**: Validated against 1M+ row datasets.
*   **Performance Monitoring**: CI gates for time (<30s) and memory (<512MB).

#### 🛠️ Core Enhancements
*   **V2 Estimates Schema**: Supports integer-based  for high-precision billing (/bin/zsh.000001 resolution).
*   **Metadata Lineage**:  now includes SHA256 hashes of inputs for full auditability.
*   **Audit Mode**: New  flag to verify data without processing.

Full Changelog: [v1.2.1...v1.2.2](https://github.com/Rul1an/llm-cost/compare/v1.2.1...v1.2.2)
