---
title: Structured MADR Validator
date: 2026-04-10 06:32:21 +00:00
tags:
  - zircote
  - GitHub Actions
draft: false
repo: https://github.com/zircote/structured-madr
marketplace: https://github.com/marketplace/actions/structured-madr-validator
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/zircote/structured-madr** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/structured-madr-validator) to find the latest changes.

## Action Summary

Structured MADR is a GitHub Action and template system designed to enhance the documentation of architectural decisions by integrating machine-readable metadata, risk assessments, and compliance tracking. It automates the creation and management of structured decision records, enabling better tooling integration, explicit relationships between decisions, and audit trails for regulatory compliance. This solves challenges in traditional ADR formats by providing programmatic access to decision data and supporting comprehensive option evaluations.

## What's Changed

## Configurable Body Structure

The validator now supports fully configurable body structure via the `schema.body` key, making it adaptable to custom ADR formats while maintaining structured-madr defaults.

### Highlights

- **Configurable Sections** — Define required sections, optional sections, subsections, title patterns, and option heading requirements directly in the JSON schema's `body` key
- **Backward Compatible** — Falls back to structured-madr defaults when no `body` key is present
- **Code Block Awareness** — Fixes false-positive heading detection inside fenced code blocks
- **CITATION.cff** — Added academic citation metadata

### Dependency Updates

| Package | From | To |
|---------|------|----|
| astro | 5.17.2 | 6.1.3 |
| @astrojs/starlight | 0.37.6 | 0.38.2 |
| eslint | 9.39.2 | 10.2.0 |
| ajv | 8.17.1 | 8.18.0 |
| glob | 11.1.0 | 13.0.6 |
| yaml | 2.8.2 | 2.8.3 |

### CI Updates

- actions/checkout v4 -> v6
- actions/setup-node v4 -> v6
- actions/upload-artifact v6 -> v7
- actions/download-artifact v6 -> v8.0.1
- actions/deploy-pages v4 -> v5
- withastro/action v5 -> v6

### Full Changelog

https://github.com/zircote/structured-madr/compare/v1.1.0...v1.2.0

