---
title: Dependency Support Policy
date: 2026-07-14 08:12:05 +00:00
tags:
  - isaac-cf-wong
  - GitHub Actions
draft: false
repo: https://github.com/isaac-cf-wong/dependency-support-policy-action
marketplace: https://github.com/marketplace/actions/dependency-support-policy
version: v0.2.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action and CLI tool manage **rolling minimum-supported versions** for Python projects. It evaluates the Scientific Python SPEC 0 support policy against package release history to raise dependency lower bounds and the `requires-python` floor accordingly, while preserving existing constraints and comments in `pyproject.toml`. The action supports both standalone use and integration into workflows, making it a valuable tool for maintaining project dependencies.
---


Version updated for **https://github.com/isaac-cf-wong/dependency-support-policy-action** to version **v0.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dependency-support-policy) to find the latest changes.

## Action Summary

This GitHub Action and CLI tool manage **rolling minimum-supported versions** for Python projects. It evaluates the Scientific Python SPEC 0 support policy against package release history to raise dependency lower bounds and the `requires-python` floor accordingly, while preserving existing constraints and comments in `pyproject.toml`. The action supports both standalone use and integration into workflows, making it a valuable tool for maintaining project dependencies.

## What's Changed

## [0.2.0](https://github.com/isaac-cf-wong/dependency-support-policy-action/compare/v0.1.1..v0.2.0) - 2026-07-13

### 🚀 Features

- Expose the CLI as a pre-commit hook (#24) - ([67c09f6](https://github.com/isaac-cf-wong/dependency-support-policy-action/commit/67c09f68141f83263e684ee456b167a8e06d7765))

### ⚙️ Miscellaneous Tasks

- *(deps)* Update dependency mypy to >=2.3.0 (#25) - ([450e0f1](https://github.com/isaac-cf-wong/dependency-support-policy-action/commit/450e0f1dc90d5d5241b042117ab332bb35b107f9))
- Serialize support floor update runs (#23) - ([75cff0c](https://github.com/isaac-cf-wong/dependency-support-policy-action/commit/75cff0c2be63f607d68a10a79174591fb67a6a40))
---

**Contributing**: Contributions are welcome! See the [Contributing Guide](https://github.com/isaac-cf-wong/dependency-support-policy-action/blob/main/CONTRIBUTING.md).

**Questions?** Open an issue on [GitHub](https://github.com/isaac-cf-wong/dependency-support-policy-action/issues).
