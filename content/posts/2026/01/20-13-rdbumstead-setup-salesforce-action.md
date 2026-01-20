---
title: Setup Salesforce CLI
date: 2026-01-20 13:42:23 +00:00
tags:
  - rdbumstead
  - GitHub Actions
draft: false
repo: https://github.com/rdbumstead/setup-salesforce-action
marketplace: https://github.com/marketplace/actions/setup-salesforce-cli
version: v3.0.0
dependentsNumber: "1"
---


Version updated for **https://github.com/rdbumstead/setup-salesforce-action** to version **v3.0.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-salesforce-cli) to find the latest changes.

## Action Summary

The "Setup Salesforce CLI" GitHub Action provides a fast, reliable, and secure way to configure the Salesforce Command Line Interface (CLI) in CI/CD workflows. It addresses issues like slow setup, non-deterministic installations, and fragile authentication by offering features such as caching, secure auth methods, and support for plugins. Designed for enterprise teams and complex workflows, it enhances efficiency and stability in Salesforce development pipelines.

## Release notes

## 🔒 Production Hardening

This release transforms the action into a bulletproof primitive suitable for foundational CI/CD use.

### Added ➕

- **Invariant Validation** - Mandatory validation step ensures setup integrity:
  - CLI is installed AND functional (not just present on PATH)
  - Authenticated org is reachable (not just auth succeeded)
  - API version is resolved (not just queried)
  - Fails fast with clear violation messages instead of silent partial failures
- **Default Usage Tracking** - New outputs enable enforcement hooks in higher-level workflows:
  - `used_default_node` - Whether default Node.js version (20) was used
  - `used_default_cli_version` - Whether default CLI version (latest) was used
  - `used_default_api_version` - Whether API version was auto-detected (always true currently)
  - Allows CI/CD policies to block deployments that rely on implicit defaults
- **Dry-Run Mode** - New `dry_run` input skips authentication and mutations while validating detection logic:
  - Useful for testing action configuration without consuming org API calls
  - Skips all auth steps but still installs CLI and resolves environment
- **Debug Mode** - New `debug` input placeholder for future verbose output (accepted but not yet implemented)
- **Structured Observability** - New step publishes audit-friendly summary to GitHub Step Summary:
  - Auth method, org type, API version
  - CLI and Node.js versions
  - Default usage warnings
  - Complete list of installed tools and plugins
  - Always runs (even on failure) for post-mortem analysis
- **Forward Compatibility Outputs** - Added outputs to support future v4 modularization:
  - `cli_binary_path` - Absolute path to installed binary (for custom tooling integration)
  - `validated_config` - JSON summary of effective configuration (for auditing/debugging)

### Changed 🔧

- **BREAKING (Intentional)**: Action now fails fast on partial failures
  - Workflows that previously succeeded despite broken CLI or unreachable orgs will now fail
  - This is the correct behavior for a primitive—silent failures are dangerous
  - Example: CLI installed but `sf` command non-functional → now fails instead of succeeding
- **Shell Hardening Enhanced**: All bash steps now use strict error handling:
  - Core steps: `set -euo pipefail` (exit on error, undefined variables, or pipe failures)
  - Optional tooling: `set -eu` + conditional `pipefail` based on `strict` mode
  - Prevents subtle bugs from undefined variables while keeping plugin installs resilient

### Fixed 🐞

- **Hidden Partial Failure Risk**: Action will no longer report success when:
  - CLI installation succeeds but CLI is non-functional
  - Authentication succeeds but org is unreachable
  - Org display succeeds but API version cannot be determined
- **Silent Downgrade Risk**: Default usage is now explicitly tracked and exposed
  - Prevents workflows from unknowingly relying on implicit defaults
  - Enables explicit versioning enforcement in hardened pipelines

### Testing 🧪

- **New Test Workflow**: `test-invariants.yml` validates:
  - Invariant validation catches failures correctly
  - Dry-run mode works without authentication
  - Default tracking outputs are accurate
  - All features work across Linux, macOS, Windows

### Documentation 📖

- **Guaranteed Invariants**: New README section documents the action's contract.
- **Versioning Policy**: Formal semantic versioning governance.
- **Caching Strategy**: Comprehensive documentation of cache behavior.
- **Architecture Documentation**: New `docs/ARCHITECTURE.md` captures design philosophy, current v3 architecture, and future roadmap.

### Why This Matters

This action is designed as a **primitive**, not an application. Primitives must fail loudly and clearly when invariants are violated. Silent partial failures undermine trust in the entire CI/CD pipeline.

Before v3.0.0, it was possible for CLI to install but be non-functional, or auth to succeed but org be unreachable. After v3.0.0, these scenarios fail immediately with actionable error messages.

