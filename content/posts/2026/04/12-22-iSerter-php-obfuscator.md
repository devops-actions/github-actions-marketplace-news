---
title: PHP Obfuscator
date: 2026-04-12 22:00:31 +00:00
tags:
  - iSerter
  - GitHub Actions
draft: false
repo: https://github.com/iSerter/php-obfuscator
marketplace: https://github.com/marketplace/actions/php-obfuscator
version: v0.1.4
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/iSerter/php-obfuscator** to version **v0.1.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/php-obfuscator) to find the latest changes.

## Action Summary

The `iserter/php-obfuscator` GitHub Action automates the obfuscation of PHP code to protect intellectual property, supporting modern PHP versions from 7.4 to 8.5. It enhances deobfuscation resistance through techniques like control flow flattening, dead code injection, and per-file XOR string encoding, making it harder for reverse engineering. The action is designed for CI/CD pipelines, offering incremental processing, consistent symbol scrambling across projects, and a clean, test-covered architecture with customizable YAML-based configurations.

## What's Changed

## [0.1.4](https://github.com/iSerter/php-obfuscator/compare/v0.1.3...v0.1.4) (2026-04-12)


### Bug Fixes

* enhance string encoding to skip static variable initializers ([6d8340d](https://github.com/iSerter/php-obfuscator/commit/6d8340d00bc6a9bccc0f40cb114cbd37459e7c92))
* implement reserved names handling in IdentifierScrambler ([a8fcbd3](https://github.com/iSerter/php-obfuscator/commit/a8fcbd32dfeb1230ca2ab21473608af2565286ac))
