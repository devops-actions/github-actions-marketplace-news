---
title: Set up Rocq
date: 2026-07-26 06:32:00 +00:00
tags:
  - tchajed
  - GitHub Actions
draft: false
repo: https://github.com/tchajed/setup-rocq
marketplace: https://github.com/marketplace/actions/set-up-rocq
version: v1.11.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub action installs Rocq and its dependencies using OPAM, supports caching of OPAM packages, and optionally deletes OCaml binary annotations to save cache space. It automates the setup process for developers working with Rocq by handling versioning, repository management, and caching configurations efficiently.
---


Version updated for **https://github.com/tchajed/setup-rocq** to version **v1.11.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-up-rocq) to find the latest changes.

## Action Summary

This GitHub action installs Rocq and its dependencies using OPAM, supports caching of OPAM packages, and optionally deletes OCaml binary annotations to save cache space. It automates the setup process for developers working with Rocq by handling versioning, repository management, and caching configurations efficiently.

## What's Changed

## Strip `.cmt`/`.cmti` from the switch before saving the cache (#79)

The post step now deletes OCaml binary annotation files from the opam root just before uploading the cache. New `strip-binary-annotations` input, default `true`.

`.cmt`/`.cmti` are what merlin, ocaml-lsp and odoc read to answer questions about source. `ocamlfind`, `dune`, `ocamlopt` and Rocq itself never look at them, so a switch whose only job is to build projects doesn't need them — and they're the largest single chunk of the cache.

Measured on a real switch (gzip -1 standing in for zstd; the relative share is the point):

| set | size | share |
| --- | --- | --- |
| full switch | 840.6 MB | 100% |
| `.cmt`/`.cmti` | 183.8 MB | **21.9%** |
| `.opam-switch/sources` + `build` | 63.4 MB | 7.5% |
| `.byte` bytecode | 27.9 MB | 3.3% |
| `doc` + `man` | 2.4 MB | 0.3% |

Only the first row is stripped. `.opam-switch/sources` and `build` are left alone because for `rocq-version: dev` / `weekly` they back pinned packages, and dropping them risks forcing a re-fetch — the opposite of what a cache is for.

Smaller caches matter beyond upload time: the repository cache quota is 10GB, and staying under it is what keeps the default-branch cache from being evicted (see v1.10.0).

### Safety

Deleting these files doesn't disturb opam's bookkeeping — opam tracks which packages are installed, not a checksum over their files — so an incremental `opam install` against a restored switch still sees every package as present.

Verified on a switch that had been fully stripped: a forced `make core` rebuild recompiled through the whole dependency chain cleanly, and `ocamlfind ocamlopt -package str -linkpkg` compiled, linked and ran.

### Opting out

Set `strip-binary-annotations: false` if your workflow runs merlin, ocaml-lsp or odoc against the restored switch:

```yaml
- uses: tchajed/setup-rocq@v1
  with:
    strip-binary-annotations: false
```
