---
title: KCD Pak
date: 2026-07-24 18:58:41 +00:00
tags:
  - tkhquang
  - GitHub Actions
draft: false
repo: https://github.com/tkhquang/kcd-pak-action
marketplace: https://github.com/marketplace/actions/kcd-pak
version: v1.0.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action packages a Kingdom Come: Deliverance loose-file mod into game-ready `.pak` files and a release `.zip`. It solves the problem of loading mods by ensuring that the paks do not have unnecessary modification-time metadata, which 7-Zip / WinRAR / WinZip add. The action supports both compression methods (deflate or store) and provides outputs for the mod ID and version, allowing users to manage their releases from the `mod.manifest` file.
---


Version updated for **https://github.com/tkhquang/kcd-pak-action** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kcd-pak) to find the latest changes.

## Action Summary

This GitHub Action packages a Kingdom Come: Deliverance loose-file mod into game-ready `.pak` files and a release `.zip`. It solves the problem of loading mods by ensuring that the paks do not have unnecessary modification-time metadata, which 7-Zip / WinRAR / WinZip add. The action supports both compression methods (deflate or store) and provides outputs for the mod ID and version, allowing users to manage their releases from the `mod.manifest` file.

## What's Changed

Package a Kingdom Come: Deliverance (KCD1/KCD2) loose-file mod into game-ready `.pak` files and a release `.zip`. Runs as a GitHub Action or as a local Python tool.

## Highlights

- **CryPak-safe paks**: writes ZIPs with zero per-file modification-time extra fields (NTFS `0x000A` / extended-timestamp `0x5455`), the metadata that makes a plain renamed 7-Zip/WinRAR archive fail to load in KCD2.
- **Correct pak layout**: `Data/**` except `Data/Levels/**` -> `Data/<modid>.pak`; `Localization/<Lang>/**` -> `Localization/<Lang>.pak`; `Data/Levels/<level>/**` -> `Data/Levels/<level>/<modid>.pak`; `mod.manifest` and `mod.cfg` are kept loose.
- **Compression**: `deflate` (default) or `store`.
- **Outputs**: `archive`, `deploy-dir`, `modid`, `version` (read from `mod.manifest`).

## Usage

```yaml
- uses: actions/checkout@v7
- uses: tkhquang/kcd-pak-action@v1
  with:
    mod-dir: src        # folder containing mod.manifest
    compress: deflate   # or 'store'
```

See the README for both the tag-triggered and manifest-driven release workflows.

## Requirements

- Python 3.8+ on the runner (present on GitHub-hosted runners). Also runs locally: `python scripts/pak_kcd_mod.py <mod-src-dir>`.

## License

0BSD.

