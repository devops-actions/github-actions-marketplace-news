---
title: Lingo.Dev AI Localization
date: 2026-06-16 15:54:04 +00:00
tags:
  - lingodotdev
  - GitHub Actions
draft: false
repo: https://github.com/lingodotdev/lingo.dev
marketplace: https://github.com/marketplace/actions/lingo-dev-ai-localization
version: lingo.dev0.137.0
dependentsNumber: "100"
actionType: Composite
---


Version updated for **https://github.com/lingodotdev/lingo.dev** to version **lingo.dev@0.137.0**.

- This action is used across all versions by **100** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lingo-dev-ai-localization) to find the latest changes.

## What's Changed

### Minor Changes

- [#2111](https://github.com/lingodotdev/lingo.dev/pull/2111) [`854fae0`](https://github.com/lingodotdev/lingo.dev/commit/854fae00ee180620abeb4c8654703121ce7aad57) Thanks [@cherkanovart](https://github.com/cherkanovart)! - Add `lingo.dev run --estimate`: print the approximate cost of pending translations and exit without translating. The CLI computes the same change delta as a regular run, sends per-locale character counts to the new `/process/estimate` endpoint, and prints a per-locale cost breakdown. The SDK gains a matching `estimate()` method.

### Patch Changes

- Updated dependencies [[`854fae0`](https://github.com/lingodotdev/lingo.dev/commit/854fae00ee180620abeb4c8654703121ce7aad57)]:
  - @lingo.dev/_sdk@0.17.0
  - @lingo.dev/_compiler@0.12.6
