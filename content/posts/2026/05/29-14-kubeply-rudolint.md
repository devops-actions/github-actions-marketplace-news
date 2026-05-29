---
title: rudolint
date: 2026-05-29 14:48:48 +00:00
tags:
  - kubeply
  - GitHub Actions
draft: false
repo: https://github.com/kubeply/rudolint
marketplace: https://github.com/marketplace/actions/rudolint
version: v1.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kubeply/rudolint** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rudolint) to find the latest changes.

## Action Summary

`rudolint` is a high-performance linter for Dockerfiles, designed to enhance modern BuildKit and Buildx workflows. It automates the detection of syntax issues, performance optimizations, and security best practices in Dockerfiles, offering configurable rule profiles and compatibility with Hadolint. Key features include support for BuildKit-specific directives, integration with CI pipelines (text, JSON, and SARIF outputs), editor diagnostics via Language Server Protocol (LSP), and a GitHub Action for easy integration into workflows.

## What's Changed

## What's Changed
* docs: add hadolint migration guide by @chainyo in https://github.com/kubeply/rudolint/pull/274
* docs: add docker image guide by @chainyo in https://github.com/kubeply/rudolint/pull/275
* ci: retry moving v1 release tag by @chainyo in https://github.com/kubeply/rudolint/pull/276
* fix: accept combined apt assume-yes flags by @chainyo in https://github.com/kubeply/rudolint/pull/277
* fix: accept hadolint ignored config key by @chainyo in https://github.com/kubeply/rudolint/pull/278
* fix: allow buildkit platform args in dl3029 by @chainyo in https://github.com/kubeply/rudolint/pull/279
* feat: group text findings by rule by @chainyo in https://github.com/kubeply/rudolint/pull/280
* chore(deps): update docker/login-action action to v4 by @renovate-lab[bot] in https://github.com/kubeply/rudolint/pull/281
* fix: resolve global ARG defaults for DL3006 by @chainyo in https://github.com/kubeply/rudolint/pull/282
* fix: scope RDK1009 to target-aware stages by @chainyo in https://github.com/kubeply/rudolint/pull/283


**Full Changelog**: https://github.com/kubeply/rudolint/compare/v1...v1.4.0

## Install, Downloads, Checksums, And Attestations

# rudolint 1.4.0

## Install rudolint 1.4.0

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://kubeply.com/rudolint/v1.4.0/install.sh | sh
```

## Download rudolint 1.4.0

|  File  | Platform | Checksum |
|--------|----------|----------|
| [rudolint-aarch64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-aarch64-apple-darwin.tar.xz) | Apple Silicon macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-aarch64-apple-darwin.tar.xz.sha256) |
| [rudolint-x86_64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-x86_64-apple-darwin.tar.xz) | Intel macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-x86_64-apple-darwin.tar.xz.sha256) |
| [rudolint-aarch64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-aarch64-unknown-linux-gnu.tar.xz) | ARM64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-aarch64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-x86_64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-x86_64-unknown-linux-gnu.tar.xz) | x64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-x86_64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-aarch64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-aarch64-unknown-linux-musl.tar.xz) | ARM64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-aarch64-unknown-linux-musl.tar.xz.sha256) |
| [rudolint-x86_64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-x86_64-unknown-linux-musl.tar.xz) | x64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-x86_64-unknown-linux-musl.tar.xz.sha256) |

## Verifying GitHub Artifact Attestations

The artifacts in this release have attestations generated with GitHub Artifact Attestations. These can be verified by using the [GitHub CLI](https://cli.github.com/manual/gh_attestation_verify):
```sh
gh attestation verify <file-path of downloaded artifact> --repo kubeply/rudolint
```

You can also download the attestation from [GitHub](https://github.com/kubeply/rudolint/attestations) and verify against that directly:
```sh
gh attestation verify <file-path of downloaded artifact> --bundle <file-path of downloaded attestation>
```

# rudolint-lsp 1.4.0

## Install rudolint-lsp 1.4.0

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-lsp-installer.sh | sh
```

## Download rudolint-lsp 1.4.0

|  File  | Platform | Checksum |
|--------|----------|----------|
| [rudolint-lsp-aarch64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-lsp-aarch64-apple-darwin.tar.xz) | Apple Silicon macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-lsp-aarch64-apple-darwin.tar.xz.sha256) |
| [rudolint-lsp-x86_64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-lsp-x86_64-apple-darwin.tar.xz) | Intel macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-lsp-x86_64-apple-darwin.tar.xz.sha256) |
| [rudolint-lsp-aarch64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-lsp-aarch64-unknown-linux-gnu.tar.xz) | ARM64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-lsp-aarch64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-lsp-x86_64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-lsp-x86_64-unknown-linux-gnu.tar.xz) | x64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-lsp-x86_64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-lsp-aarch64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-lsp-aarch64-unknown-linux-musl.tar.xz) | ARM64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-lsp-aarch64-unknown-linux-musl.tar.xz.sha256) |
| [rudolint-lsp-x86_64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-lsp-x86_64-unknown-linux-musl.tar.xz) | x64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.4.0/rudolint-lsp-x86_64-unknown-linux-musl.tar.xz.sha256) |

## Verifying GitHub Artifact Attestations

The artifacts in this release have attestations generated with GitHub Artifact Attestations. These can be verified by using the [GitHub CLI](https://cli.github.com/manual/gh_attestation_verify):
```sh
gh attestation verify <file-path of downloaded artifact> --repo kubeply/rudolint
```

You can also download the attestation from [GitHub](https://github.com/kubeply/rudolint/attestations) and verify against that directly:
```sh
gh attestation verify <file-path of downloaded artifact> --bundle <file-path of downloaded attestation>
```



## Container Image

```sh
docker run --rm -v "$PWD:/workspace" ghcr.io/kubeply/rudolint check /workspace
```

The container image is published as:

- `ghcr.io/kubeply/rudolint:v1.4.0`
- `ghcr.io/kubeply/rudolint:v1`
- `ghcr.io/kubeply/rudolint:latest`

