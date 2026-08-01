---
title: rumdl-action
date: 2026-08-01 14:05:01 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.48
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  rumdl is a high-performance Markdown linter and formatter written in Rust, offering a modern approach to linting and formatting Markdown files. It supports multiple Markdown flavors, provides automatic formatting with `--fix`, and offers detailed error reporting for improved development experience. The tool is designed to be fast and easy to use, suitable for both small projects and large repositories.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.48**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter written in Rust, offering a modern approach to linting and formatting Markdown files. It supports multiple Markdown flavors, provides automatic formatting with `--fix`, and offers detailed error reporting for improved development experience. The tool is designed to be fast and easy to use, suitable for both small projects and large repositories.

## What's Changed


### Added

- **md087**: report inline disable comments that suppress nothing ([40fc37d](https://github.com/rvben/rumdl/commit/40fc37da50885e83c32d49cb1ae9dc7a853416fc))
- **md051,md057**: check path-shaped frontmatter values behind an option ([98a0ff0](https://github.com/rvben/rumdl/commit/98a0ff0d24972a34c30d4665cdd6d03108925ee5))
- **md033**: add allowed-inside and a no-markdown-equivalent allowlist value ([cb0ba51](https://github.com/rvben/rumdl/commit/cb0ba510845caba5b67a7c9bce40516b6227b76f))
- name rules by their readable name in generated output ([3b196d8](https://github.com/rvben/rumdl/commit/3b196d806a1d04117aaedaea7e2ca7669bc5d4a9))
- **md082**: add allow-parent-headings to accept a heading with subsections ([662d570](https://github.com/rvben/rumdl/commit/662d5702ac130ff2485ba9a210eb0289baccaadd))
- **md040**: add custom-languages for fence labels Linguist does not know ([1eda9f4](https://github.com/rvben/rumdl/commit/1eda9f4bcdd7a37e8b9f17be3c9fc72e1b568c5e))
- **md086**: add rule for unclosed comment delimiters ([6cbd27f](https://github.com/rvben/rumdl/commit/6cbd27ffb6571839daff260570dfe6c382fd50a3))
- **md057**: report relative links that point at their own file ([7fd85fe](https://github.com/rvben/rumdl/commit/7fd85fe7721df71c9bc41cadf0ed0afdd2cf1f64))
- **lsp**: report inline config problems as diagnostics ([20acc02](https://github.com/rvben/rumdl/commit/20acc02eb829ab7083270c8b857ab7a49437c83a))

### Fixed

- **md063**: name the documented style spellings when a style is invalid ([5476db8](https://github.com/rvben/rumdl/commit/5476db821c40749ed8adbd431930c157b5e06179))
- **md013**: exempt an HTML-only line in a blockquote inside a list item ([98e5d34](https://github.com/rvben/rumdl/commit/98e5d34e2016fc1c7178fba7f3219e56553eae6b))
- **md013**: exempt nested standalone links ([3be374e](https://github.com/rvben/rumdl/commit/3be374e51ddd045e9cc8a2ebaf5d33312ba1a60d))
- **md013**: adjust paragraph reflow limit for common indent ([2f7c68e](https://github.com/rvben/rumdl/commit/2f7c68e2796b1cb4ab6f59be9955124da6e25b91))
- **md032**: avoid warning on pseudo-list markers after recognized lists ([71e6ff5](https://github.com/rvben/rumdl/commit/71e6ff5601935ba39a7292ec886cdc54542e76cf))
- **md062**: preserve parentheses in link destinations ([8ec2eea](https://github.com/rvben/rumdl/commit/8ec2eeab65b3d40e7e749acefeed4f82a5e37b9d))
- **md051**: resolve cross-file links whose path carries a query string ([8876d46](https://github.com/rvben/rumdl/commit/8876d46993a13f390465b1b876ba060530d71d6c))
- **md051,md057**: read frontmatter in documents that hold no body links ([5f35562](https://github.com/rvben/rumdl/commit/5f35562156f05076005e062e09438610cb791385))
- **md040**: take disabled fences out of the label vote by the shared state ([dd7011d](https://github.com/rvben/rumdl/commit/dd7011d474f366b7eaadc4681a32c0454abc5d14))
- **md040**: honor a rule alias in a disable comment ([7b86267](https://github.com/rvben/rumdl/commit/7b86267773a127f667b81d8402070629d8a616e6))
- **md040**: reject custom-languages entries containing whitespace ([651a7ec](https://github.com/rvben/rumdl/commit/651a7ec134d1436b6f7bf76c3f19028b61652a7f))
- **md040**: stop normalizing fence labels to an invalid preferred alias ([7c10626](https://github.com/rvben/rumdl/commit/7c10626c7d73ec756e85ca20495672d33a7e59b6))
- **config**: apply map-valued rule options set in rumdl.toml ([a8ff5b6](https://github.com/rvben/rumdl/commit/a8ff5b6073e8b8a2aa12e3fd8015363108b08899))
- **inline-config**: ignore directives inside indented code blocks ([fee4d6f](https://github.com/rvben/rumdl/commit/fee4d6f12a76319f1381d9191f7bb0c9dae44e14))
- **config**: warn when an inline enable targets a per-file-ignored rule ([3c3837f](https://github.com/rvben/rumdl/commit/3c3837f468e45aa08114274321b010dcf489ba85))
- **lsp**: measure diagnostic positions in UTF-16 code units ([3cb34b4](https://github.com/rvben/rumdl/commit/3cb34b4c6d37508f79492d84b9975c28eb04a936))
- **comments**: read an unclosed comment in a container body, not in code ([85bd3f8](https://github.com/rvben/rumdl/commit/85bd3f8b6f9be657b8f7d93b87c988fdfd7479db))
- **comments**: hide the block an unclosed `<!--` opens from every rule ([27c247c](https://github.com/rvben/rumdl/commit/27c247c9458dd7c3845d59052458ec52e10c30bd))
- **md086**: keep reporting an Obsidian opener below an unclosed HTML one ([a05dff9](https://github.com/rvben/rumdl/commit/a05dff9f4152cd9f0aa7dc770a74a87bf07886af))
- **md086**: don't report a comment opener the other syntax hides ([4d589a1](https://github.com/rvben/rumdl/commit/4d589a1f6caf218256932ef6c5c1d02b2184cc55))
- **comments**: ignore Obsidian comment delimiters inside front matter ([441a0a4](https://github.com/rvben/rumdl/commit/441a0a40c3fc9710155a197086efe1ee9464c054))
- **comments**: ignore comment delimiters inside front matter ([dded694](https://github.com/rvben/rumdl/commit/dded694b43c07221b5c62d53bb2ae448aa917289))
- **comments**: end an HTML comment at the first --> after the opener ([274166a](https://github.com/rvben/rumdl/commit/274166a47c74e2e53e9a7ac604c2154c8722a772))
- **md057**: keep search paths a fallback when matching a link to its own file ([26e88cc](https://github.com/rvben/rumdl/commit/26e88cc2fd82e791faccf5de7e39bb85d2d41a7d))
- **md057**: anchor reference definition fixes to the link destination ([b930b71](https://github.com/rvben/rumdl/commit/b930b71f0197133eb5c4fe21325a05183cccc367))
- **lsp**: use defaults when a workspace root's own scope cannot be resolved ([d1777ce](https://github.com/rvben/rumdl/commit/d1777ce975b182c50e63c772d96f0cfd04bf7f64))
- **cli**: count fixes a document enables with an inline configure-file comment ([f17a5eb](https://github.com/rvben/rumdl/commit/f17a5eb48fb62072f81393c816b0d0b66015a89e))
- **lsp**: resolve a secondary workspace root's own configuration ([41b9a22](https://github.com/rvben/rumdl/commit/41b9a22b8d4a367b6fcebe4d3c1091d545df34ce))
- **cli**: count an unloadable subdirectory config as a config warning ([648aa72](https://github.com/rvben/rumdl/commit/648aa72cec173416e543b2f388de80290fb32d93))
- **md041**: report the fix capability its opt-in fix enables ([ed30c9a](https://github.com/rvben/rumdl/commit/ed30c9a1d933a237424a66361bc06a0332e925f8))
- **lsp**: resolve workspace configuration from the workspace root ([8e0fcee](https://github.com/rvben/rumdl/commit/8e0fceea149e2bac4ad6716737257077462e77ce))

### Performance

- **md062,lint-context**: scan link escapes in one forward pass ([8fff82b](https://github.com/rvben/rumdl/commit/8fff82bdbc0caf7f655335c6d161fe3d2215cf06))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.48-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.48/rumdl-v0.2.48-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.48/rumdl-v0.2.48-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.48-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.48/rumdl-v0.2.48-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.48/rumdl-v0.2.48-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.48-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.48/rumdl-v0.2.48-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.48/rumdl-v0.2.48-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.48-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.48/rumdl-v0.2.48-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.48/rumdl-v0.2.48-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.48-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.48/rumdl-v0.2.48-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.48/rumdl-v0.2.48-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.48-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.48/rumdl-v0.2.48-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.48/rumdl-v0.2.48-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.48-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.48/rumdl-v0.2.48-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.48/rumdl-v0.2.48-x86_64-pc-windows-msvc.zip.sha256) |

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

