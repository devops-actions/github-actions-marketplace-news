---
title: RSOLV Test-First AI Security Fixes
date: 2026-01-10 13:11:33 +00:00
tags:
  - RSOLV-dev
  - GitHub Actions
draft: false
repo: https://github.com/RSOLV-dev/rsolv-action
marketplace: https://github.com/marketplace/actions/rsolv-test-first-ai-security-fixes
version: v3.8.19
dependentsNumber: "3"
---


Version updated for **https://github.com/RSOLV-dev/rsolv-action** to version **v3.8.19**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rsolv-test-first-ai-security-fixes) to find the latest changes.

## Action Summary

RSOLV is a GitHub Action designed to automate the detection, validation, and fixing of security vulnerabilities in code. It identifies vulnerabilities using robust security patterns, generates failing tests to prove their existence, and applies AI-driven fixes that ensure tests pass, providing verifiable solutions. By integrating seamlessly with existing testing frameworks, it simplifies vulnerability management, eliminates false positives, and ensures long-term regression protection.

## Release notes

## Changes

- **RSOLV_FORCE_SDK_ADAPTER=true**: Forces SDK adapter (for periodic compatibility testing)
- **RSOLV_FORCE_LEGACY_ADAPTER=true**: Forces legacy adapter (emergency override)

These environment variables override the FunWithFlags feature flag, enabling:
- Weekly automated tests of SDK Docker compatibility
- Emergency fallback without database changes

## SDK Docker Status

The Claude Agent SDK still has container compatibility issues ([#14464](https://github.com/anthropics/claude-code/issues/14464)).
Legacy adapter remains enabled via `use_legacy_claude_adapter=true` feature flag.

## Periodic Testing

See `examples/workflows/test-sdk-adapter-periodic.yml` for automated weekly compatibility testing.
