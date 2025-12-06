---
title: Shai-Hulud 2.0 Detector
date: 2025-12-06 13:01:11 +00:00
tags:
  - gensecaihq
  - GitHub Actions
draft: false
repo: https://github.com/gensecaihq/Shai-Hulud-2.0-Detector
marketplace: https://github.com/marketplace/actions/shai-hulud-2-0-detector
version: v2.0.0
dependentsNumber: "38"
---


Version updated for **https://github.com/gensecaihq/Shai-Hulud-2.0-Detector** to version **v2.0.0**.
- This action is used across all versions by **38** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shai-hulud-2-0-detector) to find the latest changes.

## Release notes

# Shai-Hulud 2.0 Detector v2.0.0

**Protect your projects from the Shai-Hulud 2.0 npm supply chain attack with enhanced detection capabilities.**

## Why This Release?

After the initial attack on November 24, 2025, security researchers discovered additional attack vectors and persistence mechanisms:

- **Backdoor Persistence**: `on: discussion` workflow triggers that persist even after removing compromised packages
- **Rogue Runner Installation**: Self-hosted runners installed in `$HOME/.dev-env/` for long-term access
- **Malware Variants**: 6+ variants of `bun_environment.js` with different SHA256 hashes

This release incorporates findings from Wiz, Datadog Security Labs, Aikido Security, and other researchers.

---

## What's New in v2.0.0

### Automated Daily IOC Updates (NEW!)

The package database is now **automatically updated daily** from the [Datadog Consolidated IOCs](https://github.com/DataDog/indicators-of-compromise/tree/main/shai-hulud-2.0), aggregating data from **7 security vendors**:

| Source | Description |
|--------|-------------|
| **Wiz** | Threat investigation & attack analysis |
| **Koi Security** | Supply chain threat intelligence |
| **HelixGuard** | Malware analysis and IOC identification |
| **StepSecurity** | GitHub Actions security |
| **ReversingLabs** | Software supply chain security |
| **Socket.dev** | npm security monitoring |
| **Datadog Security Labs** | SHA256 hash IOCs & malware analysis |

### Precise Version Matching (NEW!)

Eliminates false positives by matching only specific compromised versions:

```
@asyncapi/parser@3.4.0  →  ✅ SAFE (pre-attack version)
@asyncapi/parser@3.4.1  →  ❌ COMPROMISED
@asyncapi/parser@3.4.2  →  ❌ COMPROMISED
```

### SHA256 Hash Matching
Cryptographic signature matching against known Shai-Hulud malware variants.

### on:discussion Workflow Trigger Detection
Detects malicious `on: discussion` workflow triggers used for command injection backdoors.

### Runner Installation Detection
Scans for `.dev-env/` directories and `actions-runner-linux-x64-2.330.0` artifacts.

---

## Bug Fixes

### Angular prepublishOnly false positive (#21) - NEW!
- Fixed false positive for Angular packages using `prepublishOnly` scripts for legitimate build processes

### Exfiltrat pattern false positive (#20) - NEW!
- Made `exfiltrat` pattern detection context-aware to reduce false positives

### CLI crash outside GitHub Actions (#15)
- Fixed `GITHUB_STEP_SUMMARY` error when running locally with `--fail-on-critical=false`

### Incorrect isDirect flag (#16)
- Fixed transitive dependencies incorrectly marked as direct

### False positives for clean versions (#18)
- Fixed by using specific version matching instead of wildcards

---

## Quick Start

```yaml
- uses: gensecaihq/Shai-Hulud-2.0-Detector@v2
  with:
    fail-on-critical: true
```

## Database Statistics

| Metric | Value |
|--------|-------|
| Total Packages | **795+** |
| Data Sources | **7 security vendors** |
| Update Frequency | **Daily (automated)** |
| Version Precision | **Specific versions only** |

## All Features

### Package Detection
- Database of **795+ compromised packages** with specific version matching
- Scans `package.json`, `package-lock.json`, `yarn.lock`, and `pnpm-lock.yaml`
- Monorepo support with automatic subdirectory scanning

### Security Findings Detection
- **Malicious scripts**: `setup_bun.js`, `bun_environment.js` in install hooks
- **SHA256 hash matching**: Cryptographic signature detection
- **TruffleHog activity**: Credential scanning patterns
- **SHA1HULUD runners**: Malicious GitHub Actions self-hosted runners
- **Secrets exfiltration**: `actionsSecrets.json` and other output files
- **on:discussion triggers**: Backdoor persistence detection
- **Runner installation**: `.dev-env/` directories and runner tarballs

### Output Formats
- **Text**: Human-readable console output
- **JSON**: Machine-parseable results
- **SARIF**: GitHub Security tab integration

## Acknowledgements

Special thanks to the security research community:
- [Wiz](https://github.com/wiz-sec)
- [Datadog Security Labs](https://github.com/DataDog)
- [Aikido Security](https://github.com/AikidoSec)
- [HelixGuard](https://github.com/helixguard)
- [StepSecurity](https://github.com/step-security)
- [Socket.dev](https://github.com/SocketDev)
- [ReversingLabs](https://github.com/reversinglabs)
- [Koi Security](https://koi.security)

## Links

- [Full Documentation](https://github.com/gensecaihq/Shai-Hulud-2.0-Detector#readme)
- [Report Compromised Package](https://github.com/gensecaihq/Shai-Hulud-2.0-Detector/issues/new?template=package-report.yml)
- [Report False Positive](https://github.com/gensecaihq/Shai-Hulud-2.0-Detector/issues/new?template=false-positive.yml)
