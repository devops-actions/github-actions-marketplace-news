---
title: Nexora NHI Scanner
date: 2026-02-24 13:22:58 +00:00
tags:
  - Nexora-NHI
  - GitHub Actions
draft: false
repo: https://github.com/Nexora-NHI/nexora-cli
marketplace: https://github.com/marketplace/actions/nexora-nhi-scanner
version: v0.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Nexora-NHI/nexora-cli** to version **v0.1.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nexora-nhi-scanner) to find the latest changes.

## Action Summary

The `nexora-cli` is an open-source command-line tool that identifies Non-Human Identity (NHI) risks in GitHub Actions workflows, Kubernetes manifests, and Terraform/IaC files through static analysis. It automates the detection of misconfigurations such as unpinned actions, hardcoded secrets, and overly permissive IAM policies, helping prevent security breaches involving machine credentials and service accounts. The CLI runs locally without telemetry or external dependencies, offering features like detailed findings, SARIF reporting for code scanning, and tamper-evident evidence bundles.

## Release notes

## Changelog
* 811886f6a80505ad8cdc6ae800340c85ec299b4b feat: initial release of nexora-cli v0.1.0
* 553828289eefed7598efb61f1f76f161c92b6a46 feat: surface NHIContext in table output, add scan workflows command, fix all audit findings
* 46eb13d83f66a8789414b07be3a3bfb299cedf2d fix(ci): align cmd imports with goimports
* 23aaaa8ae639336b025293e05672007f109fe0c2 fix(ci): fix golangci-lint v2 config schema, exclude gosec false positives G115/G306
* f4b8b06f6984a47192df4e420764e8156f223778 fix(ci): gofmt output and finalize golangci-lint v2 config
* 56499058a2f21a3655695aecf4599896ad692302 fix(ci): migrate golangci-lint to v2 config, update Go to 1.24, bump deps, fix coverage path
* ac50293c202a4d4955e945da7f1cc9e4caa0f5d3 fix(ci): move permissions to job level across all workflows
* 8724c48a6fda63e6be2f3d88cbce1f3488bf257d fix(ci): remove gofmt linter and use Go 1.24.13 across jobs
* cb0e6366ddfb50321098e8254695c35ed1367420 fix(ci): remove unsupported gosimple linter for golangci-lint v2
* bbe20d1bdab61e300372b233e54b50897b9b1ef7 fix(ci): resolve lint schema, SARIF windows path normalization, and gosec G104
* fd218c62657aa1465ada41cd32c5bac1d26722b5 fix(ci): satisfy errcheck for bundle, report, verify, version
* ff7040a34db7ec1e6307e81b310a30f796ed3472 fix(ci): update pinned action SHAs - setup-go dead SHA was breaking all CI runs
* 3471f01ca2bd4b78079d659c12afedf8cab3fc2b fix(iac): remove duplicate reHCLWildcard regex, fix reAWSSecretKey optional quotes
* f5f2ae21c19ecd6890bbb926b8759e2b74fd99b4 fix(lint): commit goimports-formatted internal package files
* a41603adbcc5c85e8a18eab11db05a3b1e8ab8f7 fix(release): add Docker login step for ghcr.io
* f88223cd512b5b5184be03dc46c0107dca6a661e fix(release): fix cosign v4 sign-blob args and deprecated archive format
* ce241df2f13570acbd9d649596e1ac02dec4ae50 fix(release): update action SHAs to valid pinned versions
* 32cbd3d1f72b55dc1a6497e246ccb9eea685494b fix(v3.1): SARIF determinism, relative URIs, integration tests, Makefile awk
* b388306a0c93cd361788c44396714750c696e2da fix: C1-C4 H1-H3 M1-M4 enterprise audit fixes
* 3b115760e78c2f740484233bcef8aeb21ec3699c fix: address all audit findings from cross-functional security review
* dfe919a0e83d0ad812b1a9d507e681e0720d455b fix: correct AWS_SECRET_KEY redaction regex + expand test coverage
* c4240cc1bbc1113ff8bac9781e65d74a7d862de7 refactor: rename org from Nexora-Inc-AFNOOR-LLC-DBA-NEXORA-INC to Nexora-NHI
* 78399f245a6e3c47ac86ee2632f00840d7b319fd research: add CI/CD NHI scan findings from 18 open-source repos
* b0422f412ef3fdc974615765a8fa68668c1c5c63 test(output): SARIF determinism, relative URI, redaction scope, metadata integrity


