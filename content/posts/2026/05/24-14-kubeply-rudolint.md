---
title: rudolint
date: 2026-05-24 14:17:03 +00:00
tags:
  - kubeply
  - GitHub Actions
draft: false
repo: https://github.com/kubeply/rudolint
marketplace: https://github.com/marketplace/actions/rudolint
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kubeply/rudolint** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rudolint) to find the latest changes.

## Action Summary

`rudolint` is a high-performance Dockerfile linter designed for BuildKit and Buildx workflows. It automates the detection of syntax issues, rule violations, and best practices in Dockerfiles, supporting advanced BuildKit features like cache mounts and platform checks. Key capabilities include customizable rule profiles, CI-compatible output formats (human-readable, JSON, SARIF), and seamless integration as a GitHub Action for streamlined CI/CD pipelines.

## What's Changed

## What's Changed
* docs: add v1 findings schema by @chainyo in https://github.com/kubeply/rudolint/pull/194
* docs: reference v1 findings schema by @chainyo in https://github.com/kubeply/rudolint/pull/195
* feat: add json schema version envelope by @chainyo in https://github.com/kubeply/rudolint/pull/196
* test: validate json findings against schema by @chainyo in https://github.com/kubeply/rudolint/pull/197
* test: guard json findings public fields by @chainyo in https://github.com/kubeply/rudolint/pull/198
* docs: document json findings schema contract by @chainyo in https://github.com/kubeply/rudolint/pull/199
* docs: define json schema compatibility policy by @chainyo in https://github.com/kubeply/rudolint/pull/200
* schema: add v1 config schema by @chainyo in https://github.com/kubeply/rudolint/pull/201
* docs: add config schema examples by @chainyo in https://github.com/kubeply/rudolint/pull/202
* test: validate config fixtures against schema by @chainyo in https://github.com/kubeply/rudolint/pull/203
* docs: explain config schema editor setup by @chainyo in https://github.com/kubeply/rudolint/pull/204
* docs: document config precedence by @chainyo in https://github.com/kubeply/rudolint/pull/205
* docs: define config compatibility policy by @chainyo in https://github.com/kubeply/rudolint/pull/206
* test: add real-world corpus directory by @chainyo in https://github.com/kubeply/rudolint/pull/207
* test: add real-world corpus fixtures by @chainyo in https://github.com/kubeply/rudolint/pull/208
* docs: add real-world corpus metadata by @chainyo in https://github.com/kubeply/rudolint/pull/209
* test: snapshot real-world parser corpus by @chainyo in https://github.com/kubeply/rudolint/pull/210
* test: snapshot real-world lint corpus by @chainyo in https://github.com/kubeply/rudolint/pull/211
* test: add real-world noise fixtures by @chainyo in https://github.com/kubeply/rudolint/pull/212
* docs: document corpus update guidelines by @chainyo in https://github.com/kubeply/rudolint/pull/213
* test: guard corpus fixture determinism by @chainyo in https://github.com/kubeply/rudolint/pull/214
* docs: reshape rule roadmap as matrix by @chainyo in https://github.com/kubeply/rudolint/pull/215
* docs: add rule matrix coverage columns by @chainyo in https://github.com/kubeply/rudolint/pull/216
* docs: normalize rule matrix autofix statuses by @chainyo in https://github.com/kubeply/rudolint/pull/217
* test: require docs for implemented rules by @chainyo in https://github.com/kubeply/rudolint/pull/218
* test: require implemented rules in matrix by @chainyo in https://github.com/kubeply/rudolint/pull/219
* test: reject unknown rule matrix entries by @chainyo in https://github.com/kubeply/rudolint/pull/220
* docs: document new rule criteria by @chainyo in https://github.com/kubeply/rudolint/pull/221
* test: keep planned shell rules separate by @chainyo in https://github.com/kubeply/rudolint/pull/222
* ci: include generated release notes by @chainyo in https://github.com/kubeply/rudolint/pull/223
* ci: preserve cargo-dist release sections by @chainyo in https://github.com/kubeply/rudolint/pull/224
* ci: dry run release notes composition by @chainyo in https://github.com/kubeply/rudolint/pull/225
* docs: add v1 release process by @chainyo in https://github.com/kubeply/rudolint/pull/226
* docs: add post-release checklist by @chainyo in https://github.com/kubeply/rudolint/pull/227
* docs: document release recovery by @chainyo in https://github.com/kubeply/rudolint/pull/228
* ci: validate stable release notes tags by @chainyo in https://github.com/kubeply/rudolint/pull/229
* docs: document v1 action pinning by @chainyo in https://github.com/kubeply/rudolint/pull/230
* docs: define v1 action tag behavior by @chainyo in https://github.com/kubeply/rudolint/pull/231
* ci: update v1 action tag on release by @chainyo in https://github.com/kubeply/rudolint/pull/232
* ci: guard v1 tag updates by @chainyo in https://github.com/kubeply/rudolint/pull/233
* docs: show v1 action pinning example by @chainyo in https://github.com/kubeply/rudolint/pull/234
* docs: add v1 action docs example by @chainyo in https://github.com/kubeply/rudolint/pull/235
* docs: add marketplace tag checklist by @chainyo in https://github.com/kubeply/rudolint/pull/236
* test: add v1 docs tag guard by @chainyo in https://github.com/kubeply/rudolint/pull/237
* docs: default action examples to v1 by @chainyo in https://github.com/kubeply/rudolint/pull/238
* docs: clarify rule profile coverage by @chainyo in https://github.com/kubeply/rudolint/pull/239
* test: audit shared negative rule coverage by @chainyo in https://github.com/kubeply/rudolint/pull/240
* chore: prepare v1 version by @chainyo in https://github.com/kubeply/rudolint/pull/241


