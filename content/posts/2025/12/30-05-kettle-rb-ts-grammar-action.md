---
title: Tree-sitter Grammar Setup
date: 2025-12-30 05:28:02 +00:00
tags:
  - kettle-rb
  - GitHub Actions
draft: false
repo: https://github.com/kettle-rb/ts-grammar-action
marketplace: https://github.com/marketplace/actions/tree-sitter-grammar-setup
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/kettle-rb/ts-grammar-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tree-sitter-grammar-setup) to find the latest changes.

## Action Summary

The `ts-grammar-action` GitHub Action simplifies the installation of Tree-sitter and its language-specific grammar libraries. It automates the setup of the Tree-sitter library, CLI, and grammar shared libraries while configuring associated environment variables to streamline its usage. This action is particularly useful for developers working with language parsing or syntax tree generation, offering built-in support for caching, Linux compatibility, and integration with Rust or Java backends.

## Release notes

# ts-grammar-action

A GitHub Action for installing tree-sitter and language grammars.

This action wraps the official [`tree-sitter/setup-action`](https://github.com/tree-sitter/setup-action) and adds support for installing language-specific grammar shared libraries.

## Features

- 🌲 Uses official `tree-sitter/setup-action` for library and CLI installation
- 📦 Installs grammar shared libraries (`.so` files) for selected languages
- ⚡ Caching support via the official action
- 🔧 Configures environment variables (`TREE_SITTER_*_PATH`) for each grammar
- 🐧 Linux support (Ubuntu)

## Supported Grammars

| Grammar | Input           | Repository                                                                                        |
|---------|-----------------|---------------------------------------------------------------------------------------------------|
| Bash    | `grammar-bash`  | [tree-sitter/tree-sitter-bash](https://github.com/tree-sitter/tree-sitter-bash)                   |
| JSON    | `grammar-json`  | [tree-sitter/tree-sitter-json](https://github.com/tree-sitter/tree-sitter-json)                   |
| JSONC   | `grammar-jsonc` | [WhyNotHugo/tree-sitter-jsonc](https://gitlab.com/WhyNotHugo/tree-sitter-jsonc)                   |
| TOML    | `grammar-toml`  | [tree-sitter-grammars/tree-sitter-toml](https://github.com/tree-sitter-grammars/tree-sitter-toml) |

## Usage

### Basic Usage

Install tree-sitter library and selected grammars:

```yaml
steps:
  - uses: actions/checkout@v4

  - name: Install tree-sitter with grammars
    uses: kettle-rb/ts-grammar-action@v1
    with:
      grammar-bash: true
      grammar-toml: true
```

### All Options

```yaml
steps:
  - uses: actions/checkout@v4

  - name: Install tree-sitter with grammars
    uses: kettle-rb/ts-grammar-action@v1
    with:
      # Tree-sitter library/CLI options
      install-cli: false          # Install tree-sitter CLI (default: false)
      install-lib: true           # Install libtree-sitter (default: true)
      tree-sitter-ref: latest     # tree-sitter version (default: latest)

      # Rust toolchain (for tree_stump gem or CLI build)
      setup-rust: false           # Install Rust toolchain (default: false)
      rust-toolchain: stable      # Rust version (default: stable)

      # Java/jtreesitter (for JRuby Java backend)
      # Note: setup-jtreesitter: true automatically installs Java JDK
      setup-java: false           # Install Java JDK only (default: false)
      java-version: "23"          # Java version (default: 23)
      java-distribution: temurin  # Java distribution (default: temurin)
      setup-jtreesitter: false    # Download jtreesitter JAR + install Java (default: false)
      jtreesitter-version: "0.24.0"  # jtreesitter version (default: 0.24.0)
      jtreesitter-install-dir: /usr/local/share/java  # JAR install directory

      # Grammar selections (all default to false)
      grammar-bash: false
      grammar-json: false
      grammar-jsonc: false
      grammar-toml: false

      # Installation prefix (default: /usr/local)
      grammar-install-prefix: /usr/local
```
