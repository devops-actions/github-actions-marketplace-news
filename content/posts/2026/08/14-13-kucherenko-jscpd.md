---
title: jscpd-copy-paste-detector
date: 2026-08-14 13:58:34 +00:00
tags:
  - kucherenko
  - GitHub Actions
draft: false
repo: https://github.com/kucherenko/jscpd
marketplace: https://github.com/marketplace/actions/jscpd-copy-paste-detector
version: v5.0.15
dependentsNumber: "4,724"
actionType: Composite
actionSummary: |
  This GitHub Action automates the detection of duplicated code blocks across files using the jscpd tool. It supports multiple programming languages and engines (TypeScript and Rust), offering 224+ formats and a 24-37x faster speed than the previous version. The action can be used to integrate jscpd into CI workflows, providing a clear report of detected clones.
---


Version updated for **https://github.com/kucherenko/jscpd** to version **v5.0.15**.

- This action is used across all versions by **4,724** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jscpd-copy-paste-detector) to find the latest changes.

## Action Summary

This GitHub Action automates the detection of duplicated code blocks across files using the jscpd tool. It supports multiple programming languages and engines (TypeScript and Rust), offering 224+ formats and a 24-37x faster speed than the previous version. The action can be used to integrate jscpd into CI workflows, providing a clear report of detected clones.

## What's Changed


### New Features

- **SARIF: size-based severity** — new `--sarif-error-tokens <N>` flag (also `sarifErrorTokens` in `.jscpd.json`): clones with at least N tokens are reported at level `error` while smaller ones stay `warning`. When overall duplication exceeds `--threshold`, **all** SARIF results are emitted as `error`, matching the threshold check that fails the build. Default output is unchanged when neither option is set. ([#908](https://github.com/kucherenko/jscpd/issues/908))
- **SARIF: clone fingerprints** — each result carries `token_count` and a `clone_hash` in its properties bag, plus a `partialFingerprints` entry (`jscpdCloneHash/v1`) for cross-run result identity in consumers like GitHub code scanning. The hash is order-insensitive, so the same clone pair produces the same hash regardless of file discovery order. ([#909](https://github.com/kucherenko/jscpd/issues/909))
- **SARIF: related-location messages** — the duplicate's counterpart location now has a message (`Duplicated at <path>:<line>`), and the primary message references it via a SARIF embedded link so GitHub code scanning displays it. ([#911](https://github.com/kucherenko/jscpd/issues/911))
- **SARIF: richer rule metadata** — the `jscpd/duplicate-code` rule now includes a display name, full description, default configuration, and quality tags for better presentation in SARIF viewers and Azure DevOps. ([#914](https://github.com/kucherenko/jscpd/pull/914))

### Bug Fixes

- **Scan-root-relative report paths** — fragments store their scan root separately (`source_root`), so report paths are relative to the scanned directory again (as in 4.x) while reporters can still resolve and read source files; SARIF emits `originalUriBaseIds` with per-root base ids. Fixes empty snippets and unresolvable paths when scanning from outside the target directory, including multi-root scans. ([#872](https://github.com/kucherenko/jscpd/issues/872), [#892](https://github.com/kucherenko/jscpd/issues/892))
- **Report version stamping** — the SARIF `tool.driver.version` (previously hardcoded `5.0.3`) and the HTML report version now match `cpd --version`, bundled at build time. ([#915](https://github.com/kucherenko/jscpd/issues/915))
- **Multi-root blame attribution** — with multiple scan roots containing the same relative path, git blame data is now keyed by resolved path, so the second root no longer inherits the first root's authors.
- **Git root discovery** — walking up from a relative scan path no longer terminates early before reaching the repository root.

### Dependencies

- Bump `serde_json` to 1.0.151 in `/rust`
- Bump `ignore` to 0.4.32 in `/rust`
- Bump `anyhow` to 1.0.104 in `/rust`

### Thank You ❤️

This release was shaped by community contributions — huge thanks to:

- [@chrisc-onaorg](https://github.com/chrisc-onaorg) for the SARIF clone fingerprints ([#910](https://github.com/kucherenko/jscpd/pull/910)), related-location messages ([#912](https://github.com/kucherenko/jscpd/pull/912)), and richer rule metadata ([#914](https://github.com/kucherenko/jscpd/pull/914)), plus reporting #909, #911, and #915
- [@darronz](https://github.com/darronz) for the scan-root-relative paths fix ([#913](https://github.com/kucherenko/jscpd/pull/913))
- [@nvuillam](https://github.com/nvuillam) for proposing size-based SARIF severity ([#908](https://github.com/kucherenko/jscpd/issues/908))

## Published Packages

  - `cpd-core@0.1.8` on crates.io
  - `cpd-finder@0.1.10` on crates.io
  - `cpd-reporter@0.1.8` on crates.io
  - `cpd-tokenizer@0.1.9` on crates.io
  - `jscpd@5.0.15` on crates.io
  - `cpd@5.0.15` on npm
  - `jscpd-darwin-arm64@5.0.15` on npm
  - `jscpd-darwin-x64@5.0.15` on npm
  - `jscpd-linux-x64-gnu@5.0.15` on npm
  - `jscpd-linux-arm64-gnu@5.0.15` on npm
  - `jscpd-linux-x64-musl@5.0.15` on npm
  - `jscpd-windows-x64-msvc@5.0.15` on npm
  - `jscpd@5.0.15` on npm


