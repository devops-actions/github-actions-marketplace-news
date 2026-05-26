---
title: rudolint
date: 2026-05-26 06:26:35 +00:00
tags:
  - kubeply
  - GitHub Actions
draft: false
repo: https://github.com/kubeply/rudolint
marketplace: https://github.com/marketplace/actions/rudolint
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kubeply/rudolint** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rudolint) to find the latest changes.

## Action Summary

`rudolint` is a high-performance Dockerfile linter designed for modern BuildKit and Buildx workflows. It automates the detection of issues in Dockerfiles by providing syntax validation, compatibility checks, and BuildKit-specific rule enforcement, helping developers ensure best practices and error-free container builds. As a GitHub Action, it streamlines CI/CD pipelines by integrating linting tasks with support for multiple output formats, including SARIF for GitHub code scanning.

## What's Changed

## What's Changed
* ci: align release install URL by @chainyo in https://github.com/kubeply/rudolint/pull/254
* fix: ignore command substitutions in assignments by @chainyo in https://github.com/kubeply/rudolint/pull/255
* fix: keep continued instructions through comments by @chainyo in https://github.com/kubeply/rudolint/pull/256
* fix: accept combined quiet wget options by @chainyo in https://github.com/kubeply/rudolint/pull/257
* fix: report shell findings on offending tokens by @chainyo in https://github.com/kubeply/rudolint/pull/259
* fix: allow PATH self references in ENV by @chainyo in https://github.com/kubeply/rudolint/pull/258


**Full Changelog**: https://github.com/kubeply/rudolint/compare/v1...v1.1.1

## Install, Downloads, Checksums, And Attestations

# rudolint 1.1.1

## Install rudolint 1.1.1

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://kubeply.com/rudolint/v1.1.1/install.sh | sh
```

## Download rudolint 1.1.1

|  File  | Platform | Checksum |
|--------|----------|----------|
| [rudolint-aarch64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-aarch64-apple-darwin.tar.xz) | Apple Silicon macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-aarch64-apple-darwin.tar.xz.sha256) |
| [rudolint-x86_64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-x86_64-apple-darwin.tar.xz) | Intel macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-x86_64-apple-darwin.tar.xz.sha256) |
| [rudolint-aarch64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-aarch64-unknown-linux-gnu.tar.xz) | ARM64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-aarch64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-x86_64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-x86_64-unknown-linux-gnu.tar.xz) | x64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-x86_64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-aarch64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-aarch64-unknown-linux-musl.tar.xz) | ARM64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-aarch64-unknown-linux-musl.tar.xz.sha256) |
| [rudolint-x86_64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-x86_64-unknown-linux-musl.tar.xz) | x64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-x86_64-unknown-linux-musl.tar.xz.sha256) |

## Verifying GitHub Artifact Attestations

The artifacts in this release have attestations generated with GitHub Artifact Attestations. These can be verified by using the [GitHub CLI](https://cli.github.com/manual/gh_attestation_verify):
```sh
gh attestation verify <file-path of downloaded artifact> --repo kubeply/rudolint
```

You can also download the attestation from [GitHub](https://github.com/kubeply/rudolint/attestations) and verify against that directly:
```sh
gh attestation verify <file-path of downloaded artifact> --bundle <file-path of downloaded attestation>
```

# rudolint-lsp 1.1.1

## Install rudolint-lsp 1.1.1

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-lsp-installer.sh | sh
```

## Download rudolint-lsp 1.1.1

|  File  | Platform | Checksum |
|--------|----------|----------|
| [rudolint-lsp-aarch64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-lsp-aarch64-apple-darwin.tar.xz) | Apple Silicon macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-lsp-aarch64-apple-darwin.tar.xz.sha256) |
| [rudolint-lsp-x86_64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-lsp-x86_64-apple-darwin.tar.xz) | Intel macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-lsp-x86_64-apple-darwin.tar.xz.sha256) |
| [rudolint-lsp-aarch64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-lsp-aarch64-unknown-linux-gnu.tar.xz) | ARM64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-lsp-aarch64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-lsp-x86_64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-lsp-x86_64-unknown-linux-gnu.tar.xz) | x64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-lsp-x86_64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-lsp-aarch64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-lsp-aarch64-unknown-linux-musl.tar.xz) | ARM64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-lsp-aarch64-unknown-linux-musl.tar.xz.sha256) |
| [rudolint-lsp-x86_64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-lsp-x86_64-unknown-linux-musl.tar.xz) | x64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.1.1/rudolint-lsp-x86_64-unknown-linux-musl.tar.xz.sha256) |

## Verifying GitHub Artifact Attestations

The artifacts in this release have attestations generated with GitHub Artifact Attestations. These can be verified by using the [GitHub CLI](https://cli.github.com/manual/gh_attestation_verify):
```sh
gh attestation verify <file-path of downloaded artifact> --repo kubeply/rudolint
```

You can also download the attestation from [GitHub](https://github.com/kubeply/rudolint/attestations) and verify against that directly:
```sh
gh attestation verify <file-path of downloaded artifact> --bundle <file-path of downloaded attestation>
```



