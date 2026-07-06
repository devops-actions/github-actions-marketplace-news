---
title: AI TestGen — Generate & Review Tests
date: 2026-07-06 15:17:23 +00:00
tags:
  - zer0dayf
  - GitHub Actions
draft: false
repo: https://github.com/zer0dayf/ai-testgen
marketplace: https://github.com/marketplace/actions/ai-testgen-generate-review-tests
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/zer0dayf/ai-testgen** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-testgen-generate-review-tests) to find the latest changes.

## What's Changed

First-class **Rust** support.

- New `rust` preset: Cargo.toml auto-detection, `src/**/*.rs`, integration tests in top-level `tests/`, run with `cargo test --test {stem}`, public-API-only guidance.
- New `{stem}` placeholder for `run_cmd` (needed by compiled-language runners like cargo).
- Optional per-language `extra_rules` injected into the generation prompt.

Consumers on `@v1` get this automatically; pin `@v1.1.0` for an immutable version.
