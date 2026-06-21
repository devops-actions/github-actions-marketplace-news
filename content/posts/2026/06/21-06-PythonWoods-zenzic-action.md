---
title: Zenzic Documentation Quality Gate
date: 2026-06-21 06:47:55 +00:00
tags:
  - PythonWoods
  - GitHub Actions
draft: false
repo: https://github.com/PythonWoods/zenzic-action
marketplace: https://github.com/marketplace/actions/zenzic-documentation-quality-gate
version: v2.1.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/PythonWoods/zenzic-action** to version **v2.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zenzic-documentation-quality-gate) to find the latest changes.

## What's Changed

## zenzic-action v2.1.0

### ⬆️ Core Upgrade

This release pins the GitHub Action to **Zenzic Core v0.14.0**.

### What's new in Core v0.14.0

- **Z506 MALFORMED_FRONTMATTER**: New rule detecting broken frontmatter delimiters.
- **Z405 infra exemptions**: `robots.txt`, `_redirects`, `CNAME`, `sitemap.xml` auto-exempt.
- **Governance fixes**: JSON and SARIF formatters now correctly apply `per_file_ignores`
  and `directory_policies`. SARIF results in GitHub Advanced Security are now accurate.
- **Breaking**: `[i18n]` config section and Z602 suppressions removed from core.
  Update `.zenzic.toml` before upgrading.

### Usage

```yaml
- uses: PythonWoods/zenzic-action@v2
  with:
    zenzic-version: "0.14.0"
```

---

**Core release notes:** [zenzic v0.14.0](https://github.com/PythonWoods/zenzic/releases/tag/v0.14.0)  
**Full Changelog:** [CHANGELOG.md](https://github.com/PythonWoods/zenzic-action/blob/main/CHANGELOG.md)
