---
title: Tailor your Templates
date: 2026-03-12 05:54:56 +00:00
tags:
  - wimpysworld
  - GitHub Actions
draft: false
repo: https://github.com/wimpysworld/tailor
marketplace: https://github.com/marketplace/actions/tailor-your-templates
version: v0.1.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/wimpysworld/tailor** to version **v0.1.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tailor-your-templates) to find the latest changes.

## Action Summary

The "Tailor" GitHub Action automates the setup and maintenance of GitHub repositories by ensuring they adhere to GitHub's community standards. It provides consistent project templates, including community health files, security policies, development tooling, repository settings, and automated updates like Dependabot automerge workflows. Tailor is designed to help solo developers and small teams manage multiple repositories efficiently, solving issues related to configuration drift and reducing overhead.

## Release notes

## Changelog
* 03ba820669c4ada8d35e03b11e3f013a70019a5b: build(deps): bump docker/setup-buildx-action (@dependabot[bot])
* 67db06fc616b27a74005d1820becfaec655a2990: build(release): use binaries field for Homebrew cask configuration (@flexiondotorg)
* 6b1fcb4b55b9c26874716c8fe733e0d8556c1d80: chore(build): add v prefix to git tags in release recipe (@flexiondotorg)
* e7a7a80fb78fe9d4a3fd14c4593f9e867fc1e9f0: chore(dev): add gocyclo and ineffassign to flake and lint command (@flexiondotorg)
* 73c4c84f873879ec71fa295be26c4606a803dad7: ci(dependabot): add swatch workflows to GitHub Actions version tracking (@flexiondotorg)
* 0f606a4fbe21f3f24dd9dad37eb7852cfe60019f: ci(govulncheck): use master as it has dependency updates (@flexiondotorg)
* 703f10da7100987c19d93dbd04ae3ab8c22548b6: ci(nix): consistent job naming (@flexiondotorg)
* 2e55628359c30b3a80408faf3c600d1f976375d7: ci(release): add retry logic for transient GHCR timeouts (@flexiondotorg)
* cce129ee385282197d681cac99249ec01f67beef: ci(release): install Nix to provide nix-hash for GoReleaser (@flexiondotorg)
* e90d20f56286e104a46fc1ea9d6cda43348a59a5: ci(workflows): add code quality checks and Go Report Card refresh (@flexiondotorg)
* 268780c703343f0b9b7c4fec659af392a740962e: ci(workflows): add security workflow and pin action versions (@flexiondotorg)
* 790aed3740f6d0bc5225721923a4509ae60c9461: ci(workflows): consolidate automerge jobs and standardise merge strategy (@flexiondotorg)
* c81099c7d42a6da8cee23b1a97d45c291777fe59: ci(workflows): consolidate govulncheck into builder and add weekly schedule (@flexiondotorg)
* af912a7164ba9bc5d731f5ddee56a5a21fc8d86a: ci(workflows): refactor release job to use matrix strategy for variants (@flexiondotorg)
* e2ee1eb81dcb24988d26e925217981f52b65bd3d: ci(workflows): use major version pins for GitHub Actions (@flexiondotorg)
* 1f09f59d3b1a048bd2a0bf6fb8b01da71882615c: docs(action): update GitHub Action metadata with descriptive naming and usage (@flexiondotorg)
* f17cf6ffaade2d1ad5fd9aab74530eca129b8c77: feat(action): add gated inputs to run tailor commands (@flexiondotorg)
* a5175cf741f16fd64c16b7b294cb7f0f0ad92a27: feat(nix): integrate wimpysworld/nix-packages as external Nix registry (@flexiondotorg)
* 31c40854f779a3e202908873b7cf063cfbcfa807: feat(swatch): add security workflow and fix topics preservation (@flexiondotorg)
* 425e5eb029c16fe13ea93373c131ffd449a5279b: feat: publish GitHub Action from main repo with v-prefixed tags (@flexiondotorg)
* 6d0e9ff715af6a4903da2dfab712bf4116e1d8bf: fix(action): guard against jq returning null for empty version results (@flexiondotorg)
* 4279e3af5c320aaaed8e7121881974540c071983: fix(action): resolve version detection in composite action (@flexiondotorg)
* 8b8c4ce5898dbac47352bda2c77e9e5d6cbce61d: fix(alter,swatch): align swatch output and recut behaviour with spec (@flexiondotorg)
* 526d3683196d0341bc3327bbe14c74c6f2664ae3: fix(alter,swatch): correct recut output for triggered swatches (@flexiondotorg)
* b201df7f3e85e0b2660f6c0ebdb93379b2d406c7: fix(ci): add least-privilege permissions to GitHub Actions workflows (@flexiondotorg)
* fd616eca985e404d3f36675664e054023f157b0e: fix(ci): prevent release job from running on schedule events (@flexiondotorg)
* ba464974bf0d54606a54bb35227d2d391a29c5ea: fix(config): preserve empty topics slice in yaml serialisation (@flexiondotorg)
* fc37102ebca530b3ea3a592a47dfe1e28d670db0: fix(security): resolve flake-lock detection in job conditions (@flexiondotorg)
* 43144d31ae371356b96af44ed60e04b8f805d718: fix(workflows): correct CodeQL and flake-lock handling in security swatch (@flexiondotorg)
* 447ff18b1f1e55a935df2ab85ec351b4cf5a7834: flake.lock: Update (@github-actions[bot])
* a58dff2d8fb18f600abb24597a636090735365a5: refactor(workflows): consolidate security scanning and simplify swatch management (@flexiondotorg)
* 607944d55f76df08f83f09f327d974086d2b3a11: refactor(workflows): consolidate update-action-tag into builder (#37) (@flexiondotorg)

## Install

**bin** (any platform):
```shell
bin install github.com/wimpysworld/tailor
```
Requires [`bin`](https://github.com/marcosnils/bin).

**Homebrew**: `brew install wimpysworld/tap/tailor`

**Nix**: `nix run github:wimpysworld/tailor`

**Docker**: `docker run --rm ghcr.io/wimpysworld/tailor --version`

**Native packages**: download `.deb`, `.rpm`, `.apk`, or Arch Linux packages from the assets above. AUR: [`tailor-bin`](https://aur.archlinux.org/packages/tailor-bin).

Tailor needs a GitHub authentication token. Set `GH_TOKEN` or `GITHUB_TOKEN`, or run `gh auth login` locally.


