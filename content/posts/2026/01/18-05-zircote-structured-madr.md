---
title: Structured MADR Validator
date: 2026-01-18 05:50:54 +00:00
tags:
  - zircote
  - GitHub Actions
draft: false
repo: https://github.com/zircote/structured-madr
marketplace: https://github.com/marketplace/actions/structured-madr-validator
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/zircote/structured-madr** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/structured-madr-validator) to find the latest changes.

## Action Summary

Structured MADR is a GitHub Action that enhances Markdown Architectural Decision Records (MADR) by introducing YAML-based machine-readable metadata, structured risk assessments, and compliance tracking through audit sections. It automates and standardizes the documentation of architectural decisions, making them both human-readable and programmatically accessible, while addressing gaps such as risk evaluation, explicit decision relationships, and auditability. This action facilitates better decision management, compliance tracking, and integration with tooling workflows.

## Release notes

## GitHub Action Now Available on Marketplace

Validate your Structured MADR architectural decision records in CI/CD pipelines with a single workflow line.

### Installation

```yaml
- uses: zircote/structured-madr@v1
  with:
    path: docs/decisions
```

### Highlights

- **Shareable GitHub Action** - Validate ADRs in any repository's CI/CD pipeline
- **Comprehensive Validation** - YAML frontmatter schema + body structure validation
- **PR Annotations** - See validation errors directly in pull request diffs
- **Configurable** - Adjust paths, patterns, strictness, and failure behavior

### Features

| Feature | Description |
|---------|-------------|
| Frontmatter Validation | JSON Schema validation using ajv |
| Section Ordering | Validates all 12 required sections in correct order |
| Option Analysis | Checks for Advantages/Disadvantages/Risk Assessment |
| Audit Section | Ensures compliance tracking entries exist |
| GitHub Annotations | Inline errors and warnings in PR reviews |

### Action Inputs

| Input | Default | Description |
|-------|---------|-------------|
| `path` | `docs/decisions` | Directory containing ADR files |
| `pattern` | `**/*.md` | Glob pattern for ADR files |
| `schema` | (built-in) | Custom JSON Schema path |
| `strict` | `false` | Fail on warnings |
| `fail-on-error` | `true` | Fail workflow on errors |

### Project ADRs (Dogfooding)

This release includes exemplar ADRs demonstrating the format:
- **ADR-0001**: Adopt Structured MADR Format for Project Documentation
- **ADR-0002**: Shareable GitHub Action for Structured MADR Validation

### Full Changelog

https://github.com/zircote/structured-madr/compare/v1.0.0...v1.1.0

