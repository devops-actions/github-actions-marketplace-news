---
title: opnDossier
date: 2026-04-03 21:45:53 +00:00
tags:
  - EvilBit-Labs
  - GitHub Actions
draft: false
repo: https://github.com/EvilBit-Labs/opnDossier
marketplace: https://github.com/marketplace/actions/opndossier
version: v1.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/EvilBit-Labs/opnDossier** to version **v1.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opndossier) to find the latest changes.

## Action Summary

opnDossier is a command-line tool designed for network operators and security professionals to analyze and process OPNsense and pfSense firewall configurations. It automates tasks such as security vulnerability detection, dead rule identification, and configuration validation, while also generating detailed documentation and exportable formats (e.g., Markdown, JSON, YAML). Optimized for secure, airgapped environments, it helps identify misconfigurations, optimize performance, and enhance security posture without relying on external dependencies.

## What's Changed

# opnDossier v1.4.0 — Kea DHCP, full compliance posture, and container support

This release unifies DHCP parsing across ISC and Kea backends, overhauls blue mode into a true compliance posture report, and ships a Dockerfile and GitHub Action for CI integration. Security hardening and a 710-line net code reduction round it out.

## Highlights

**Kea DHCP4 parsing.** Previously, opnDossier only extracted general-level Kea fields — subnets, pools, and reservations were invisible. Now, full Kea DHCP4 data is parsed and normalized into the same `DHCPScope` model as ISC DHCP, so reports, diffs, and exports work uniformly regardless of backend.

```yaml
# CommonDevice DHCP scopes now include:
  - source: kea        # or "isc"
    subnet: 10.0.1.0/24
    gateway: 10.0.1.1
    staticLeases: ['...']
```

**Three-state compliance posture.** Blue mode reports previously showed only findings. Now every control reports PASS, FAIL, or UNKNOWN — with 75 new controls across STIG, SANS, and Firewall plugins. The new `--failures-only` flag filters to just what needs attention.

**Docker and GitHub Action.** `Dockerfile` and `action.yaml` are wired into goreleaser v2 for container image builds on release. Run opnDossier in CI pipelines without installing Go. (#521, closes #482)

**LDAP pseudonymization.** The sanitizer now pseudonymizes authserver LDAP bind passwords (e.g., `ldap-bindpw-001`) instead of flat-redacting them, preserving the structure needed for config comparison while removing secrets. (#529)

## Upgrade notes

No breaking changes. Drop-in upgrade from v1.3.0.

New optional flags:

- `--failures-only` — show only failing controls in blue mode (markdown format only)
- Docker image available on release for CI/CD pipelines

## Full changelog

**Full Changelog**: https://github.com/EvilBit-Labs/opnDossier/compare/v1.3.0...v1.4.0

See the [weekly changelog discussion](https://github.com/EvilBit-Labs/opnDossier/discussions/537) for the complete list of changes, contributors, and dependency updates.

---

## Security Information

This release includes:
- SBOM (Software Bill of Materials) generated with CycloneDX-gomod
- SLSA Level 3 provenance attestation
- Cosign keyless signatures (Sigstore)

### Verify Signatures

```bash
# Download the checksum file and its signature
wget https://github.com/EvilBit-Labs/opnDossier/releases/download/v1.4.0/opnDossier_checksums.txt
wget https://github.com/EvilBit-Labs/opnDossier/releases/download/v1.4.0/opnDossier_checksums.txt.sigstore.json

# Verify with cosign v3
cosign verify-blob \
  --certificate-identity "https://github.com/EvilBit-Labs/opnDossier/.github/workflows/release.yml@refs/tags/v1.4.0" \
  --certificate-oidc-issuer "https://token.actions.githubusercontent.com" \
  --bundle opnDossier_checksums.txt.sigstore.json \
  opnDossier_checksums.txt
```

## Installation

### Docker

```bash
docker pull ghcr.io/evilbit-labs/opndossier:v1.4.0
```

### Package Managers

**Debian/Ubuntu (.deb)**:
```bash
wget https://github.com/EvilBit-Labs/opnDossier/releases/download/v1.4.0/opndossier_1.4.0_amd64.deb
sudo dpkg -i opndossier_1.4.0_amd64.deb
```

**Red Hat/CentOS/Fedora (.rpm)**:
```bash
wget https://github.com/EvilBit-Labs/opnDossier/releases/download/v1.4.0/opndossier-1.4.0-1.x86_64.rpm
sudo rpm -i opndossier-1.4.0-1.x86_64.rpm
```

**Alpine (.apk)**:
```bash
wget https://github.com/EvilBit-Labs/opnDossier/releases/download/v1.4.0/opndossier_1.4.0_x86_64.apk
sudo apk add --allow-untrusted opndossier_1.4.0_x86_64.apk
```

**Arch Linux**:
```bash
wget https://github.com/EvilBit-Labs/opnDossier/releases/download/v1.4.0/opndossier-1.4.0-1-x86_64.pkg.tar.zst
sudo pacman -U opndossier-1.4.0-1-x86_64.pkg.tar.zst
```

### Download Binary

Download the appropriate binary for your platform from the assets below.

### Verify Checksums

```bash
sha256sum -c opnDossier_checksums.txt
```

