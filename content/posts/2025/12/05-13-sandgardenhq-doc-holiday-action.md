---
title: Doc Holiday Action
date: 2025-12-05 13:12:27 +00:00
tags:
  - sandgardenhq
  - GitHub Actions
draft: false
repo: https://github.com/sandgardenhq/doc-holiday-action
marketplace: https://github.com/marketplace/actions/doc-holiday-action
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/sandgardenhq/doc-holiday-action** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/doc-holiday-action) to find the latest changes.

## Release notes

# Doc Holiday Action v1.0.1 🎉

Automatically generate release notes and documentation from your commits using doc.holiday's AI—no more manual changelog maintenance.

## What It Does

Trigger doc.holiday to write release notes and update your documentation directly from your GitHub workflows. Just ship code and let the AI handle the docs.

## Why You Want This

- **Zero Documentation Debt**: Every release and merge can auto-generate docs
- **Smart Context Awareness**: Automatically extracts release tags, PR descriptions, and commit ranges
- **Flexible as Hell**: Manual mode for scheduled updates, custom ranges, or one-off requests
- **Fire-and-Forget**: Non-blocking execution keeps your CI fast

## Quick Start

```yaml
on:
  release:
    types: [published]

jobs:
  docs:
    runs-on: ubuntu-latest
    steps:
      - uses: sandgardenhq/doc-holiday-action@v1
        with:
          api-token: ${{ secrets.DOC_HOLIDAY_TOKEN }}
          event-type: release
```

Done. Your release notes write themselves.

✅ Smart event detection (releases & PR merges)
✅ Full manual control when you need it
✅ Retry logic with exponential backoff


Ship code. Doc Holiday writes the docs. Get back to building.

---

**Docs:** [README](https://github.com/sandgardenhq/doc-holiday-action#readme)
**Issues:** [GitHub Issues](https://github.com/sandgardenhq/doc-holiday-action/issues)
**Full Changelog**: https://github.com/sandgardenhq/doc-holiday-action/compare/v1.0.0...v1.0.1
