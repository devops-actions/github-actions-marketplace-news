---
title: Tailor your Templates
date: 2026-03-12 21:38:40 +00:00
tags:
  - wimpysworld
  - GitHub Actions
draft: false
repo: https://github.com/wimpysworld/tailor
marketplace: https://github.com/marketplace/actions/tailor-your-templates
version: v0.1.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/wimpysworld/tailor** to version **v0.1.2**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tailor-your-templates) to find the latest changes.

## Action Summary

The Tailor GitHub Action automates the setup and maintenance of GitHub repository configurations, ensuring they align with community standards and remain consistent across projects. It manages tasks such as applying community health files, security policies, and repository settings while providing automated updates and Dependabot integration for seamless patch and minor version upgrades. This action is ideal for solo developers and small teams seeking to standardize and streamline repository management without manual effort.

## Release notes

## Changelog
* c1b09e5c15cc6e5da973f14dd04eaaf34063568f: ci(workflows): add cubic.dev AI code review configuration (@flexiondotorg)
* 69e0252234bbb6c11bea08b4afd7f54c0448aab2: ci(workflows): add tailor baste step to builder workflow (@flexiondotorg)
* e7a698173758f936656b8ebcd471dc3e90a16252: ci(workflows): block prerelease tags from updating floating version (@flexiondotorg)
* 2db0998a617967fef4a73f8b76dc3129aa0c1afd: ci(workflows): make TAILOR_TOKEN conditional with GITHUB_TOKEN fallback (@flexiondotorg)
* 492931fd5d8ac0824b0a672ed48534180ed81162: ci(workflows): move report-card into release job (@flexiondotorg)
* 1eab375494b43cc56007612506165a14b46bf436: ci(workflows): refactor release workflow to fix GitHub Actions trigger bug (@flexiondotorg)
* 3d5d2d152394f1d4f9321c36de0786d32bc930dc: feat(ci): detect and handle GitHub Actions installation token limitations (@flexiondotorg)
* b96c946daa86e55c4654ea2fc1bbf5ee4a1706d3: feat(gh): resolve GITHUB_USERNAME from Actions env in CI environments (@flexiondotorg)
* 40f060c325588a538c573d911f83ef5e504ba97e: feat(swatch): add cubic.dev AI code review configuration (@flexiondotorg)
* 9e55fb51f02c261b1c33301930a794a418f11f02: fix(gh): probe GET /user endpoint to detect installation token type (@flexiondotorg)
* 62f997f4f92bb9b13b2ef17642e08e7bf91133bf: flake.lock: Update (@github-actions[bot])
* 5ad8bdfc23bebc3427a253485a27c211e6b9c3bc: nix(flake): add published tailor to the dev shell (@flexiondotorg)
* b5430167d31d137a3bed1ae084f7665c10dba8ed: nix(swatches): add tailor from nix-packages input (@flexiondotorg)
* 985391c468899a97af95e60a395938aeb5ad3159: refactor(errors): remove dead admin operation entries (@flexiondotorg)
* 356170899746df51e7648c7e0316f1c66805d0ec: refactor(internal): replace deprecated reflect.Ptr with reflect.Pointer (@flexiondotorg)
* b72819ff2b3081a7ebd6da40250124ba0469b0d1: refactor(settings): remove admin-only repository fields from model (@flexiondotorg)
* 002f2b7fdf2c8c89c7d834418d9f8ddf5503f8b9: test(gh): isolate FetchUsername tests from GitHub Actions env vars (@flexiondotorg)

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


