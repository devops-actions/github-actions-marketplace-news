---
title: jscpd-copy-paste-detector
date: 2026-07-08 22:25:18 +00:00
tags:
  - kucherenko
  - GitHub Actions
draft: false
repo: https://github.com/kucherenko/jscpd
marketplace: https://github.com/marketplace/actions/jscpd-copy-paste-detector
version: v5.0.12
dependentsNumber: "4,427"
actionType: Composite
---


Version updated for **https://github.com/kucherenko/jscpd** to version **v5.0.12**.

- This action is used across all versions by **4,427** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jscpd-copy-paste-detector) to find the latest changes.

## What's Changed

## Highlights

### Bug Fixes

- **Rename `cpd` binary and npm packages to `jscpd`** — the CLI binary was named `cpd` (`cpd.exe` on Windows), which collided with an executable name flagged by some antivirus software (McAfee, Trend Micro), causing false-positive blocking. The binary and platform npm packages are now named `jscpd` / `jscpd-*`. Closes [#826](https://github.com/kucherenko/jscpd/issues/826) ([#854](https://github.com/kucherenko/jscpd/pull/854))
- **Recognize `;` line comments for Lisp/Clojure/Scheme/Racket** — these languages fell through to C-style comment handling, so `;` comments were tokenized as code and `--mode weak` / `--skip-comments` couldn't drop them. Closes [#849](https://github.com/kucherenko/jscpd/issues/849) ([#850](https://github.com/kucherenko/jscpd/pull/850), thanks [@laurynas-biveinis](https://github.com/laurynas-biveinis))
- **Use HTTPS for SARIF schema URI** — avoids "untrusted URI" errors in SARIF-consuming tools ([#844](https://github.com/kucherenko/jscpd/pull/844), thanks [@chrisc-onaorg](https://github.com/chrisc-onaorg))

### Chores

- Use public repository URLs for `@jscpd/core`, `@jscpd/finder`, `@jscpd/tokenizer`, `@jscpd/html-reporter`, `@jscpd/badge-reporter`, `@jscpd/leveldb-store`, and `@jscpd/redis-store` package metadata ([#831](https://github.com/kucherenko/jscpd/pull/831)–[#837](https://github.com/kucherenko/jscpd/pull/837), thanks [@9904099](https://github.com/9904099))
- Add cargo ecosystem to Dependabot config

### Dependencies

- Bump `askama` to 0.16.0 in `/rust`
- Bump `log` to 0.4.33 in `/rust`
- Bump `env_logger` to 0.11.11 in `/rust`
- Bump `rustc-hash` to 2.1.3 in `/rust`

## Thanks

Big thanks to [@laurynas-biveinis](https://github.com/laurynas-biveinis), [@chrisc-onaorg](https://github.com/chrisc-onaorg), and [@9904099](https://github.com/9904099) for their contributions to this release! 🙌

## Published Packages

  - `cpd-core@0.1.6` on crates.io
  - `cpd-finder@0.1.8` on crates.io
  - `cpd-reporter@0.1.7` on crates.io
  - `cpd-tokenizer@0.1.7` on crates.io
  - `jscpd@5.0.12` on crates.io
  - `cpd@5.0.12` on npm
  - `jscpd@5.0.12` on npm
  - `jscpd-darwin-arm64@5.0.12` on npm
  - `jscpd-darwin-x64@5.0.12` on npm
  - `jscpd-linux-x64-gnu@5.0.12` on npm
  - `jscpd-linux-arm64-gnu@5.0.12` on npm
  - `jscpd-linux-x64-musl@5.0.12` on npm
  - `jscpd-windows-x64-msvc@5.0.12` on npm

