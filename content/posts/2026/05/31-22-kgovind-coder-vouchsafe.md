---
title: Vouchsafe AI Inventory Scan
date: 2026-05-31 22:16:04 +00:00
tags:
  - kgovind-coder
  - GitHub Actions
draft: false
repo: https://github.com/kgovind-coder/vouchsafe
marketplace: https://github.com/marketplace/actions/vouchsafe-ai-inventory-scan
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kgovind-coder/vouchsafe** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vouchsafe-ai-inventory-scan) to find the latest changes.

## Action Summary

Vouchsafe is a GitHub Action that scans codebases to generate a signed, deterministic inventory of all AI-related components, including libraries, frameworks, and model artifacts. It automates the creation of audit-ready documentation tailored to meet regulatory, compliance, and risk management requirements across multiple jurisdictions and standards. The tool ensures byte-identical outputs, operates without network calls, and supports a wide range of programming languages and AI technologies.

## What's Changed

## Vouchsafe v0.3.0

See [CHANGELOG.md](https://github.com/kgovind-coder/vouchsafe/blob/main/CHANGELOG.md) for full release notes.

### Install — Windows users

Download **`vouchsafe-setup.exe`** from this page → double-click → click through the install wizard. Vouchsafe will appear in your Start menu and on your Desktop.

### Install — macOS users

Download **`Vouchsafe-v0.3.0.dmg`** → open it → drag Vouchsafe to Applications. First launch: right-click Vouchsafe → Open → confirm in the security dialog (one-time; the app is unsigned at this version).

### Install — Linux users

Download **`Vouchsafe-v0.3.0-x86_64.AppImage`** → `chmod +x` it → double-click or run from terminal. No install needed.

### Install — CLI / power users

| OS | Asset |
|---|---|
| Linux | `vouchsafe-linux-x64` |
| macOS | `vouchsafe-macos-universal` |
| Windows | `vouchsafe-windows-x64.exe` |

### Docker (multi-arch)

```bash
docker run --rm -v "$PWD":/scan ghcr.io/kgovind-coder/vouchsafe:v0.3.0 scan /scan
```

### GitHub Action

```yaml
- uses: kgovind-coder/vouchsafe@v0.3.0
  with: { path: ., formats: json,sarif }
```

### Verify any download

Every artifact has a matching `.sha256` file at the same URL with that suffix.

