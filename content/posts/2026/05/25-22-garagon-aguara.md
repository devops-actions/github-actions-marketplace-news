---
title: Aguara Security Scanner
date: 2026-05-25 22:12:00 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.18.4
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.18.4**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## Action Summary

Aguara is a local-first security scanning tool designed to identify vulnerabilities in software supply chains and AI agent tools. It automates the review of dependencies, lockfiles, install scripts, CI workflows, MCP configurations, and AI agent integrations, helping teams detect and mitigate risks before trusting external inputs. By offering comprehensive checks without relying on SaaS, telemetry, or external LLM calls, Aguara enhances security and privacy in modern development workflows.

## What's Changed

Incident-response hotfix. Aguara now ships local advisories for the **TrapDoor** crypto-stealer supply-chain campaign (Socket, 2026-05-24), so `aguara check` blocks the confirmed malicious package/version tuples offline, with no network call and no package execution.

This release carries threat intel only. No detection rules or analyzers changed.

## What it catches

12 confirmed package/version tuples under advisory `SOCKET-2026-05-24-trapdoor`:

- **npm** at `1.0.12`: `build-scripts-utils`, `dev-env-bootstrapper`, `llm-context-compressor`, `prompt-engineering-toolkit`, `token-usage-tracker`
- **PyPI** at `0.1.0` / `0.1.1`: `cryptowallet-safety`, `data-pipeline-check`, `defi-risk-scanner`, `env-loader-cli`, `eth-security-auditor`, `git-config-sync`, `solidity-build-guard`

Detection covers installed npm trees (`node_modules`, including the pnpm virtual store), `pnpm-lock.yaml`, and installed Python environments (site-packages). Only tuples with an exact, confirmed malicious version are included. The campaign's range-only npm packages and its crates.io packages are not covered here, because no exact malicious version is available for them yet; behavioral and version-range detection for those is planned for v0.19.0.

## Use it

```bash
# Scan a project for compromised dependencies (offline, no package execution)
aguara check .

# CI gate: non-zero exit on a confirmed compromised package
aguara audit . --ci
```

`aguara check` makes no network calls by default and never executes package code.

## Install / upgrade

```bash
# Homebrew
brew upgrade garagon/tap/aguara

# install.sh (mandatory checksum verification)
curl -fsSL https://raw.githubusercontent.com/garagon/aguara/main/install.sh | VERSION=v0.18.4 sh

# Docker (multi-arch linux/amd64+arm64, signed at digest)
docker pull ghcr.io/garagon/aguara:0.18.4
```

## Provenance

Releases are signed with Cosign (keyless). Verify the checksums bundle and the image:

```bash
# Archive checksums
cosign verify-blob \
  --bundle checksums.txt.bundle \
  --certificate-identity "https://github.com/garagon/aguara/.github/workflows/release.yml@refs/tags/v0.18.4" \
  --certificate-oidc-issuer "https://token.actions.githubusercontent.com" \
  checksums.txt

# Docker image at digest
cosign verify ghcr.io/garagon/aguara:0.18.4 \
  --certificate-identity "https://github.com/garagon/aguara/.github/workflows/docker.yml@refs/tags/v0.18.4" \
  --certificate-oidc-issuer "https://token.actions.githubusercontent.com"
```

Each release archive ships an SPDX SBOM; the image carries SBOM and SLSA build provenance attestations.

## Compatibility

Drop-in for v0.18.x. No CLI flags, output schema, or rule IDs changed.

<details>
<summary>CHANGELOG</summary>

### Added

- **Local advisories for the TrapDoor crypto-stealer campaign** (Socket, 2026-05-24) under advisory `SOCKET-2026-05-24-trapdoor`: 5 npm packages at `1.0.12` and 7 PyPI packages at `0.1.0` / `0.1.1`. Offline detection across pnpm lockfiles, installed npm trees, and installed Python environments. Only tuples with an exact confirmed malicious version are included; the campaign's range-only npm packages and its crates.io packages (no exact version available yet) are intentionally not listed.

</details>

