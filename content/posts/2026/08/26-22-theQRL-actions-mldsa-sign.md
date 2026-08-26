---
title: Generate ML-DSA Signatures
date: 2026-08-26 22:40:20 +00:00
tags:
  - theQRL
  - GitHub Actions
draft: false
repo: https://github.com/theQRL/actions-mldsa-sign
marketplace: https://github.com/marketplace/actions/generate-ml-dsa-signatures
version: v1.0.0
dependentsNumber: "1"
actionType: Docker
actionSummary: |
  The GitHub Action `actions-mldsa-sign` automates the generation of ML-DSA-87 (FIPS 204) post-quantum signatures for files. It solves the problem of securely signing artifacts to ensure they cannot be reused for other purposes, using a context string for domain separation. The action requires a hexseed and a context string, supports multiple file patterns, and outputs a signatures file with one line per signed file, signature first.
---


Version updated for **https://github.com/theQRL/actions-mldsa-sign** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/generate-ml-dsa-signatures) to find the latest changes.

## Action Summary

The GitHub Action `actions-mldsa-sign` automates the generation of ML-DSA-87 (FIPS 204) post-quantum signatures for files. It solves the problem of securely signing artifacts to ensure they cannot be reused for other purposes, using a context string for domain separation. The action requires a hexseed and a context string, supports multiple file patterns, and outputs a signatures file with one line per signed file, signature first.

## What's Changed

# actions-mldsa-sign

Initial public release of `actions-mldsa-sign` — a GitHub Action that signs build artifacts with **ML-DSA-87 (FIPS 204)** post-quantum signatures.

It supersedes [`actions-dilithium-sign`](https://github.com/theQRL/actions-dilithium-sign), which is deprecated.

## Usage

```yaml
- uses: theQRL/actions-mldsa-sign@v1
  with:
    patterns: |
      dist/*.zip
    hexseed: ${{ secrets.MLDSA_HEXSEED }}
    context: my-app-releases
    output: signatures.txt
```

## Inputs

| Input | Required | Default | Description |
|---|---|---|---|
| `hexseed` | Yes | – | ML-DSA hexseed used for signing — store it as a repository secret |
| `context` | Yes | – | Context string for FIPS 204 domain separation (0–255 bytes) |
| `patterns` | Yes | – | Glob patterns for files to sign, one per line |
| `output` | No | `signatures.txt` | Path of the generated signatures file |

## Output

One line per signed file, signature first:

```
<signature_hex> dist/artifact.zip
```

## Before your first signed release

- **`context` is effectively permanent.** A signature only verifies under the exact context string that produced it, so choose a stable, application-specific value (e.g. `myapp-release-signatures`) before you publish anything signed.
- **Generate a fresh ML-DSA hexseed** with [qrlft](https://github.com/theQRL/qrlft): `qrlft new -a mldsa --context="my-app-releases" mykey`.
- **Publish the matching public key** (`mykey.pub`) wherever your users can reach it, and verify your first signed release before announcing it.

## Verifying

```bash
qrlft verify -a mldsa --context="my-app-releases" \
  --signature=<sig_hex> --pkfile=mykey.pub artifact.zip
```

Exit code 0 and `Signature is valid` means the artifact is byte-for-byte what was signed. Note that `--sigfile` expects a file containing only a signature, so extract the relevant line from the signatures file first.

## Notes

- Runs as a Docker action from `ghcr.io/theqrl/actions-mldsa-sign:v1.0.0`, which bundles qrlft v4.0.0.
- For supply-chain hardening, pin by commit SHA rather than by tag:
  ```yaml
  uses: theQRL/actions-mldsa-sign@97a05abefff417d595c28c7b5d9d886ebe2fe9d0 # v1.0.0
  ```

Migration guidance from `actions-dilithium-sign` is in the [README](https://github.com/theQRL/actions-mldsa-sign#migrating-from-actions-dilithium-sign).


**Full Changelog**: https://github.com/theQRL/actions-mldsa-sign/commits/v1.0.0
