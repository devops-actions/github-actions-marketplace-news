---
title: Shai-Hulud 2.0 Detector
date: 2025-12-01 21:09:43 +00:00
tags:
  - gensecaihq
  - GitHub Actions
draft: false
repo: https://github.com/gensecaihq/Shai-Hulud-2.0-Detector
marketplace: https://github.com/marketplace/actions/shai-hulud-2-0-detector
version: v1.0.2
dependentsNumber: "23"
---


Version updated for **https://github.com/gensecaihq/Shai-Hulud-2.0-Detector** to version **v1.0.2**.
- This action is used across all versions by **23** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shai-hulud-2-0-detector) to find the latest changes.

## Release notes

# Shai-Hulud 2.0 Detector v1.0.2

This release includes important bug fixes and a major feature enhancement for version matching accuracy.

## What's New

### 🎯 Semver Version Matching (#11)

The detector now uses proper semver version range matching when checking for compromised packages. This significantly reduces false positives by accurately matching only the specific vulnerable versions.

**Before:** Packages were matched by name only, potentially flagging safe versions.

**After:** Uses semver to match exact versions, ranges, and patterns defined in the compromised packages database.

```typescript
// Example: kill-port@2.0.1 is now correctly identified as SAFE
// Only kill-port@2.0.2 and @2.0.3 are flagged as compromised
```

### 🐛 Bug Fix: Correct totalDependencies Count (#10)

Fixed an issue where `totalDependencies` was being overwritten in each scan loop instead of accumulated. The scan summary now correctly reports the total number of unique dependencies scanned.

## Contributors

Special thanks to **[@albe](https://github.com/albe)** (Alexander Berl) for both contributions!

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/albe">
        <img src="https://github.com/albe.png" width="80" height="80" alt="@albe"><br>
        <sub><b>@albe</b></sub>
      </a>
      <br>
      <sub>PR #10, PR #11</sub>
    </td>
  </tr>
</table>

## Technical Details

| Change | Description |
|--------|-------------|
| `isAffected(name, version)` | Now accepts version parameter for semver matching |
| `satisfies()` / `intersects()` | Uses semver library for accurate version comparison |
| `totalDependencies` | Now uses `+=` instead of `=` for correct accumulation |
| New dependency | Added `semver` package for version matching |

## Upgrade Guide

Simply update your workflow to use the latest version:

```yaml
# Use the latest v1.x (recommended)
- uses: gensecaihq/Shai-Hulud-2.0-Detector@v1

# Or pin to this specific version
- uses: gensecaihq/Shai-Hulud-2.0-Detector@v1.0.2
```

## Links

- [GitHub Marketplace](https://github.com/marketplace/actions/shai-hulud-2-0-detector)
- [Full Documentation](https://github.com/gensecaihq/Shai-Hulud-2.0-Detector#readme)
- [Report Compromised Package](https://github.com/gensecaihq/Shai-Hulud-2.0-Detector/issues/new?template=package-report.yml)
- [Report False Positive](https://github.com/gensecaihq/Shai-Hulud-2.0-Detector/issues/new?template=false-positive.yml)

---

**Full Changelog:** https://github.com/gensecaihq/Shai-Hulud-2.0-Detector/compare/v1.0.1...v1.0.2
