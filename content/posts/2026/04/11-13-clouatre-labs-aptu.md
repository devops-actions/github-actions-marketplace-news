---
title: Aptu Triage
date: 2026-04-11 13:40:39 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.3.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.3.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered triage utility designed to automate and enhance open-source software (OSS) issue management and code review processes. It specializes in providing precise AI-driven insights such as issue triage, pull request analysis, security scanning, and changelog generation by using context-specific prompts tailored for code quality tasks. This tool streamlines workflows, reduces manual effort, and integrates seamlessly with GitHub Actions and various AI providers to support efficient project maintenance.

## What's Changed

## What's Changed

### Bug Fixes
- **Release:** Dereference annotated tag to commit SHA for floating tag update (#1090)
- **Release:** Reduce redundant API calls and remove dead condition (#1091)
- **Core:** Replace unwrap antipatterns and fix stale doc comments (#1098)

### Performance
- **Prompts:** Compress `.md` prompt files and remove CoT directive, reducing prompt sizes (~30% smaller) (#1103)
- **Bench:** Prompt compression benchmark with before/after char measurement and quality smoke-test (#1102, #1104, #1105)

### Refactoring
- **Core:** Wire `should_skip_file`, move `decode_content` to test-only (#1101)

### Chores
- Bump rmcp 1.2→1.4, schemars 1.0→1.2, code-analyze-core 0.3→0.4 (#1106)

### Docs
- Fix stale versions, missing providers, tool count, and FFI field docs (#1099)
- Update AGENTS.md for v0.3.0 patterns (#1095)

**Full changelog:** https://github.com/clouatre-labs/aptu/compare/v0.3.0...v0.3.1
