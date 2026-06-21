---
title: Armis Security Scanner
date: 2026-06-21 15:06:02 +00:00
tags:
  - ArmisSecurity
  - GitHub Actions
draft: false
repo: https://github.com/ArmisSecurity/armis-cli
marketplace: https://github.com/marketplace/actions/armis-security-scanner
version: v1.14.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/ArmisSecurity/armis-cli** to version **v1.14.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/armis-security-scanner) to find the latest changes.

## What's Changed

## Armis CLI v1.14.0

Enterprise-grade CLI tool for static application security scanning.

### Installation

**Quick Install Script:**
```bash
curl -sSL https://raw.githubusercontent.com/ArmisSecurity/armis-cli/main/scripts/install.sh | bash
```

**Windows (PowerShell):**
```powershell
irm https://raw.githubusercontent.com/ArmisSecurity/armis-cli/main/scripts/install.ps1 | iex
```

**Go Install:**
```bash
go install github.com/ArmisSecurity/armis-cli/cmd/armis-cli@latest
```

**Manual Download:**
Download the appropriate binary for your platform below.

### Verification
All binaries are signed with cosign. To verify:
```bash
cosign verify-blob \
  --certificate-identity-regexp 'https://github.com/ArmisSecurity/armis-cli/.github/workflows/release.yml@refs/tags/.*' \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com \
  --bundle armis-cli-checksums.txt.bundle \
  armis-cli-checksums.txt
```

## Changelog
### Bug Fixes
* 4a0f160466c9ba7a58f49733bef8c34f15437855: [PPSC-984] fix(auth): route region-pinned uploads to correct data plane (#228) (@yiftach-armis)
### Others
* 1338391d83df4c3208ef8c1e769b48e70a441d72: Fix: Align PR comment alert count with inline Code Scanning annotations (#221) (@khyati-crest)
* 737f09cc59ee1ab38ef17d87aa93a6454b7c8a4b: [PPSC-958] fix(supply-chain): correct PyPI prerelease misclassification (#222) (@yiftach-armis)
* 72519d7ef40880c0820c8218a3f7e5eba159a566: [PPSC-995] feat(supply-chain): add -o/--output flag to check command (#229) (@yiftach-armis)
* 7e8769e002c3f8996487b666c8227d4c63823a82: [PPSC-997] feat(supply-chain): lead status with a live protection verdict (#231) (@yiftach-armis)

---

**Full Changelog**: https://github.com/ArmisSecurity/armis-cli/compare/v1.13.0...v1.14.0

For issues or questions, visit: https://github.com/ArmisSecurity/armis-cli/issues


