---
title: Install QHYCCD SDK
date: 2026-06-21 14:59:24 +00:00
tags:
  - ivonnyssen
  - GitHub Actions
draft: false
repo: https://github.com/ivonnyssen/qhyccd-sdk-install
marketplace: https://github.com/marketplace/actions/install-qhyccd-sdk
version: v3
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/ivonnyssen/qhyccd-sdk-install** to version **v3**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-qhyccd-sdk) to find the latest changes.

## What's Changed

## v3 — QHYCCD SDK 26.06.04 packaging support

QHYCCD changed how the SDK is packaged starting with **26.06.04**. v3 supports **both** the legacy packaging (versions ≤ 25.x) and the new packaging (≥ 26.06.04), and adds **Linux ARM64** support. The correct download URL, archive name, extension, and install method are selected automatically from the requested `version`.

```yaml
- uses: ivonnyssen/qhyccd-sdk-install@v3
  with:
    version: "26.06.04"
```

### What changed
- **Dual packaging support** via a `YY.MM.DD` version threshold (`≥ 26.06.04` → new scheme: no-dot URL directory, renamed archives, `.tar.gz`). Older versions keep working unchanged.
- **Linux**: the new packages no longer ship `install.sh`. The action now reproduces the installation (merging the staged `etc/lib/sbin/usr` tree into `/` and running `ldconfig`), preserving the `libqhyccd.so → libqhyccd.so.20 → libqhyccd.so.<version>` symlink chain that consumers such as INDI rely on. usrmerge systems (Ubuntu 24.04+) are handled correctly. Legacy packages with `install.sh` still run it.
- **Linux ARM64** (`aarch64`) is now supported.
- **Windows**: handles the new `sdk_win64_<version>` layout and PATH. The new upstream package is x64-only and no longer bundles `ftd2xx`/`msvcp90`/`msvcr90`/`tbb`/`winusb` DLLs.
- **macOS**: handles the new `sdk_mac_x64` / `sdk_mac_arm` `.tar.gz` archives (dylibs moved into `usr/local/lib/`).

### Tested
CI exercises both `25.09.29` (legacy) and `26.06.04` (new) on `ubuntu-latest`, `ubuntu-24.04-arm`, `windows-latest`, and `macos-latest` — all green.

**Full diff:** https://github.com/ivonnyssen/qhyccd-sdk-install/pull/1
