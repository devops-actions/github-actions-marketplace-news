---
title: Install bashunit
date: 2026-06-17 07:26:49 +00:00
tags:
  - TypedDevs
  - GitHub Actions
draft: false
repo: https://github.com/TypedDevs/bashunit
marketplace: https://github.com/marketplace/actions/install-bashunit
version: 0.40.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/TypedDevs/bashunit** to version **0.40.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-bashunit) to find the latest changes.

## What's Changed


## ✨ Improvements
- `--test-timeout <seconds>` flag and `BASHUNIT_TEST_TIMEOUT` env var to abort a test that runs longer than N seconds, mark it failed and continue. Disabled by default; no external `timeout` needed, works on Bash 3.2+ (#721)

## 🐛 Bug Fixes
- A non-zero test exit no longer leaks into later tests in the same file (per-test exit code is now reset)
- Coverage now counts backslash line-continuation lines as covered (#722)
- Spying/mocking the `printf` builtin no longer breaks coverage collection: the buffer is flushed with `builtin printf` (#724)

## 🛠️ Changes
- URLs now point to the new primary domain `bashunit.com` (old `bashunit.typeddevs.com` redirects)
- Docs site deploys to GitHub Pages on the `bashunit.com` custom domain (`deploy-gh-pages.yml`)

### Removed
- Weekly-downloads chart on the docs homepage (non-portable data source)


## 👥 Contributors
- @Chemaclass
- @truffle-dev

## Checksum
SHA256: `0ee0474803b6e88e7dfa4f4c2486ea8f8e53fd8324134a9fe604ec3df8b5e72c`

**Full Changelog:** [0.39.1...0.40.0](https://github.com/TypedDevs/bashunit/compare/0.39.1...0.40.0)

