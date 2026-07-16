---
title: SBOMForge
date: 2026-07-16 06:31:43 +00:00
tags:
  - Richonn
  - GitHub Actions
draft: false
repo: https://github.com/Richonn/SBOMForge
marketplace: https://github.com/marketplace/actions/sbomforge
version: v1.4.0
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  SBOMForge is a GitHub Action that automates the creation, signing, and attaching of Software Bill of Materials (SBOM) for projects using Syft and Cosign. It helps ensure compliance with security requirements like SLSA by providing a zero-config solution to generate and attach SBOMs to GitHub releases.
---


Version updated for **https://github.com/Richonn/SBOMForge** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbomforge) to find the latest changes.

## Action Summary

SBOMForge is a GitHub Action that automates the creation, signing, and attaching of Software Bill of Materials (SBOM) for projects using Syft and Cosign. It helps ensure compliance with security requirements like SLSA by providing a zero-config solution to generate and attach SBOMs to GitHub releases.

## What's Changed

**Released:** 2026-07-15

---

## New feature

SBOMForge can now generate a signed SLSA provenance attestation alongside each SBOM. Enable it with the new `attest` input:

```yaml
- uses: Richonn/SBOMForge@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    attest: "true"
  permissions:
    id-token: write   # required for cosign keyless signing
```

For each SBOM produced, SBOMForge generates a `.provenance` file — an [in-toto](https://in-toto.io) statement with a [SLSA 0.2](https://slsa.dev/provenance/v0.2) predicate — signed with Cosign keyless and uploaded to the release as a separate asset.

The provenance records:

- The SHA256 digest of the SBOM it attests
- The source commit (`GITHUB_SHA`), ref, and workflow entrypoint
- The build invocation ID (link to the Actions run)
- Builder identity (`https://github.com/Richonn/SBOMForge`)

This makes each SBOM verifiably tied to a specific build: anyone can confirm that a given SBOM was produced by SBOMForge, from a known commit, in a specific Actions run.

Verify the provenance signature locally:

```bash
cosign verify-blob \
  --bundle=sbom.spdx-json.json.provenance.bundle \
  sbom.spdx-json.json.provenance
```

The feature is **opt-in** (`attest: "false"` by default) to avoid requiring `id-token: write` on existing workflows.

---

## Changes

- `feat(provenance)` — new `internal/provenance` package: generate SLSA 0.2 in-toto statement, compute SBOM SHA256 digest, sign with `cosign sign-blob`
- `feat(release)` — add `UploadFile()` to upload provenance as a release asset
- `feat(config)` — add `Attest bool`, parse `INPUT_ATTEST`
- `feat(main)` — call `provenance.Generate()` + `client.UploadFile()` per SBOM when `attest` is enabled
- `feat(action)` — add `attest` input to `action.yml`
- `test(provenance)` — 6 tests: file creation, valid JSON, subject digest, cosign failure, sha256 helper
- `docs` — add SLSA provenance section to README, update inputs table, check roadmap item

