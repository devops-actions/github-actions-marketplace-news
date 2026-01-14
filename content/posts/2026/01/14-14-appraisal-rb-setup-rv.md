---
title: Setup Ruby with rv and ore
date: 2026-01-14 14:03:36 +00:00
tags:
  - appraisal-rb
  - GitHub Actions
draft: false
repo: https://github.com/appraisal-rb/setup-rv
marketplace: https://github.com/marketplace/actions/setup-ruby-with-rv-and-ore
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/appraisal-rb/setup-rv** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-ruby-with-rv-and-ore) to find the latest changes.

## Action Summary

The `setup-ruby-flash` GitHub Action provides a fast and efficient way to set up Ruby environments in CI workflows by leveraging prebuilt binaries for near-instant Ruby installation and an accelerated gem management system via `ore`. It automates tasks like Ruby and gem installation, caching, and security auditing, significantly reducing setup time and improving reliability for projects targeting Linux and macOS platforms. This action is ideal for developers seeking to optimize their Ruby CI pipelines.

## Release notes

# ⚡️ setup-ruby-flash

A _fast_ GitHub Action for fast Ruby environment setup using [rv](https://github.com/spinel-coop/rv) for Ruby installation and [ore](https://github.com/contriboss/ore-light) for gem management.

**⚡ Install Ruby in under 2 seconds** — no compilation required!

**⚡ Install Gems 50% faster** — using ORE ✅️!

## Features

- 🚀 **Lightning-fast Ruby installation** via prebuilt binaries from rv
- 📦 **Rapid gem installation** with ore (Bundler-compatible, ~50% faster)
- 💾 **Intelligent caching** for both Ruby and gems
- 🔒 **Security auditing** via `ore audit`
- 🐧 **Linux & macOS support** (x86_64 and ARM64)

## Requirements

- **Operating Systems**: Ubuntu 22.04+, macOS 14+
- **Architectures**: x86_64, ARM64
- **Ruby Versions**: 3.2, 3.3, 3.4, 4.0

> **Note**: Windows is not supported. For Windows CI, use [ruby/setup-ruby](https://github.com/ruby/setup-ruby).

