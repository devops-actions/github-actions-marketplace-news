---
title: hestia-cache
date: 2026-07-04 14:30:13 +00:00
tags:
  - Mic92
  - GitHub Actions
draft: false
repo: https://github.com/Mic92/hestia
marketplace: https://github.com/marketplace/actions/hestia-cache
version: v2.0.0
dependentsNumber: "8"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Mic92/hestia** to version **v2.0.0**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hestia-cache) to find the latest changes.

## What's Changed

## Usage

```yaml
- uses: Mic92/hestia@v2.0.0
  with:
    version: v2.0.0
```

## ⚠️ New cache format — one-time reset

v2 introduces a new on-disk cache format, so **existing cache entries from
v1 will not be reused**. The first runs after upgrading repopulate the cache
from scratch; old data ages out automatically via GC. No action is required.

The format change unlocks the headline improvement below.

## Highlights

- **Reference normalization for cross-rebuild dedup.** Nix store paths embed
  the hashes of their dependencies in file contents. Previously, rebuilding a
  dependency changed those embedded hashes and churned the cache, defeating
  deduplication. v2 zeroes out (nullifies) these reference hashes before
  chunking and restores them on the way out, so unchanged files stay identical
  across rebuilds. Result: far better dedup and smaller uploads when only a
  low-level dependency changes.

- **Much faster chunking.** Parallel chunking of large files across cores,  
 BLAKE3 instead of SHA-256 for internal content addresses (~3x faster hashing) 
  and general drain-path tuning roughly tripled throughput (~25 → ~70+ Mbit/s on my Framework laptop).

- **Clear message for read-only tokens.** On workflows without cache write
  access (forks, `pull_request` from forks, `check_run`), hestia now detects
  the read-only token at startup and reports it clearly instead of failing at
  the end of the run with a confusing "drain failed" warning. Reads still work,
  so substitutions keep being served.

**Full Changelog**: https://github.com/Mic92/hestia/compare/v1...v2.0.0

