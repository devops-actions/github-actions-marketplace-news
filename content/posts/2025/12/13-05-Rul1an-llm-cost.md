---
title: llm-cost
date: 2025-12-13 05:19:02 +00:00
tags:
  - Rul1an
  - GitHub Actions
draft: false
repo: https://github.com/Rul1an/llm-cost
marketplace: https://github.com/marketplace/actions/llm-cost
version: v1.1.2
dependentsNumber: "?"
---


Version updated for **https://github.com/Rul1an/llm-cost** to version **v1.1.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/llm-cost) to find the latest changes.

## Release notes

### v1.1.2: Hardening and Marketplace Integration

**Description**: Promoted action.yml to repository root for Marketplace discovery.

**Changes**

**Determinism:** Implemented RFC 8785-compliant Canonical JSON writer. Output is now strictly lexicographically sorted and compact, ensuring stable hashes across runs.
**Security:** Enforced 8KB line limits and 10MB buffer caps on Minisign verification to mitigate DoS vectors.
**Infrastructure:**
ci-action: Mapped cost increase failures to Exit Code 2 (Gate/Budget) for consistent error handling.
install.sh: Fixed OS/Arch detection and strengthened checksum verification logic.
Release workflow now uses stable major version tags for attestation actions.

Full Changelog: https://github.com/Rul1an/llm-cost/compare/v1.1.0...v1.1.2
