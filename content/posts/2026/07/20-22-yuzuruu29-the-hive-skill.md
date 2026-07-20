---
title: Install The Hive Skill
date: 2026-07-20 22:54:05 +00:00
tags:
  - yuzuruu29
  - GitHub Actions
draft: false
repo: https://github.com/yuzuruu29/the-hive-skill
marketplace: https://github.com/marketplace/actions/install-the-hive-skill
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Hive Skill is a protocol designed to handle multi-model execution in coding hosts. It automates structured handoffs, evidence rules, safety boundaries, and orchestration presets, ensuring that tasks are completed safely and efficiently. The protocol provides explicit stop conditions and bounded repair cycles, making it suitable for agentic coding agents like Claude Code, Codex, OpenCode, and generic workflows.
---


Version updated for **https://github.com/yuzuruu29/the-hive-skill** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-the-hive-skill) to find the latest changes.

## Action Summary

The Hive Skill is a protocol designed to handle multi-model execution in coding hosts. It automates structured handoffs, evidence rules, safety boundaries, and orchestration presets, ensuring that tasks are completed safely and efficiently. The protocol provides explicit stop conditions and bounded repair cycles, making it suitable for agentic coding agents like Claude Code, Codex, OpenCode, and generic workflows.

## What's Changed

## [0.3.0] — Machine-Readable Protocol and Adapter Conformance

### Added

- Versioned JSON Schemas for HIVE protocol artifacts
- Artifact and bundle validation CLI
- Runtime capability negotiation contract
- Adapter conformance levels and manifests
- Portable `.hive-run` artifact bundle format
- Negative, semantic, and mutation tests
- Cross-runtime live-validation methodology
- Generated adapter conformance report

### Changed

- Protocol, skill, schema, and artifact versions are tracked independently
- JSON Schemas are the canonical source for field names and enums
- Adapters now declare supported protocol versions and tested capabilities
- Examples and conformance fixtures are schema-validated

### Compatibility

- Existing Markdown workflows remain supported
- v0.2.x artifacts can be migrated by adding protocol and run identifiers
- Host-runtime execution and enforcement remain runtime-dependent

This release preserves the project boundary established in v0.2.1: The Hive Skill is a portable orchestration protocol executed by a host runtime. Adapter support is currently structurally validated; no live runtime conformance is claimed.

