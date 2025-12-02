---
title: Shai-Hulud 2.0 Detector
date: 2025-12-02 13:10:28 +00:00
tags:
  - gensecaihq
  - GitHub Actions
draft: false
repo: https://github.com/gensecaihq/Shai-Hulud-2.0-Detector
marketplace: https://github.com/marketplace/actions/shai-hulud-2-0-detector
version: v2.0.0
dependentsNumber: "24"
---


Version updated for **https://github.com/gensecaihq/Shai-Hulud-2.0-Detector** to version **v2.0.0**.
- This action is used across all versions by **24** repositories.

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

### SHA256 Hash Matching (Critical)
Cryptographic signature matching against known Shai-Hulud malware variants from the Datadog IOC database.

```
✓ setup_bun.js - 1 known hash
✓ bun_environment.js - 6 known variant hashes
```

### on:discussion Workflow Trigger Detection (Critical)
Detects malicious `on: discussion` workflow triggers used for command injection backdoors that persist after package cleanup.

### Runner Installation Detection (Critical)
Scans for `.dev-env/` directories and `actions-runner-linux-x64-2.330.0` artifacts used by the attack.

### New Exfiltration File Detection
- `actionsSecrets.json` - Stolen GitHub Actions secrets (double Base64 encoded)
- `trufflehog_output.json` - TruffleHog credential scan results

### Enhanced IOC Database (v2.0.0)
- SHA256 hashes for malware variants
- Runner installation paths
- Credential file targets
- Primary infection vectors
- Maven package indicators
- Security researcher acknowledgements

---

## Bug Fixes (v2.0.0 patch)

### Fix: CLI crash outside GitHub Actions (#15)
- Fixed `GITHUB_STEP_SUMMARY` error when running locally with `--fail-on-critical=false`
- Job summary now only created when running inside GitHub Actions

### Fix: Incorrect isDirect flag for lockfile packages (#16)
- Fixed transitive dependencies incorrectly marked as `isDirect: true`
- Now correctly reads `package.json` to determine direct vs transitive dependencies

---

## Quick Start

```yaml
- uses: gensecaihq/Shai-Hulud-2.0-Detector@v2
  with:
    fail-on-critical: true
```

## All Features

### Package Detection
- Database of **790+ compromised packages** from the November 2025 attack
- Scans `package.json`, `package-lock.json`, `yarn.lock`, and `pnpm-lock.yaml`
- Monorepo support with automatic subdirectory scanning
- **Semver version matching** for affected version ranges

### Security Findings Detection
- **Malicious scripts**: `setup_bun.js`, `bun_environment.js` in install hooks
- **SHA256 hash matching**: Cryptographic signature detection
- **TruffleHog activity**: Credential scanning patterns
- **SHA1HULUD runners**: Malicious GitHub Actions self-hosted runners
- **Secrets exfiltration**: `actionsSecrets.json` and other output files
- **Malicious workflows**: `formatter_*.yml`, `discussion.yaml` patterns
- **on:discussion triggers**: Backdoor persistence detection
- **Webhook exfiltration**: `webhook.site` endpoints and known malicious UUIDs
- **Shai-Hulud references**: Repository names, git branches, remote URLs
- **Runner installation**: `.dev-env/` directories and runner tarballs

### Output Formats
- **Text**: Human-readable console output
- **JSON**: Machine-parseable results
- **SARIF**: GitHub Security tab integration

## Acknowledgements

Special thanks to the security research community:
- [Wiz](https://github.com/wiz-sec) - Comprehensive threat investigation & aftermath analysis
- [Datadog Security Labs](https://github.com/DataDog) - SHA256 hash IOCs & detailed malware analysis
- [Aikido Security](https://github.com/AikidoSec) - Initial discovery & package database
- [Postman](https://github.com/postmanlabs) - Incident disclosure & investigation
- [PostHog](https://github.com/PostHog) - Incident disclosure & investigation
- [HelixGuard](https://github.com/helixguard) - Detection methodology contributions

## Links

- [Full Documentation](https://github.com/gensecaihq/Shai-Hulud-2.0-Detector#readme)
- [Report Compromised Package](https://github.com/gensecaihq/Shai-Hulud-2.0-Detector/issues/new?template=package-report.yml)
- [Report False Positive](https://github.com/gensecaihq/Shai-Hulud-2.0-Detector/issues/new?template=false-positive.yml)
