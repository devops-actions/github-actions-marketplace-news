---
title: Shai-Hulud 2.0 Detector
date: 2025-12-01 13:00:48 +00:00
tags:
  - gensecaihq
  - GitHub Actions
draft: false
repo: https://github.com/gensecaihq/Shai-Hulud-2.0-Detector
marketplace: https://github.com/marketplace/actions/shai-hulud-2-0-detector
version: v1.0.1
dependentsNumber: "23"
---


Version updated for **https://github.com/gensecaihq/Shai-Hulud-2.0-Detector** to version **v1.0.1**.
- This action is used across all versions by **23** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shai-hulud-2-0-detector) to find the latest changes.

## Release notes

# Shai-Hulud 2.0 Detector v1.0.1

We're excited to announce v1.0.1 with a key feature addition contributed by our community!

## What's New

### 🎯 Scan Node Modules Support (#9)

The `--scan-node-modules` flag now works as documented! You can now optionally scan your `node_modules` directory for a more thorough security analysis.

```yaml
- uses: gensecaihq/Shai-Hulud-2.0-Detector@v1
  with:
    scan-node-modules: true  # Now functional!
```

**CLI Usage:**
```bash
node dist/index.js --scan-node-modules=true --working-directory="/path/to/project"
```

> **Note:** This is disabled by default to maintain fast scan times. Enable it when you need deep inspection of installed packages.

## Contributors

Special thanks to **[@albe](https://github.com/albe)** (Alexander Berl) for implementing this feature!

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/albe">
        <img src="https://github.com/albe.png" width="80" height="80" alt="@albe"><br>
        <sub><b>@albe</b></sub>
      </a>
      <br>
      <sub>Implemented scan-node-modules</sub>
    </td>
  </tr>
</table>

## Technical Details

| Change | Description |
|--------|-------------|
| `findPackageJsonFiles()` | Now accepts `scanNodeModules` parameter |
| `findLockfiles()` | Now accepts `scanNodeModules` parameter |
| `runScan()` | Passes the flag to file discovery functions |
| Default behavior | Unchanged - `node_modules` skipped by default |

## Upgrade Guide

Simply update your workflow to use the latest version:

```yaml
# Use the latest v1.x (recommended)
- uses: gensecaihq/Shai-Hulud-2.0-Detector@v1

# Or pin to this specific version
- uses: gensecaihq/Shai-Hulud-2.0-Detector@v1.0.1
```

## Links

- [GitHub Marketplace](https://github.com/marketplace/actions/shai-hulud-2-0-detector)
- [Full Documentation](https://github.com/gensecaihq/Shai-Hulud-2.0-Detector#readme)
- [Report Compromised Package](https://github.com/gensecaihq/Shai-Hulud-2.0-Detector/issues/new?template=package-report.yml)
- [Report False Positive](https://github.com/gensecaihq/Shai-Hulud-2.0-Detector/issues/new?template=false-positive.yml)

---

**Full Changelog:** https://github.com/gensecaihq/Shai-Hulud-2.0-Detector/compare/v1.0.0...v1.0.1
