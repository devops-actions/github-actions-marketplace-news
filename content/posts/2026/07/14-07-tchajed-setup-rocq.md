---
title: Set up Rocq
date: 2026-07-14 07:54:48 +00:00
tags:
  - tchajed
  - GitHub Actions
draft: false
repo: https://github.com/tchajed/setup-rocq
marketplace: https://github.com/marketplace/actions/set-up-rocq
version: v1.7.6
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the installation of Rocq, a theorem prover, with OPAM (OCaml Package Manager). It supports caching opam dependencies to speed up future builds and allows for customizing the version of Rocq installed through its inputs. Additionally, it provides options to specify additional Opam repositories and files used in cache generation.
---


Version updated for **https://github.com/tchajed/setup-rocq** to version **v1.7.6**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-up-rocq) to find the latest changes.

## Action Summary

This GitHub Action automates the installation of Rocq, a theorem prover, with OPAM (OCaml Package Manager). It supports caching opam dependencies to speed up future builds and allows for customizing the version of Rocq installed through its inputs. Additionally, it provides options to specify additional Opam repositories and files used in cache generation.

## What's Changed

## What's changed

- Updated undici to 6.27.0, fixing CVE-2026-12151 (denial of service due to unbounded memory) and several other undici CVEs (#67).
- Updated `@actions/glob` to 0.7.0 (#60).
- Updated `actions/checkout` to v7 in workflows (#65).
- Updated development dependencies, including ESLint, Prettier, prettier-eslint, Rollup, and typescript-eslint (#63, #64, #68, #69).
- Excluded the generated `dist/` output from Trivy scans to fix false-positive secret findings in CI.

The major version tag `v1` has been updated to point at this release.
