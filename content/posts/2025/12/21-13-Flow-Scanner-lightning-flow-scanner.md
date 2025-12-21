---
title: Lightning Flow Scan
date: 2025-12-21 13:11:16 +00:00
tags:
  - Flow-Scanner
  - GitHub Actions
draft: false
repo: https://github.com/Flow-Scanner/lightning-flow-scanner
marketplace: https://github.com/marketplace/actions/lightning-flow-scan
version: action-v2.7.0
dependentsNumber: "0"
---


Version updated for **https://github.com/Flow-Scanner/lightning-flow-scanner** to version **action-v2.7.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lightning-flow-scan) to find the latest changes.

## Action Summary

The Lightning Flow Scanner is a GitHub Action designed to analyze and optimize Salesforce Flows by detecting potential issues such as unsafe contexts, queries in loops, hardcoded IDs, and other common pitfalls. It automates the process of identifying inefficiencies and errors in Flow configurations, helping developers ensure best practices and maintainability. Key capabilities include customizable rules, severity levels, and support for continuous integration workflows.

## Release notes

# Release Notes – Rule Registry Refactor

**Action tag:** action-v2.7.0
**Core tag:** core-v6.12.0
**CLI tag:** v6.12.0
**VSX Version:** v2.6.0

## New in this release: Centralized Rule Registry
- Replaces the old `DefaultRuleStore` / `BetaRuleStore` with a modern `RuleRegistry`.

### Key improvements
- **Cleaner, more maintainable code:** all rules registered explicitly in one place.  
- **Easier to add new rules:** just import and call `registry.register()`.  
- **Full control over rule metadata:** ID, legacy name, beta status.  
- **Encapsulated rule selection logic:** merged/isolated mode, beta handling, config overrides.

## New feature: Rule IDs in configuration
- Use **kebab-case rule IDs** (e.g., `action-call-in-loop`) in config files and `getRules()` for selection and exceptions.  
- **Legacy CamelCase names** (e.g., `ActionCallsInLoop`) still work for full backward compatibility.  

This provides consistent, predictable rule identifiers while preserving all existing configurations.  
No breaking changes to public API or behavior.
