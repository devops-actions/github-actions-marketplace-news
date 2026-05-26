---
title: Aguara Security Scanner
date: 2026-05-26 06:27:01 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.19.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.19.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## Action Summary

Aguara is a local-first security scanner designed to safeguard software supply chains and AI agents by identifying vulnerabilities in critical trust points, such as dependencies, lockfiles, installation scripts, CI workflows, and configuration files. It automates pre-emptive security checks for modern projects, helping teams detect and mitigate risks from malicious packages or compromised configurations before they are trusted or deployed. Key capabilities include analyzing lockfiles (e.g., pnpm-lock.yaml) and package trees, verifying MCP server configurations, and ensuring secure AI agent tool usage without relying on external telemetry or SaaS services.

## What's Changed

Aguara v0.19.0 expands supply-chain coverage for confirmed TrapDoor surfaces while keeping the scanner local, deterministic, and safe to run before package execution.

TrapDoor is a malicious-package campaign reported by Socket across npm, PyPI, and crates.io. The relevant pattern for this release is not only "a bad package exists"; it is code execution during install, import, or build steps in the developer environment. That is the point where source code, lockfiles, credentials, agent configs, CI tokens, and package managers meet.

This release improves Aguara on two axes:

- **Known exposure**: detect confirmed malicious package/version or package/range tuples.
- **Behavioral exposure**: detect static payload patterns associated with TrapDoor-style packages.

## What is new

### Range-based TrapDoor advisories for npm

Aguara can now match supported semver ranges in local advisory records.

This is used for the 16 confirmed TrapDoor npm packages that OSV represents as whole-package affected ranges (`introduced:0`) rather than exact affected versions. Together with the exact TrapDoor npm entries already shipped in v0.18.4, Aguara now detects the confirmed npm TrapDoor set offline.

Supported surfaces:

- installed npm trees
- pnpm lockfiles

No package code is executed.

### PyPI import-time remote JavaScript detection

New rule: `PY_IMPORTTIME_REMOTE_JS_001`

Detects Python package code in setup/import-time locations that retrieves a remote JavaScript payload and invokes Node through `node -e` / `node --eval`.

This targets the class of behavior seen in TrapDoor-style PyPI packages without importing or executing the package.

### Rust build.rs wallet / keystore exfiltration detection

New rule: `RS_BUILD_WALLET_EXFIL_001`

Detects Rust `build.rs` scripts that read wallet or keystore material and also contain a network exfiltration sink.

This targets build-time credential theft patterns without running Cargo or executing build scripts.

## How to use it

Local check:

```bash
aguara check .
```

CI gate:

```bash
aguara audit . --ci
```

If a compromised package or high-risk payload is found, `audit --ci` exits non-zero.

Docker:

```bash
docker run --rm -v "$PWD:/repo:ro" ghcr.io/garagon/aguara:0.19.0 check /repo
```

Homebrew:

```bash
brew upgrade garagon/tap/aguara
```

Install script:

```bash
curl -fsSL https://raw.githubusercontent.com/garagon/aguara/main/install.sh \
  | VERSION=v0.19.0 sh
```

## What this release does not claim

This is not "full TrapDoor coverage."

v0.19.0 covers confirmed TrapDoor surfaces implemented in this release:

- supported npm range advisories for confirmed TrapDoor packages
- PyPI import-time remote JavaScript behavior
- Rust build.rs wallet / keystore exfiltration behavior

The following remain tracked follow-up work:

- broader OSV range-corpus strategy without inflating the embedded binary
- analyzer-level Python fetch-to-eval data-flow binding
- analyzer-level Rust read-to-exfil data-flow binding
- npm publish-authority propagation detection
- AI assistant workspace persistence hardening

## Compatibility

- No output schema change.
- No package manager execution.
- No live API call during default scan/check/audit.
- Existing scan, check, and audit workflows remain compatible.

## Supply-chain provenance

Release artifacts are built with GoReleaser and include:

- signed checksums
- SPDX SBOMs
- multi-arch Docker image
- Docker image signing and provenance attestations

## Full changelog

https://github.com/garagon/aguara/compare/v0.18.4...v0.19.0

