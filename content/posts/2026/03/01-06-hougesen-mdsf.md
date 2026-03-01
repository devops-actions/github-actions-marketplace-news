---
title: setup-mdsf
date: 2026-03-01 06:09:26 +00:00
tags:
  - hougesen
  - GitHub Actions
draft: false
repo: https://github.com/hougesen/mdsf
marketplace: https://github.com/marketplace/actions/setup-mdsf
version: v0.12.0
dependentsNumber: "6"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/hougesen/mdsf** to version **v0.12.0**.
- This action is used across all versions by **6** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-mdsf) to find the latest changes.

## Action Summary

The `mdsf` GitHub Action is a tool designed to automate the formatting and linting of code snippets within Markdown files using user-specified tools. It simplifies the process of maintaining consistent formatting and code quality across documentation files by integrating with popular editors, Git pre-commit hooks, and CI/CD pipelines. Key capabilities include formatting, verifying code snippets, caching results, and supporting custom tools and configurations for tailored workflows.

## Release notes

This release adds support for defining your config file using TOML and YAML.

Support has also been added for the following tools:

- action-validator
- zsweep
- zuban
- txtpbfmt
- kube-linter
- swiftlint

## Release Notes

> 28 February 2026

- feat(init): specify schema version with --schema-version [`#1550`](https://github.com/hougesen/mdsf/pull/1550)
- feat(init): specify file format [`#1549`](https://github.com/hougesen/mdsf/pull/1549)
- chore: bump env_logger from 0.11.8 to 0.11.9 [`#1519`](https://github.com/hougesen/mdsf/pull/1519)
- chore: bump @eslint/js from 9.39.2 to 10.0.1 in /mdsf-vscode [`#1545`](https://github.com/hougesen/mdsf/pull/1545)
- feat: support defining config using yaml [`#1548`](https://github.com/hougesen/mdsf/pull/1548)
- chore: bump eslint from 9.39.2 to 10.0.2 in /mdsf-vscode [`#1544`](https://github.com/hougesen/mdsf/pull/1544)
- feat(tools): add support for zuban [`#1547`](https://github.com/hougesen/mdsf/pull/1547)
- feat(tools): add support for zsweep [`#1546`](https://github.com/hougesen/mdsf/pull/1546)
- feat: support reading config from mdsf.toml [`#1543`](https://github.com/hougesen/mdsf/pull/1543)
- chore: bump @typescript-eslint/eslint-plugin in /mdsf-vscode [`#1536`](https://github.com/hougesen/mdsf/pull/1536)
- chore: bump tempfile from 3.25.0 to 3.26.0 [`#1539`](https://github.com/hougesen/mdsf/pull/1539)
- chore: bump @eslint/js from 9.39.2 to 10.0.1 in /github-action [`#1531`](https://github.com/hougesen/mdsf/pull/1531)
- chore: bump esbuild from 0.27.2 to 0.27.3 in /mdsf-vscode [`#1533`](https://github.com/hougesen/mdsf/pull/1533)
- chore: bump esbuild from 0.27.2 to 0.27.3 in /github-action [`#1532`](https://github.com/hougesen/mdsf/pull/1532)
- chore: bump @typescript-eslint/parser in /mdsf-vscode [`#1534`](https://github.com/hougesen/mdsf/pull/1534)
- chore: bump @biomejs/biome from 2.3.13 to 2.4.4 in /mdsf-vscode [`#1537`](https://github.com/hougesen/mdsf/pull/1537)
- chore: bump owo-colors from 4.2.3 to 4.3.0 [`#1540`](https://github.com/hougesen/mdsf/pull/1540)
- chore: bump test-with from 0.15.7 to 0.15.8 [`#1538`](https://github.com/hougesen/mdsf/pull/1538)
- chore: bump clap from 4.5.58 to 4.5.60 [`#1541`](https://github.com/hougesen/mdsf/pull/1541)
- feat: publish latest stable schema [`#1542`](https://github.com/hougesen/mdsf/pull/1542)
- chore: bump @biomejs/biome from 2.3.13 to 2.4.4 in /github-action [`#1530`](https://github.com/hougesen/mdsf/pull/1530)
- chore: bump eslint from 9.39.2 to 10.0.2 in /github-action [`#1529`](https://github.com/hougesen/mdsf/pull/1529)
- chore: bump clap_complete from 4.5.65 to 4.5.66 [`#1521`](https://github.com/hougesen/mdsf/pull/1521)
- feat: support formatting custom file extensions [`#1528`](https://github.com/hougesen/mdsf/pull/1528)
- chore: bump predicates from 3.1.3 to 3.1.4 [`#1520`](https://github.com/hougesen/mdsf/pull/1520)
- chore: bump minimatch [`#1526`](https://github.com/hougesen/mdsf/pull/1526)
- chore: bump minimatch [`#1527`](https://github.com/hougesen/mdsf/pull/1527)
- build(carg-dist): upgrade to v0.31.0 [`#1525`](https://github.com/hougesen/mdsf/pull/1525)
- chore: bump tempfile from 3.24.0 to 3.25.0 [`#1518`](https://github.com/hougesen/mdsf/pull/1518)
- chore: bump clap from 4.5.57 to 4.5.58 [`#1522`](https://github.com/hougesen/mdsf/pull/1522)
- build(deps): bump serde_json from 1.0.148 to 1.0.149 [`#1473`](https://github.com/hougesen/mdsf/pull/1473)
- build(deps): bump clap from 4.5.53 to 4.5.54 [`#1472`](https://github.com/hougesen/mdsf/pull/1472)
- feat(tools): add support for the scala cli [`#1475`](https://github.com/hougesen/mdsf/pull/1475)
- build(deps): bump clap_complete from 4.5.64 to 4.5.65 [`#1474`](https://github.com/hougesen/mdsf/pull/1474)
- build(deps-dev): bump @typescript-eslint/eslint-plugin in /mdsf-vscode [`#1471`](https://github.com/hougesen/mdsf/pull/1471)
- build(deps): bump clap_complete from 4.5.63 to 4.5.64 [`#1469`](https://github.com/hougesen/mdsf/pull/1469)
- refactor: remove all usage of unwrap and expect in tests [`#1468`](https://github.com/hougesen/mdsf/pull/1468)
- build(deps): bump serde_json from 1.0.147 to 1.0.148 [`#1466`](https://github.com/hougesen/mdsf/pull/1466)
- build(deps): bump clap_complete from 4.5.62 to 4.5.63 [`#1467`](https://github.com/hougesen/mdsf/pull/1467)
- build(deps): bump schemars from 1.1.0 to 1.2.0 [`#1465`](https://github.com/hougesen/mdsf/pull/1465)
- feat(tools): add support for kube-linter [`#1464`](https://github.com/hougesen/mdsf/pull/1464)
- feat(tools): add support for action-validator [`#1463`](https://github.com/hougesen/mdsf/pull/1463)
- feat: support installing packages using mise for testing [`#1462`](https://github.com/hougesen/mdsf/pull/1462)
- feat(tools): add support for swiftlint [`#1461`](https://github.com/hougesen/mdsf/pull/1461)
- build: upgrade all packages to node 24 [`#1460`](https://github.com/hougesen/mdsf/pull/1460)
- build(deps-dev): bump @typescript-eslint/eslint-plugin in /mdsf-vscode [`#1456`](https://github.com/hougesen/mdsf/pull/1456)
- build(deps): bump tempfile from 3.23.0 to 3.24.0 [`#1459`](https://github.com/hougesen/mdsf/pull/1459)
- build(deps): bump serde_json from 1.0.146 to 1.0.147 [`#1457`](https://github.com/hougesen/mdsf/pull/1457)
- build(deps-dev): bump @typescript-eslint/parser in /mdsf-vscode [`#1458`](https://github.com/hougesen/mdsf/pull/1458)
- feat: documentation website [`#1455`](https://github.com/hougesen/mdsf/pull/1455)
- build(deps): bump serde_json from 1.0.145 to 1.0.146 [`#1454`](https://github.com/hougesen/mdsf/pull/1454)
- chore: set version to dev [`#1453`](https://github.com/hougesen/mdsf/pull/1453)
- build(deps): bump clap_complete from 4.5.61 to 4.5.62 [`#1452`](https://github.com/hougesen/mdsf/pull/1452)
- feat(config): support json5 [`d46d72b`](https://github.com/hougesen/mdsf/commit/d46d72b582479f997d3b8fb519073813ce55a6dd)
- feat(tools): add fix and check to twig-cs-fixer [`728e52e`](https://github.com/hougesen/mdsf/commit/728e52ebf88e8674e17143046f50a7445abda107)
- feat(tools): add support for txtpbfmt [`2c63b2c`](https://github.com/hougesen/mdsf/commit/2c63b2c69c21082abc56f35f4d47ac3c38794713)
- feat(tools): add dhall:lint [`443c95f`](https://github.com/hougesen/mdsf/commit/443c95fff88a7d7b50133239da476cbcb5728817)
- chore: bump @actions/core from 2.0.2 to 3.0.0 in /github-action [`f03b304`](https://github.com/hougesen/mdsf/commit/f03b30459572d8f565cff2481790705739915420)
- chore: bump @biomejs/biome from 2.3.11 to 2.3.13 in /github-action [`6bdcc46`](https://github.com/hougesen/mdsf/commit/6bdcc4644aec946fc2b8b356374fb4c6943cc818)
- chore: bump @biomejs/biome from 2.3.11 to 2.3.13 in /mdsf-vscode [`7cb231b`](https://github.com/hougesen/mdsf/commit/7cb231b3b407b1966edfcacb7408695b6c3ca41c)
- chore: bump @biomejs/biome from 2.3.10 to 2.3.11 in /mdsf-vscode [`0f89450`](https://github.com/hougesen/mdsf/commit/0f89450d77165ad64b8c9aebae0e20414b54634a)
- chore: bump @biomejs/biome from 2.3.10 to 2.3.11 in /github-action [`543a99e`](https://github.com/hougesen/mdsf/commit/543a99e4099006f913073a345d07f6d0a9484267)
- chore: bump @actions/tool-cache from 3.0.0 to 4.0.0 in /github-action [`3fae51a`](https://github.com/hougesen/mdsf/commit/3fae51ae88a022fc3eaabc9f446417b164fcf4ea)
- feat(tools): add ghokin:check [`6652d4b`](https://github.com/hougesen/mdsf/commit/6652d4b78b0bae0947bad2accc38998e1a434ed7)
- feat(tools): add atlas:lint [`0295214`](https://github.com/hougesen/mdsf/commit/0295214626ae34fd68fbec1e1d7f0946c1291f0e)
- feat(tools): add ziggy:lint [`81f7a59`](https://github.com/hougesen/mdsf/commit/81f7a5931b6f63f223eeeb5f1484628afa1ac962)
- chore: bump @actions/tool-cache from 2.0.2 to 3.0.0 in /github-action [`44a320b`](https://github.com/hougesen/mdsf/commit/44a320b00f2c801ed47cd028f7cd0e1de6ce2cd7)
- chore: bump time in the cargo group across 1 directory [`035687a`](https://github.com/hougesen/mdsf/commit/035687aeb146c4aff4c5b3fe5ac7b12743304b4d)
- chore: bump @actions/core from 2.0.1 to 2.0.2 in /github-action [`cc11263`](https://github.com/hougesen/mdsf/commit/cc11263b9c51035ad7278ab217e0fa3c80554529)
- ci: generate github action build on push [`c3fe2d9`](https://github.com/hougesen/mdsf/commit/c3fe2d9863a4cc22fa4de596039f738645ec79ea)
- chore: bump clap from 4.5.54 to 4.5.56 [`0916b75`](https://github.com/hougesen/mdsf/commit/0916b75616e8c3cc1e27725627b28b7fe6cb4834)
- chore: bump ureq from 3.1.4 to 3.2.0 [`9af0359`](https://github.com/hougesen/mdsf/commit/9af03598a123df087cf597f91ede886e01a7bad9)
- chore: bump clap from 4.5.56 to 4.5.57 [`9f72396`](https://github.com/hougesen/mdsf/commit/9f7239675427c53d96d9ca26537bcef6ca8e5d19)
- chore: bump schemars from 1.2.0 to 1.2.1 [`349efee`](https://github.com/hougesen/mdsf/commit/349efee82279f473f0954b3d83a55caf9121b280)
- chore: bump globals from 17.0.0 to 17.3.0 in /github-action [`045efc3`](https://github.com/hougesen/mdsf/commit/045efc36b9f4079509b173a88b9e41e10b84c445)
- chore: bump globals from 17.0.0 to 17.3.0 in /mdsf-vscode [`801582b`](https://github.com/hougesen/mdsf/commit/801582bf630de82f158aa8c730ad5f59a1019d01)
- chore: bump globals from 16.5.0 to 17.0.0 in /mdsf-vscode [`74cb454`](https://github.com/hougesen/mdsf/commit/74cb454b93acb841db9b2a6fc91c8272b14179aa)
- chore: bump globals from 16.5.0 to 17.0.0 in /github-action [`ed5275a`](https://github.com/hougesen/mdsf/commit/ed5275a972304562b29a9bd48f2ac7589e661bbf)
- fix: add github action build to git in ci [`73da667`](https://github.com/hougesen/mdsf/commit/73da667ec249f6606d326fdc361fda746202b79e)
- chore: updated generated code [`32d5d43`](https://github.com/hougesen/mdsf/commit/32d5d43be31c56ad68484bfd430e7410433c20a6)
- chore: bump json5 from 1.3.0 to 1.3.1 [`0ebf5f2`](https://github.com/hougesen/mdsf/commit/0ebf5f248172225ee9df4af33d4afc9363f2d10d)
- chore: bump regex from 1.12.2 to 1.12.3 [`28c8e94`](https://github.com/hougesen/mdsf/commit/28c8e941196a76fadc035465b24e4b42b621f3d2)
- chore: bump convert_case from 0.10.0 to 0.11.0 [`ceccd0d`](https://github.com/hougesen/mdsf/commit/ceccd0d183360728753304ed005073bf0be21bd1)
- chore: bump test-with from 0.15.6 to 0.15.7 [`79bfaff`](https://github.com/hougesen/mdsf/commit/79bfaff2657ef4b69e1510edfe8966572d7aea58)
- build(deps): bump assert_cmd from 2.1.1 to 2.1.2 [`05700a8`](https://github.com/hougesen/mdsf/commit/05700a8ef4e051c50a3be7323f38e88aaab61dc9)
- chore: bump bytes in the cargo group across 1 directory [`c83d4e4`](https://github.com/hougesen/mdsf/commit/c83d4e44fd3a8a908d579f71888488bef11f31d7)
- chore: updated generated code [`0b5fff7`](https://github.com/hougesen/mdsf/commit/0b5fff7d4a812676094be4f43e0c71bcf683fa55)
- chore: updated generated code [`64cedf2`](https://github.com/hougesen/mdsf/commit/64cedf22dc5a24a4b79f37dffafb7ec456769041)

## Install mdsf 0.12.0

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/hougesen/mdsf/releases/download/v0.12.0/mdsf-installer.sh | sh
```

### Install prebuilt binaries via powershell script

```sh
powershell -ExecutionPolicy Bypass -c "irm https://github.com/hougesen/mdsf/releases/download/v0.12.0/mdsf-installer.ps1 | iex"
```

### Install prebuilt binaries via Homebrew

```sh
brew install hougesen/tap/mdsf
```

### Install prebuilt binaries into your npm project

```sh
npm install mdsf-cli@0.12.0
```

## Download mdsf 0.12.0

| File                                                                                                                                    | Platform            | Checksum                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------------------------- | ------------------- | ------------------------------------------------------------------------------------------------------------------ |
| [mdsf-aarch64-apple-darwin.tar.gz](https://github.com/hougesen/mdsf/releases/download/v0.12.0/mdsf-aarch64-apple-darwin.tar.gz)         | Apple Silicon macOS | [checksum](https://github.com/hougesen/mdsf/releases/download/v0.12.0/mdsf-aarch64-apple-darwin.tar.gz.sha256)     |
| [mdsf-x86_64-apple-darwin.tar.gz](https://github.com/hougesen/mdsf/releases/download/v0.12.0/mdsf-x86_64-apple-darwin.tar.gz)           | Intel macOS         | [checksum](https://github.com/hougesen/mdsf/releases/download/v0.12.0/mdsf-x86_64-apple-darwin.tar.gz.sha256)      |
| [mdsf-x86_64-pc-windows-msvc.tar.gz](https://github.com/hougesen/mdsf/releases/download/v0.12.0/mdsf-x86_64-pc-windows-msvc.tar.gz)     | x64 Windows         | [checksum](https://github.com/hougesen/mdsf/releases/download/v0.12.0/mdsf-x86_64-pc-windows-msvc.tar.gz.sha256)   |
| [mdsf-x86_64-pc-windows-msvc.msi](https://github.com/hougesen/mdsf/releases/download/v0.12.0/mdsf-x86_64-pc-windows-msvc.msi)           | x64 Windows         | [checksum](https://github.com/hougesen/mdsf/releases/download/v0.12.0/mdsf-x86_64-pc-windows-msvc.msi.sha256)      |
| [mdsf-x86_64-unknown-linux-gnu.tar.gz](https://github.com/hougesen/mdsf/releases/download/v0.12.0/mdsf-x86_64-unknown-linux-gnu.tar.gz) | x64 Linux           | [checksum](https://github.com/hougesen/mdsf/releases/download/v0.12.0/mdsf-x86_64-unknown-linux-gnu.tar.gz.sha256) |

