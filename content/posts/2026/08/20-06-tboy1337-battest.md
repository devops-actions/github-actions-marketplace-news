---
title: battest Action
date: 2026-08-20 06:19:15 +00:00
tags:
  - tboy1337
  - GitHub Actions
draft: false
repo: https://github.com/tboy1337/battest
marketplace: https://github.com/marketplace/actions/battest-action
version: v1.0.9
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The battest action is a runtime test runner for Windows batch files. It launches real `cmd.exe` and asserts on exit code, stdout, stderr, environment, and filesystem side effects, providing a trusted-fixture runner that does not isolate the filesystem or depend on other tools. The GitHub Action automatically enables safe defaults by default, which stubs common destructive externals to prevent harm during untrusted testing.
---


Version updated for **https://github.com/tboy1337/battest** to version **v1.0.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/battest-action) to find the latest changes.

## Action Summary

The battest action is a runtime test runner for Windows batch files. It launches real `cmd.exe` and asserts on exit code, stdout, stderr, environment, and filesystem side effects, providing a trusted-fixture runner that does not isolate the filesystem or depend on other tools. The GitHub Action automatically enables safe defaults by default, which stubs common destructive externals to prevent harm during untrusted testing.

## What's Changed

## [1.0.9] - 2026-08-20

GitHub Action Marketplace listing and installer-test hygiene.

- Action `name` is `battest Action` with branding (`check-square`, `blue`).
- Installer tests assert the parsed GitHub asset-host allowlist and URI host
  check. The regex timeout test builds its nested-quantifier pattern at
  runtime so CodeQL does not treat those fixtures as URL sanitizers or a
  shipped ReDoS expression.
