---
title: RSOLV Test-First AI Security Fixes
date: 2026-01-09 05:46:47 +00:00
tags:
  - RSOLV-dev
  - GitHub Actions
draft: false
repo: https://github.com/RSOLV-dev/rsolv-action
marketplace: https://github.com/marketplace/actions/rsolv-test-first-ai-security-fixes
version: v3.8.15
dependentsNumber: "3"
---


Version updated for **https://github.com/RSOLV-dev/rsolv-action** to version **v3.8.15**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rsolv-test-first-ai-security-fixes) to find the latest changes.

## Action Summary

RSOLV is a GitHub Action designed to automate the detection, validation, and remediation of security vulnerabilities in code. It generates failing tests to prove the presence of vulnerabilities, applies AI-powered fixes to resolve them, and ensures long-term protection by retaining the tests as regression safeguards. This action simplifies security workflows by integrating seamlessly with existing testing frameworks and providing actionable, validated results.

## Release notes

## RFC-095: Claude Agent SDK Migration

This release consolidates 7 legacy Claude Code adapters into a single unified `ClaudeAgentSDKAdapter`.

### What's New

- **Unified Adapter**: Single `ClaudeAgentSDKAdapter` replaces 7 fragmented adapters
- **Structured Outputs**: Zod schema validation replaces regex JSON extraction
- **Feature Flag Rollback**: FunWithFlags integration for instant rollback via credential vending API
- **Programmatic Hooks**: `canUseTool` and `PostToolUse` for security and observability

### Feature Flag Support

The credential vending API now returns `feature_flags`:
```json
{
  "credentials": {...},
  "feature_flags": {
    "use_legacy_claude_adapter": false,
    "enable_session_forking": false
  }
}
```

### Rollback Procedure

If issues occur, enable the legacy adapter instantly via SQL (no restart needed):
```sql
UPDATE fun_with_flags_toggles
SET enabled = true
WHERE flag_name = 'use_legacy_claude_adapter';
```

### Migration Notes

- Legacy adapters moved to `src/ai/adapters/deprecated/`
- Will be removed after 2 stable releases
- Git integration (`GitSolutionResult` interface) unchanged

### Documentation

- RFC-095: Claude Agent SDK Migration
- ADR-040: Claude Agent SDK Unified Adapter

🤖 Generated with [Claude Code](https://claude.com/claude-code)
