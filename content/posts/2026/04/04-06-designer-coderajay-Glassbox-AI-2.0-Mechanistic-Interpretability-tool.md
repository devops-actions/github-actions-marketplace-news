---
title: Glassbox EU AI Act Compliance Audit
date: 2026-04-04 06:11:05 +00:00
tags:
  - designer-coderajay
  - GitHub Actions
draft: false
repo: https://github.com/designer-coderajay/Glassbox-AI-2.0-Mechanistic-Interpretability-tool
marketplace: https://github.com/marketplace/actions/glassbox-eu-ai-act-compliance-audit
version: v4.2.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/designer-coderajay/Glassbox-AI-2.0-Mechanistic-Interpretability-tool** to version **v4.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/glassbox-eu-ai-act-compliance-audit) to find the latest changes.

## Action Summary

Glassbox is an open-source toolkit designed to automate the creation of EU AI Act Annex IV compliance documentation for high-risk AI systems, compatible with both open-source models and proprietary APIs like GPT-4. It simplifies regulatory compliance by generating structured, nine-section technical documentation drafts, while also offering researchers tools to analyze and identify minimal faithful circuits in transformer models for improved interpretability. Key capabilities include multi-framework support, cross-model comparison, and significantly faster performance for mechanistic interpretability tasks.

## What's Changed

**Critical patch — 3 bugs fixed via end-to-end test**

### Fixes

1. **ACDC crash (CRITICAL)**: `AutomatedCircuitDiscovery.discover()` crashed on every call with `TypeError: hook() got an unexpected keyword argument hook`. TransformerLens passes hook point as keyword arg; renamed `hook_ctx` → `hook=None`.

2. **CrossModelReport properties**: `.summary` and `.attribution_table` were plain methods — accessing them returned bound-method objects. Added `@property` decorator to both.

3. **Vault version**: `_VERSION = "3.6.0"` was hardcoded. All compliance reports showed wrong version. Now uses `importlib.metadata.version()` for dynamic lookup.

```bash
pip install glassbox-mech-interp==4.2.1
```
