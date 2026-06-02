---
title: rumdl-action
date: 2026-06-02 23:42:06 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.5
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.5**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## What's Changed


### Added

- **lsp**: resolve buffer-file links and extend hover previews ([94e088a](https://github.com/rvben/rumdl/commit/94e088a10b662ad611f2c0e2c80f32efce1e99af))

### Fixed

- **md034**: don't flag URLs in JSX component attributes (MDX) ([5ed2c5d](https://github.com/rvben/rumdl/commit/5ed2c5d030eb88ef406a0647fde8da5d0e5451f8))
- **md013**: avoid byte-slice underflow on all-emphasis lines ([ad5647a](https://github.com/rvben/rumdl/commit/ad5647a3d90a74ce269c89a0fdae4dcb2420febe))
- **fix-utils**: reject non-char-boundary ranges in validate_fix_range too ([9d07c16](https://github.com/rvben/rumdl/commit/9d07c16ea47f9be78c6e542107bbb064e10464fe))
- **md072**: span quoted keys fully in unsorted-key diagnostics ([8aa9140](https://github.com/rvben/rumdl/commit/8aa9140f3672433633577a07bf31d0a80875e0ec))
- **config**: don't create phantom rule entries for unconvertible values ([4b21cb0](https://github.com/rvben/rumdl/commit/4b21cb00a6f3310886d72a8aa8380664326ca3db))
- **md004**: guard empty marker in count_marker_prevalence too ([5584c23](https://github.com/rvben/rumdl/commit/5584c23c54c218e5c8b3ae9f72f6baf0067f656d))
- **config**: keep pyproject [tool.rumdl] with only cache=true set ([774a1b3](https://github.com/rvben/rumdl/commit/774a1b3d1d507cbcc1f9c0e4d18e8e2dec845bd8))
- **wasm**: cover AzureDevOps and MyST flavors in round-trip test ([58f8d0d](https://github.com/rvben/rumdl/commit/58f8d0dda6dabd00e09915fbe0e3ce7c428bf9e6))
- **config**: tighten pyproject rumdl-section detection ([b8a5966](https://github.com/rvben/rumdl/commit/b8a59669ad8efe3c396c48e8501646b8cae0931f))
- **config**: keep pyproject [tool.rumdl] with only scalar globals ([7da87d7](https://github.com/rvben/rumdl/commit/7da87d7f0052d2c44468c9ab54346add1c6037e6))
- **md078,md079**: declare Unfixable to match fix() returning Err ([d1d838a](https://github.com/rvben/rumdl/commit/d1d838ac7697acc733ed35710b20dc0d8adfc07b))
- **config**: skip unconvertible markdownlint values instead of exiting ([9bfc296](https://github.com/rvben/rumdl/commit/9bfc2960b7accd4e20d684f7da6d5f330449fd33))
- **md004**: guard against empty list marker instead of unwrapping ([a73d0bf](https://github.com/rvben/rumdl/commit/a73d0bf2935df20d7f99bcf977a2a4d3f40acd57))
- **check**: emit cross-file diagnostics in a stable path order ([8eb5027](https://github.com/rvben/rumdl/commit/8eb5027e6c38922a2db6e838eda0caf996600bf0))
- **md063**: preserve URLs with nested parens and image alt text ([ba68a84](https://github.com/rvben/rumdl/commit/ba68a848f81ffe34fbf48d935cd91956bc9e6917))
- **md057**: only treat bare .com domains as external, not relative paths ([a0f8a86](https://github.com/rvben/rumdl/commit/a0f8a86f6211235dd18dc65b0dbd6d2ade6c6b61))
- **md046**: no trailing spaces on blank lines and tighter list detection ([eceb1d6](https://github.com/rvben/rumdl/commit/eceb1d674ce08562b074ecaf7f98a32d2bfa4838))
- **md072**: preserve trailing newline and sort quoted keys by content ([73f80cf](https://github.com/rvben/rumdl/commit/73f80cf111d5741c9f6b3623c04f6215a79b267a))
- **fix-utils**: reject fix ranges that split UTF-8 codepoints ([1ded124](https://github.com/rvben/rumdl/commit/1ded1242c4b3696375a00602a0aab4ed024ae717))
- **md033**: avoid non-char-boundary panic on multi-byte whitespace in tags ([5dfbec7](https://github.com/rvben/rumdl/commit/5dfbec778592aeeb35ef6a881a185cd16adfe8eb))

### Performance

- **md037**: use cached HTML-comment lookup in the warning filter ([e5dcf91](https://github.com/rvben/rumdl/commit/e5dcf91f320c0819f250ef740aca35237dfad478))
- **lint-context**: cache math byte ranges for is_in_math_context ([33ff165](https://github.com/rvben/rumdl/commit/33ff165fdfd91271bcce574c589af2ca826fc4f2))
- **md057**: index lines via raw_lines() instead of lines().nth() ([251e8ff](https://github.com/rvben/rumdl/commit/251e8ff4751e38146ac6f79ea46f2c15ac2850c1))
- **md032**: compare blockquote prefixes as &str without allocating ([c4f37d6](https://github.com/rvben/rumdl/commit/c4f37d6f31f911fd9243bcc226932834a15f7ad3))
- **lint-context**: skip kramdown masking when there are no extension lines ([29378b2](https://github.com/rvben/rumdl/commit/29378b29df3f48453202d16ea3f3621d22601151))
- **rules**: use LazyLock regexes instead of the mutex-backed cache ([f757bae](https://github.com/rvben/rumdl/commit/f757bae2cdc8a38c4d42bd1571417060fe5055ab))
- **workspace**: clear reverse deps via the file's own links ([f28a27d](https://github.com/rvben/rumdl/commit/f28a27d39f89c39ff720a8cc6f47d4085fd8183b))
- **lint-context**: precompute math-block closer lookahead ([be6796a](https://github.com/rvben/rumdl/commit/be6796a083e7f019fe5b7326f146ddf58d873501))
- **lint-context**: make is_in_list_block/is_in_table_block O(1) ([9dc96a4](https://github.com/rvben/rumdl/commit/9dc96a400b008a771934c87c366626e860821c77))
- **reflow**: scan is_horizontal_rule without allocating a Vec<char> ([9664d22](https://github.com/rvben/rumdl/commit/9664d220165cd142368707549c7d24b73e393ce5))
- **reflow**: hoist char collection out of is_sentence_boundary ([457cbad](https://github.com/rvben/rumdl/commit/457cbad169e84747d1d66089ab66d1c04ae5626d))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.5-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.5/rumdl-v0.2.5-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.5/rumdl-v0.2.5-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.5-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.5/rumdl-v0.2.5-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.5/rumdl-v0.2.5-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.5-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.5/rumdl-v0.2.5-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.5/rumdl-v0.2.5-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.5-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.5/rumdl-v0.2.5-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.5/rumdl-v0.2.5-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.5-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.5/rumdl-v0.2.5-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.5/rumdl-v0.2.5-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.5-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.5/rumdl-v0.2.5-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.5/rumdl-v0.2.5-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.5-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.5/rumdl-v0.2.5-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.5/rumdl-v0.2.5-x86_64-pc-windows-msvc.zip.sha256) |

## Installation

### Using uv (Recommended)
```bash
uv tool install rumdl
```

### Using pip
```bash
pip install rumdl
```

### Using pipx
```bash
pipx install rumdl
```

### Direct Download
Download the appropriate binary for your platform from the table above, extract it, and add it to your PATH.

