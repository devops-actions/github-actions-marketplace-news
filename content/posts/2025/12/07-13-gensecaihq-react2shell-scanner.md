---
title: React2Shell Guard - CVE-2025-55182 Scanner
date: 2025-12-07 13:04:04 +00:00
tags:
  - gensecaihq
  - GitHub Actions
draft: false
repo: https://github.com/gensecaihq/react2shell-scanner
marketplace: https://github.com/marketplace/actions/react2shell-guard-cve-2025-55182-scanner
version: v1.1.1
dependentsNumber: "?"
---


Version updated for **https://github.com/gensecaihq/react2shell-scanner** to version **v1.1.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/react2shell-guard-cve-2025-55182-scanner) to find the latest changes.

## Release notes

## GitHub Marketplace Action Ready! 🎉

This release makes the GitHub Action ready for the Marketplace with enhanced features:

### New Action Features
- **Job Summary** - Rich markdown summary in GitHub Actions UI
- **PR Comments** - Automatic comments on PRs with vulnerability findings
- **SARIF Upload** - One-click upload to GitHub Security tab
- **Multiple Scan Types** - Support for repo, SBOM, and container scanning
- **Ignore Paths** - Exclude paths from scanning

### Usage

```yaml
- uses: gensecaihq/react2shell-scanner@v1
  with:
    path: '.'
    format: sarif
    upload-sarif: true
    add-pr-comment: true
    fail-on-vuln: true
```

### Action Inputs
| Input | Description | Default |
|-------|-------------|---------|
| `path` | Path to scan | `.` |
| `scan-type` | Type: `repo`, `sbom`, `container` | `repo` |
| `format` | Output: `text`, `json`, `sarif` | `text` |
| `fail-on-vuln` | Fail if vulnerable | `true` |
| `upload-sarif` | Upload SARIF | `false` |
| `add-pr-comment` | Comment on PRs | `false` |

### Publishing to Marketplace
To publish this action to GitHub Marketplace:
1. Go to the release page
2. Click "Edit"
3. Check "Publish this Action to the GitHub Marketplace"
4. Select category: "Security"
5. Save

## Upgrade
```bash
npm install react2shell-guard@latest
```
