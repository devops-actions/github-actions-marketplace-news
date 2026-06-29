---
title: TrustCheck Package Scanner
date: 2026-06-29 07:17:29 +00:00
tags:
  - Halfblood-Prince
  - GitHub Actions
draft: false
repo: https://github.com/Halfblood-Prince/trustcheck
marketplace: https://github.com/marketplace/actions/trustcheck-package-scanner
version: v2.1.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Halfblood-Prince/trustcheck** to version **v2.1.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trustcheck-package-scanner) to find the latest changes.

## What's Changed

Published from immutable commit `f4bae997d7124ad7ed268eb4e27c895236cbdb93`.
The release workflow publishes PyPI, GitHub Action, Snap Store, and
GHCR Docker distributions after shared tag verification, QA, matrix,
and coverage builds.

Release artifacts:
- `dist/*`
- `dist/SHA256SUMS.txt`
- `dist/trustcheck-sbom.json`
- standalone `trustcheck-*-windows-x86_64.exe` with checksum
- unsigned `trustcheck-*-store.msix` for Microsoft Store submission
- GHCR Docker images for `linux/amd64`, `linux/arm64`, and `linux/arm/v7`

Verify the direct Windows executable before use:

```powershell
Get-AuthenticodeSignature .\trustcheck-*-windows-x86_64.exe | Format-List
Get-FileHash .\trustcheck-*-windows-x86_64.exe -Algorithm SHA256
```

The Authenticode status must be `Valid`, include a timestamp
certificate, and match the adjacent `.sha256` file. The Store signs
the MSIX during submission; the workflow tests its execution alias
with a disposable certificate before upload.

GitHub Action:
- Immutable: `uses: Halfblood-Prince/trustcheck@v2.1.1`
- Compatible major: `uses: Halfblood-Prince/trustcheck@v2`


**Full Changelog**: https://github.com/Halfblood-Prince/trustcheck/compare/v2.1.0...v2.1.1
