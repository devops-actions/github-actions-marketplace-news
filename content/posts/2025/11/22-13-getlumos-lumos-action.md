---
title: LUMOS Generate
date: 2025-11-22 13:06:05 +00:00
tags:
  - getlumos
  - GitHub Actions
draft: false
repo: https://github.com/getlumos/lumos-action
marketplace: https://github.com/marketplace/actions/lumos-generate
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/getlumos/lumos-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lumos-generate) to find the latest changes.

## Release notes

## 🎉 LUMOS GitHub Action v1.0.0

First stable release of the LUMOS GitHub Action for automated schema generation and validation in CI/CD pipelines.

### ✨ Features

- **Auto-install LUMOS CLI** - Supports any version from crates.io
- **Schema Validation** - Validate `.lumos` schemas before generation
- **Code Generation** - Generate Rust + TypeScript code automatically
- **Drift Detection** - Detect differences between generated and committed files
- **PR Comments** - Automatic PR comments with diff summaries
- **Configurable** - Multiple inputs for customization

### 📦 Quick Start

```yaml
- uses: actions/checkout@v4
- uses: getlumos/lumos-action@v1
  with:
    schema: 'schemas/**/*.lumos'
```

### 📋 Inputs

| Input | Description | Default |
|-------|-------------|---------|
| `schema` | Path to schema files (supports globs) | Required |
| `check-only` | Only validate, do not generate | `false` |
| `version` | LUMOS CLI version to install | `latest` |
| `working-directory` | Working directory for commands | `.` |
| `fail-on-drift` | Fail if drift detected | `true` |
| `comment-on-pr` | Post PR comment with results | `true` |

### 📊 Outputs

- `schemas-validated` - Number of schemas validated
- `schemas-generated` - Number of schemas generated
- `drift-detected` - Whether drift was detected
- `diff-summary` - Summary of differences

### 📚 Documentation

- [README](https://github.com/getlumos/lumos-action#readme)
- [LUMOS Website](https://lumos-lang.org)
- [Main Repository](https://github.com/getlumos/lumos)

### 🔗 Links

- [Report Issue](https://github.com/getlumos/lumos/issues)
- [Discussions](https://github.com/getlumos/lumos/discussions)
- [Documentation](https://lumos-lang.org/tools/github-action)

---

**Full Changelog**: https://github.com/getlumos/lumos-action/commits/v1.0.0
