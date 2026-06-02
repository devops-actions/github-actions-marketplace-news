---
title: Aguara Security Scanner
date: 2026-06-02 06:59:35 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.22.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.22.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## What's Changed

Aguara v0.22.1 adds offline detection for the Red Hat / Miasma npm compromise reported on 2026-06-01. The new advisory, `AIKIDO-2026-06-01-redhat-miasma`, flags the affected `@redhat-cloud-services/*` packages by exact package and version.

Coverage works across:

- `node_modules`
- `package-lock.json`
- `pnpm-lock.yaml`
- `yarn.lock` (classic)

No package execution and no registry lookup during the scan. This is a focused incident-response patch; the broader npm lifecycle rule work stays separate.

## Highlights

### Red Hat / Miasma npm compromise

The affected `@redhat-cloud-services/*` releases declared a `preinstall` hook that ran `node index.js`, an obfuscated install-time payload that harvested CI/OIDC tokens, npm/PyPI publish tokens, cloud credentials, Vault tokens, kubeconfig, SSH/GPG keys, Docker registry credentials, and `.env` files, published through GitHub Actions OIDC trusted-publishing abuse. `aguara check` and `aguara audit` now flag the compromised package versions offline, before install.

```sh
# fresh clone or installed tree
aguara check . --ecosystem npm

# CI gate (non-zero exit on a hit)
aguara audit . --ci
```

Matching is exact by (ecosystem, package, version), so neighbouring clean releases stay clean.

## Provenance

- Release archives are signed with Cosign keyless via Sigstore; `checksums.txt` ships with a `checksums.txt.bundle`. SPDX SBOM per archive; `-trimpath` builds.
- The Docker image is multi-arch (`linux/amd64` + `linux/arm64`), signed at digest with Cosign, with SBOM + SLSA provenance attestations.
- Image digest: `ghcr.io/garagon/aguara:0.22.1@sha256:68ea6e84dba9b151d8c34cc7d0db8cb29ba8bf2c24f95ae85f9bfca3731272d0`

## Install / upgrade

```sh
curl -fsSL https://raw.githubusercontent.com/garagon/aguara/main/install.sh | VERSION=v0.22.1 sh
brew install garagon/tap/aguara
docker pull ghcr.io/garagon/aguara:0.22.1
```

## Compatibility

- Additive intel only: one new advisory (`AIKIDO-2026-06-01-redhat-miasma`) in the embedded known-compromised list. No advisory removals; the intel schema is unchanged.
- Rule IDs, severities, exit codes, and existing flags are unchanged.
- Offline-by-default behavior is unchanged: no package execution and no registry lookup during a scan.

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
  ghcr.io/garagon/aguara:0.22.1
```

<details>
<summary>CHANGELOG</summary>

See [CHANGELOG.md](https://github.com/garagon/aguara/blob/v0.22.1/CHANGELOG.md#0221---2026-06-01) for the full entry.

</details>

