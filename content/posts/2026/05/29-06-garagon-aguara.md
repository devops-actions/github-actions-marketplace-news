---
title: Aguara Security Scanner
date: 2026-05-29 06:41:45 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.21.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.21.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## Action Summary

Aguara is a security scanner designed to protect software supply chains and AI agents by analyzing dependencies, lockfiles, install scripts, CI workflows, MCP configurations, and agent tools for vulnerabilities or malicious changes. It automates pre-installation checks to ensure the trustworthiness of external inputs, helping teams prevent supply-chain attacks and safeguard sensitive credentials. Key capabilities include local-first scanning without reliance on SaaS, telemetry, or LLMs, and support for multiple lockfile formats across languages and package managers.

## What's Changed

Aguara v0.21.0 makes fresh threat intel trustworthy. `--fresh` no longer means "fetch raw OSV over TLS." It now consumes an advisory bundle that Aguara publishes and signs, and Aguara verifies that bundle by identity, digest, and provenance before it ever touches your local cache. Detection rules, advisory coverage, and offline-by-default behavior are unchanged.

## Highlights

### Trusted fresh intel
- `aguara update`, `aguara check --fresh`, and `aguara audit --fresh` all use the same signed path: fetch the bundle, verify its Sigstore signature and the expected publisher identity, then validate the manifest against the blob (schema, name, sizes, SHA-256 digests) and decode it. A bundle that fails any check is never used and never written to the cache. Verification is offline (the trusted root is embedded).

```sh
# refresh local intel from the signed bundle (verified before use)
aguara update

# CI: check / audit against fresh, verified intel
aguara check . --fresh --ci
aguara audit . --fresh --ci
```

### `--allow-stale` only falls back to verified intel
A successful verified refresh records a provenance marker. If a refresh fails, `--allow-stale` reuses the local cache only when that marker is present and matches the snapshot, and errors otherwise rather than silently using unverified data.

### `--insecure-intel` (mirrors / air-gapped / tests)
Skips only the signature/identity check. It requires both the flag and `AGUARA_INSECURE_INTEL=1`, is never read from config, prints a warning on every run, and still enforces the manifest/blob digest and schema checks.

## Upgrade note

A local snapshot cached by an older version has no verification marker, so it is ignored by default and by `--allow-stale`. This is intentional: unverified cached intel is not trusted. Run `aguara update` once after upgrading to seed the verified local cache. Default `aguara check` keeps working offline against the binary's embedded snapshot in the meantime.

## Provenance

- Release archives are signed with Cosign keyless via Sigstore; `checksums.txt` ships with a `checksums.txt.bundle`. SPDX SBOM per archive; `-trimpath` builds.
- The Docker image is multi-arch (`linux/amd64` + `linux/arm64`), signed at digest with Cosign, with SBOM + SLSA provenance attestations.
- Image digest: `ghcr.io/garagon/aguara:0.21.0@sha256:7b8a0f49f7718696f013107a13c1b781aa833980733e5205ac430e93630e7439`

## Install / upgrade

```sh
curl -fsSL https://raw.githubusercontent.com/garagon/aguara/main/install.sh | VERSION=v0.21.0 sh
brew install garagon/tap/aguara
docker pull ghcr.io/garagon/aguara:0.21.0
```

## Compatibility

- No advisory additions or removals; no change to matching behavior.
- The intel schema version is unchanged. The on-disk update cache now also writes a `verified.json` provenance marker alongside the snapshot.
- Exit codes and existing flags are unchanged; `--insecure-intel` is additive.

## Verify

```sh
cosign verify-blob \
  --bundle checksums.txt.bundle \
  --certificate-identity-regexp 'https://github.com/garagon/aguara/.github/workflows/release.yml@.*' \
  --certificate-oidc-issuer 'https://token.actions.githubusercontent.com' \
  checksums.txt

cosign verify \
  --certificate-identity-regexp 'https://github.com/garagon/aguara/.github/workflows/docker.yml@.*' \
  --certificate-oidc-issuer 'https://token.actions.githubusercontent.com' \
  ghcr.io/garagon/aguara:0.21.0
```

<details>
<summary>CHANGELOG</summary>

See [CHANGELOG.md](https://github.com/garagon/aguara/blob/v0.21.0/CHANGELOG.md#0210---2026-05-28) for the full entry.

</details>

