---
title: Downstream Breakage Radar
date: 2026-07-09 22:33:39 +00:00
tags:
  - Tahiram32
  - GitHub Actions
draft: false
repo: https://github.com/Tahiram32/downstream-breakage-radar
marketplace: https://github.com/marketplace/actions/downstream-breakage-radar
version: v0.5.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Tahiram32/downstream-breakage-radar** to version **v0.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/downstream-breakage-radar) to find the latest changes.

## What's Changed

## The Enterprise Upgrade (v0.5.0) 🚀

This major update adds powerful compliance, customization, and deprecation lifecycle controls for developers and organizations.

### 🌟 New Features

- **⚠️ Deprecation Checker** — When a public function or class is removed, the tool checks the base branch to see if it was marked with a deprecation warning first. Pre-deprecated removals are downgraded to `medium` severity; surprise removals stay `high`.
- **🛡️ SARIF Output (`--format sarif`)** — Export results in standardized SARIF JSON format for integration with GitHub's native Security / Code Scanning dashboard.
- **📝 API Changelog Generator (`--changelog`)** — Generates a clean `breakage-radar-changelog.md` listing every public addition, removal, and signature change across Python, Go, and JS/TS files.
- **⚙️ In-Manifest Configuration** — Configure ignored paths, public directories, and severity overrides directly inside `pyproject.toml` or a `breakage-radar.json` file — no CLI flags required.

### 📦 Install / Upgrade

```bash
pip install --upgrade downstream-breakage-radar
```

### 🔧 Usage

```yaml
- name: Scan for breaking changes
  uses: Tahiram32/downstream-breakage-radar@v0.5.0
  with:
    base-ref: origin/main
    format: markdown
    fail-on: high
    changelog: true
```

### 📄 Docs

Full documentation and configuration reference: https://tahiram32.github.io/downstream-breakage-radar/
