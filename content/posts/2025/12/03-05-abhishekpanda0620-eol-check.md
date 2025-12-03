---
title: EOL Check
date: 2025-12-03 05:26:17 +00:00
tags:
  - abhishekpanda0620
  - GitHub Actions
draft: false
repo: https://github.com/abhishekpanda0620/eol-check
marketplace: https://github.com/marketplace/actions/eol-check
version: v1.3.0
dependentsNumber: "?"
---


Version updated for **https://github.com/abhishekpanda0620/eol-check** to version **v1.3.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eol-check) to find the latest changes.

## Release notes

## New Feature — GitHub Action Integration

This release introduces the **official GitHub Action** for `eol-check`, enabling automated End-of-Life (EOL) version detection directly within GitHub CI workflows.

You can now add the action to your workflow:

```yaml
- name: Run EOL Check
  uses: abhishekpanda0620/eol-check@v1
```

---

## 🔍 What’s New

### ✔ GitHub Action Support

* Added `action.yml` for GitHub Marketplace
* Clean CLI integration for workflow automation
* Supports scanning dependencies or service definitions
* Optional HTML report output

### ✔ Improved Packaging

* Updated project structure and dist output
* Ensured clean, minimal published package

### ✔ Documentation Updates

* Added workflow examples
* Improved README clarity

---

## 📦 Usage Example

```yaml
name: EOL Check
on: [push]

jobs:
  run-eol-check:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Run EOL Check
        uses: abhishekpanda0620/eol-check@v1
        with:
          path: "./"
          format: "table"
```

---

## 🛠 Under the Hood

* Node.js workflow support
* Dependency scanner improvements
* Better EOL product mapping & evaluator engine
* Smarter caching for API calls

---

## 🏁 Notes

This release establishes the foundation for:

* Additional report formats
* Custom EOL data sources
* Enhanced caching strategies
* Marketplace-oriented badges and metadata additions