**Full Changelog**: https://github.com/kubeply/rudolint/compare/v0.2.0...v1.0.0

## Install, Downloads, Checksums, And Attestations

# rudolint 1.0.0

## Install rudolint 1.0.0

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-installer.sh | sh
```

## Download rudolint 1.0.0

|  File  | Platform | Checksum |
|--------|----------|----------|
| [rudolint-aarch64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-aarch64-apple-darwin.tar.xz) | Apple Silicon macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-aarch64-apple-darwin.tar.xz.sha256) |
| [rudolint-x86_64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-x86_64-apple-darwin.tar.xz) | Intel macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-x86_64-apple-darwin.tar.xz.sha256) |
| [rudolint-aarch64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-aarch64-unknown-linux-gnu.tar.xz) | ARM64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-aarch64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-x86_64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-x86_64-unknown-linux-gnu.tar.xz) | x64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-x86_64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-aarch64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-aarch64-unknown-linux-musl.tar.xz) | ARM64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-aarch64-unknown-linux-musl.tar.xz.sha256) |
| [rudolint-x86_64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-x86_64-unknown-linux-musl.tar.xz) | x64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-x86_64-unknown-linux-musl.tar.xz.sha256) |

## Verifying GitHub Artifact Attestations

The artifacts in this release have attestations generated with GitHub Artifact Attestations. These can be verified by using the [GitHub CLI](https://cli.github.com/manual/gh_attestation_verify):
```sh
gh attestation verify <file-path of downloaded artifact> --repo kubeply/rudolint
```

You can also download the attestation from [GitHub](https://github.com/kubeply/rudolint/attestations) and verify against that directly:
```sh
gh attestation verify <file-path of downloaded artifact> --bundle <file-path of downloaded attestation>
```

# rudolint-lsp 1.0.0

## Install rudolint-lsp 1.0.0

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-lsp-installer.sh | sh
```

## Download rudolint-lsp 1.0.0

|  File  | Platform | Checksum |
|--------|----------|----------|
| [rudolint-lsp-aarch64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-lsp-aarch64-apple-darwin.tar.xz) | Apple Silicon macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-lsp-aarch64-apple-darwin.tar.xz.sha256) |
| [rudolint-lsp-x86_64-apple-darwin.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-lsp-x86_64-apple-darwin.tar.xz) | Intel macOS | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-lsp-x86_64-apple-darwin.tar.xz.sha256) |
| [rudolint-lsp-aarch64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-lsp-aarch64-unknown-linux-gnu.tar.xz) | ARM64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-lsp-aarch64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-lsp-x86_64-unknown-linux-gnu.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-lsp-x86_64-unknown-linux-gnu.tar.xz) | x64 Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-lsp-x86_64-unknown-linux-gnu.tar.xz.sha256) |
| [rudolint-lsp-aarch64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-lsp-aarch64-unknown-linux-musl.tar.xz) | ARM64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-lsp-aarch64-unknown-linux-musl.tar.xz.sha256) |
| [rudolint-lsp-x86_64-unknown-linux-musl.tar.xz](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-lsp-x86_64-unknown-linux-musl.tar.xz) | x64 MUSL Linux | [checksum](https://github.com/kubeply/rudolint/releases/download/v1.0.0/rudolint-lsp-x86_64-unknown-linux-musl.tar.xz.sha256) |

## Verifying GitHub Artifact Attestations

The artifacts in this release have attestations generated with GitHub Artifact Attestations. These can be verified by using the [GitHub CLI](https://cli.github.com/manual/gh_attestation_verify):
```sh
gh attestation verify <file-path of downloaded artifact> --repo kubeply/rudolint
```

You can also download the attestation from [GitHub](https://github.com/kubeply/rudolint/attestations) and verify against that directly:
```sh
gh attestation verify <file-path of downloaded artifact> --bundle <file-path of downloaded attestation>
```



