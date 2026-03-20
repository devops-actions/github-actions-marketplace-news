---
title: Aptu Triage
date: 2026-03-20 05:51:14 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.2.17
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.2.17**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered triage utility designed to automate and enhance open-source software (OSS) project management tasks. It simplifies issue triage, pull request reviews, release note generation, and security scanning by using task-specialized AI models that focus on code quality and precision. With GitHub Action integration, it enables auto-triage of issues, streamlining workflows and improving development efficiency.

## Release notes

## Split Binary Distribution

This release splits the combined tarball into two independently signed and attested archives -- one per binary. This fixes `cargo binstall aptu-mcp` and gives each binary its own provenance attestation, Homebrew formula, and Debian package.

### Highlights

- **Split Tarballs** -- `aptu-VERSION-TARGET.tar.gz` and `aptu-mcp-VERSION-TARGET.tar.gz` are now separate, independently signed and attested (#929)
- **`cargo binstall aptu-mcp`** -- Now resolvable via its own `[package.metadata.binstall]` entry in `aptu-mcp`
- **Homebrew** -- Separate `aptu` and `aptu-mcp` formulae; each installs only its own binary
- **Debian** -- Separate `aptu-cli_*.deb` and `aptu-mcp_*.deb` packages

---

## Installation

**Homebrew (macOS/Linux)**
```bash
brew install clouatre-labs/tap/aptu
brew install clouatre-labs/tap/aptu-mcp
```

**Debian/Ubuntu**
```bash
sudo dpkg -i aptu-cli_0.2.17-1_amd64.deb
sudo dpkg -i aptu-mcp_0.2.17-1_amd64.deb
```

**Cargo**
```bash
cargo binstall aptu-cli
cargo binstall aptu-mcp
```

---

## What's Changed

### Features

- **Split tarballs** -- One archive per binary with independent signing, attestation, and binstall metadata (#929)

### Maintenance

- **Version bump** -- 0.2.16 -> 0.2.17 (#931)

---

## Contributors

- @clouatre
