---
title: Allure Report Publisher with History (GH Pages)
date: 2025-11-20 05:12:23 +00:00
tags:
  - velychkod
  - GitHub Actions
draft: false
repo: https://github.com/velychkod/allure-report-with-history
marketplace: https://github.com/marketplace/actions/allure-report-publisher-with-history-gh-pages
version: v1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/velychkod/allure-report-with-history** to version **v1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/allure-report-publisher-with-history-gh-pages) to find the latest changes.

## Release notes

**📊 Allure Report Publisher with History (GH Pages)** automates the generation and deployment of Allure reports to a specified branch, preserving previous reports and optionally generating an `index.html` with links to report history. Works on Windows and Linux with Node.js.

---

## ✨ Key Features
- 📝 **Generate and publish Allure reports** to GitHub Pages  
- 🗂 **Preserve previous reports** with configurable history retention  
- 📑 **Optional `index.html`** with links to prior reports for easy navigation  
- ⚙️ **Seamless GitHub Actions integration**  

---

## 🗂 Inputs

| Input | Description | Required | Default |
|-------|-------------|----------|---------|
| `allure-results-path` | Path to Allure results directory | Yes | - |
| `deploy-branch` | Branch to publish Allure reports | Yes | - |
| `reports-to-keep` | Number of reports to keep in archive | No | `20` |
| `gen-index` | Whether to generate index.html with links to previous reports | No | `true` |
| `gh-pages-url` | Base URL where reports are hosted | No | - |
| `git-user-name` | Git user name for commits | No | `github-actions` |
| `git-user-email` | Git user email for commits | No | `actions@github.com` |
| `report-name` | Custom name for the report | No | `Allure Report MM/DD/YYYY` |

---

## 🚀 Usage Example

```yaml
name: Allure Report Example
on:
  workflow_dispatch:

jobs:
  generate-and-deploy-report:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v3

      - name: Download Allure results artifact
        uses: actions/download-artifact@v4
        with:
          name: allure-results
          path: ./allure-results

      - name: Generate and deploy Allure report
        uses: velychkod/allure-report-with-history@v1.0
        with:
          allure-results-path: './allure-results'
          deploy-branch: 'allure-reports'
          reports-to-keep: 10
          gen-index: true
          gh-pages-url: 'https://username.github.io/repo-name'
          report-name: 'My Test Suite'
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

---

## 🔧 Notes

- Ensure the **deploy branch exists** and **GitHub Pages is enabled** for it
- `GITHUB_TOKEN` must have **write permissions** to push reports
