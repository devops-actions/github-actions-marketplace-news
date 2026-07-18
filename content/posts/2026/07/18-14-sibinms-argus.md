---
title: Argus PR Review
date: 2026-07-18 14:19:31 +00:00
tags:
  - sibinms
  - GitHub Actions
draft: false
repo: https://github.com/sibinms/argus
marketplace: https://github.com/marketplace/actions/argus-pr-review
version: v1.2.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Argus is an AI PR reviewer that uses multiple narrow lenses to suggest potential issues and one curator to decide which ones are real. It automates the detection of bugs and security vulnerabilities in pull requests by analyzing them with various models from Anthropic, OpenAI, or other providers. The action integrates seamlessly into GitHub workflows for automated review without requiring separate configuration steps after initial setup.
---


Version updated for **https://github.com/sibinms/argus** to version **v1.2.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/argus-pr-review) to find the latest changes.

## Action Summary

Argus is an AI PR reviewer that uses multiple narrow lenses to suggest potential issues and one curator to decide which ones are real. It automates the detection of bugs and security vulnerabilities in pull requests by analyzing them with various models from Anthropic, OpenAI, or other providers. The action integrates seamlessly into GitHub workflows for automated review without requiring separate configuration steps after initial setup.

## What's Changed

Pin the Action to this tag:

    - uses: sibinms/argus@v1.2.2

## Bug fix

The README told CLI users to `pip install argus-review`. That name is already registered on PyPI by a completely unrelated project ("Local multi-agent technical deliberation tool") — the command would have silently installed someone else's tool. We were never actually published there.

Fixes:
- Renamed the distribution from `argus-review` to **`argus-pr-review`** (matches the Marketplace listing slug, confirmed available on PyPI for when this does get published).
- Until then, the README's CLI Quick Start installs straight from this tagged commit: `pip install "git+https://github.com/sibinms/argus.git@v1.2.2"`.
- Added a troubleshooting note for a Rust/`maturin` build error some environments hit installing litellm's `tokenizers` dependency from source (`--only-binary=:all:` works around it).

No changes to the review pipeline itself.
