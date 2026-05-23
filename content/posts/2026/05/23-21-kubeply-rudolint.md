---
title: rudolint
date: 2026-05-23 21:40:59 +00:00
tags:
  - kubeply
  - GitHub Actions
draft: false
repo: https://github.com/kubeply/rudolint
marketplace: https://github.com/marketplace/actions/rudolint
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kubeply/rudolint** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rudolint) to find the latest changes.

## Action Summary

Rudolint is a high-performance Dockerfile linter designed for modern BuildKit and Buildx workflows. It automates the detection of syntax errors, best practices violations, and BuildKit-specific issues in Dockerfiles, offering support for advanced features like cache mounts, secret mounts, and platform checks. Key capabilities include customizable rule profiles, CI integration with JSON and SARIF outputs, and a GitHub Action for streamlined usage in development pipelines.

## What's Changed

# v0.2.0

## What's Changed
* perf: complete milestone 15 benchmarks by @chainyo in https://github.com/kubeply/rudolint/pull/175
* chore: Configure Renovate by @renovate-lab[bot] in https://github.com/kubeply/rudolint/pull/176
* docs: align roadmap with release status by @chainyo in https://github.com/kubeply/rudolint/pull/177
* ci: skip rust checks for docs-only PRs by @chainyo in https://github.com/kubeply/rudolint/pull/178
* feat(lsp): add diagnostic conversion by @chainyo in https://github.com/kubeply/rudolint/pull/179
* feat(lsp): lint opened documents by @chainyo in https://github.com/kubeply/rudolint/pull/180
* feat(lsp): lint changed documents by @chainyo in https://github.com/kubeply/rudolint/pull/182
* fix(lsp): validate all document change events by @chainyo in https://github.com/kubeply/rudolint/pull/183
* feat(lsp): discover editor workspace config by @chainyo in https://github.com/kubeply/rudolint/pull/184
* fix(lsp): address config discovery review by @chainyo in https://github.com/kubeply/rudolint/pull/185
* feat(lsp): add rule hover explanations by @chainyo in https://github.com/kubeply/rudolint/pull/186
* feat(lsp): add safe fix code actions by @chainyo in https://github.com/kubeply/rudolint/pull/187
* test(lsp): cover diagnostic source ranges by @chainyo in https://github.com/kubeply/rudolint/pull/188
* feat: add rudolint lsp server binary by @chainyo in https://github.com/kubeply/rudolint/pull/189
* test: cover lsp stdio server by @chainyo in https://github.com/kubeply/rudolint/pull/190
* docs: prepare marketplace publication by @chainyo in https://github.com/kubeply/rudolint/pull/191
* feat: rename compat profile and clean readme by @chainyo in https://github.com/kubeply/rudolint/pull/192
* chore: prepare v0.2.0 release by @chainyo in https://github.com/kubeply/rudolint/pull/193

## New Contributors
* @renovate-lab[bot] made their first contribution in https://github.com/kubeply/rudolint/pull/176

**Full Changelog**: https://github.com/kubeply/rudolint/compare/v0.1.0...v0.2.0

---

# rudolint 0.2.0

## Install rudolint 0.2.0

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-installer.sh | sh
```

## Download rudolint 0.2.0

|  File  | Platform | Checksum |
|--------|----------|----------|
| [rudolint-aarch64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-aarch64-apple-darwin.tar.xz) | Apple Silicon macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-aarch64-apple-darwin.tar.xz.sha256) |
| [rudolint-x86_64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-x86_64-apple-darwin.tar.xz) | Intel macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-x86_64-apple-darwin.tar.xz.sha256) |
| [rudolint-aarch64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-aarch64-unknown-linux-gnu.tar.xz) | ARM64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-aarch64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-x86_64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-x86_64-unknown-linux-gnu.tar.xz) | x64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-x86_64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-aarch64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-aarch64-unknown-linux-musl.tar.xz) | ARM64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-aarch64-unknown-linux-musl.tar.xz.sha256) |
| [rudolint-x86_64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-x86_64-unknown-linux-musl.tar.xz) | x64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-x86_64-unknown-linux-musl.tar.xz.sha256) |

## Verifying GitHub Artifact Attestations

The artifacts in this release have attestations generated with GitHub Artifact Attestations. These can be verified by using the [GitHub CLI](https://cli.github.com/manual/gh_attestation_verify):
```sh
gh attestation verify <file-path of downloaded artifact> --repo kubeply/rudolint
```

You can also download the attestation from [GitHub](https://github.com/kubeply/rudolint/attestations) and verify against that directly:
```sh
gh attestation verify <file-path of downloaded artifact> --bundle <file-path of downloaded attestation>
```

# rudolint-lsp 0.2.0

## Install rudolint-lsp 0.2.0

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-lsp-installer.sh | sh
```

## Download rudolint-lsp 0.2.0

|  File  | Platform | Checksum |
|--------|----------|----------|
| [rudolint-lsp-aarch64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-lsp-aarch64-apple-darwin.tar.xz) | Apple Silicon macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-lsp-aarch64-apple-darwin.tar.xz.sha256) |
| [rudolint-lsp-x86_64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-lsp-x86_64-apple-darwin.tar.xz) | Intel macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-lsp-x86_64-apple-darwin.tar.xz.sha256) |
| [rudolint-lsp-aarch64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-lsp-aarch64-unknown-linux-gnu.tar.xz) | ARM64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-lsp-aarch64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-lsp-x86_64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-lsp-x86_64-unknown-linux-gnu.tar.xz) | x64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-lsp-x86_64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-lsp-aarch64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-lsp-aarch64-unknown-linux-musl.tar.xz) | ARM64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-lsp-aarch64-unknown-linux-musl.tar.xz.sha256) |
| [rudolint-lsp-x86_64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-lsp-x86_64-unknown-linux-musl.tar.xz) | x64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v0.2.0/rudolint-lsp-x86_64-unknown-linux-musl.tar.xz.sha256) |

## Verifying GitHub Artifact Attestations

The artifacts in this release have attestations generated with GitHub Artifact Attestations. These can be verified by using the [GitHub CLI](https://cli.github.com/manual/gh_attestation_verify):
```sh
gh attestation verify <file-path of downloaded artifact> --repo kubeply/rudolint
```

You can also download the attestation from [GitHub](https://github.com/kubeply/rudolint/attestations) and verify against that directly:
```sh
gh attestation verify <file-path of downloaded artifact> --bundle <file-path of downloaded attestation>
```




