---
title: Lingo.Dev AI Localization
date: 2025-07-11 16:58:31 +00:00
tags:
  - lingodotdev
  - GitHub Actions
draft: false
repo: https://github.com/lingodotdev/lingo.dev
marketplace: https://github.com/marketplace/actions/lingo-dev-ai-localization
version: lingo.dev/_compiler0.7.0
dependentsNumber: "66"
---


Version updated for **https://github.com/lingodotdev/lingo.dev** to version **@lingo.dev/_compiler@0.7.0**.
- This action is used across all versions by **66** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lingo-dev-ai-localization) to find the latest changes.

## Release notes

### Minor Changes

-   [#997](https://github.com/lingodotdev/lingo.dev/pull/997) [`bd9538a`](https://github.com/lingodotdev/lingo.dev/commit/bd9538ac6eba0ffc91ffc1fef5db6366c13e9e06) Thanks [@VAIBHAVSING](https://github.com/VAIBHAVSING)! - ### Whitespace Normalization Fix

    -   Improved `normalizeJsxWhitespace` logic to preserve leading spaces inside JSX elements while removing unnecessary formatting whitespace and extra lines.
    -   Ensured explicit whitespace (e.g., `{" "}`) is handled correctly without introducing double spaces.
    -   Added targeted tests (`jsx-content-whitespace.spec.ts`) to verify whitespace handling.
    -   Cleaned up unnecessary debug/test files created during development.

