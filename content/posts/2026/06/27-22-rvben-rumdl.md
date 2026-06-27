---
title: rumdl-action
date: 2026-06-27 22:14:40 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.24
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.24**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## What's Changed


### Added

- **MD043**: report expected and actual headings at first mismatch (#696) ([57f0902](https://github.com/rvben/rumdl/commit/57f0902c64ca9aa19fbc31cb91cc773709eeae40)) - thanks @mkowen1
- **MD013**: add semantic-link-understanding to flag long-URL links in stern mode (#691) ([f17e3f7](https://github.com/rvben/rumdl/commit/f17e3f7188963960d31898b49eaf3124e171e4ff)) - thanks @chandlerc

### Fixed

- **MD013**: extend standalone-link reflow boundary to blockquotes ([74e79f6](https://github.com/rvben/rumdl/commit/74e79f6bae1c7b117d9cb643a3906e239df07fe2))
- **MD013**: treat standalone links as paragraph boundaries in reflow (#697) ([39ea2b2](https://github.com/rvben/rumdl/commit/39ea2b2f3fde7448985895b4833e4a72268811a1)) - thanks @chandlerc
- **MD013**: associate paragraph reflow fix with all violating lines (#698) ([f17be35](https://github.com/rvben/rumdl/commit/f17be35b983b8d7bb0dd2106a90495448f3b4907)) - thanks @chandlerc
- **fix-coordinator**: honor inline rumdl-configure-file overrides when applying fixes ([c347ab6](https://github.com/rvben/rumdl/commit/c347ab6edec337d13d1d3b76ef577d52fa73fcae))
- **MD013**: exempt standalone links with trailing punctuation and wrappers (#694) ([d7a3c2e](https://github.com/rvben/rumdl/commit/d7a3c2e15a2dff5e73c0cee59d9a653a3516fbb4)) - thanks @chandlerc
- **MD013**: keep the space after an inline code span before punctuation (#693) ([13745db](https://github.com/rvben/rumdl/commit/13745db0d1d2ac46a0bc9aa337ce6e98b9026276)) - thanks @chandlerc
- **lsp**: iterate formatting fixes to a fixpoint so one format pass converges (#695) ([78c42ad](https://github.com/rvben/rumdl/commit/78c42ade6dc3e16b3ef21b06999e915eda3aaf0d)) - thanks @chandlerc
- **MD028**: make blockquote-merge autofix opt-in by default ([cffadef](https://github.com/rvben/rumdl/commit/cffadefe5bbf32722f978be053a8838f1a43e2f0))
- **MD036**: make emphasis-to-heading autofix opt-in by default ([9b145a9](https://github.com/rvben/rumdl/commit/9b145a9b55a857497f04276db1a38f22855081f6))
- **MD007**: scope fence-opening exception to backtick/tilde fences ([2a3a554](https://github.com/rvben/rumdl/commit/2a3a554fa6bc866dfaf1e89adaec0fcfa0a05684))
- **MD007**: keep nested lists nested under a fence-opening list item ([59f987e](https://github.com/rvben/rumdl/commit/59f987e1d59d6208afa31c45f4b2319be2545303)) - thanks @chandlerc


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.24-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.24/rumdl-v0.2.24-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.24/rumdl-v0.2.24-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.24-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.24/rumdl-v0.2.24-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.24/rumdl-v0.2.24-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.24-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.24/rumdl-v0.2.24-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.24/rumdl-v0.2.24-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.24-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.24/rumdl-v0.2.24-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.24/rumdl-v0.2.24-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.24-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.24/rumdl-v0.2.24-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.24/rumdl-v0.2.24-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.24-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.24/rumdl-v0.2.24-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.24/rumdl-v0.2.24-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.24-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.24/rumdl-v0.2.24-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.24/rumdl-v0.2.24-x86_64-pc-windows-msvc.zip.sha256) |

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

