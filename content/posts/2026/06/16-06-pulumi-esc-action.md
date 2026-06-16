---
title: esc-action
date: 2026-06-16 06:51:57 +00:00
tags:
  - pulumi
  - GitHub Actions
draft: false
repo: https://github.com/pulumi/esc-action
marketplace: https://github.com/marketplace/actions/esc-action
version: v3.0.0
dependentsNumber: "197"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/pulumi/esc-action** to version **v3.0.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **197** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/esc-action) to find the latest changes.

## What's Changed

## Switch from the standalone ESC CLI to the Pulumi CLI

This action now installs the **Pulumi CLI** and uses its `pulumi esc` (alias of `pulumi env`) subcommands instead of the standalone `esc` CLI.

### ⚠️ Breaking changes

- **Binary on `PATH`:** later workflow steps now get the `pulumi` binary instead of `esc`. Steps that invoked `esc ...` directly must switch to `pulumi esc ...`.
- **`version` input:** now specifies a **Pulumi CLI** version (e.g. `3.246.0`) rather than an ESC CLI version (e.g. `0.10.0`). Workflows pinning an old ESC version must update or drop the pin.

### Notes

- With no `version:` input, the latest Pulumi CLI is resolved at runtime on every run, so `@v3` always installs the newest CLI.
- The full Pulumi CLI (binary + language plugins) is installed, so later steps like `pulumi up` work too.
- `install()` now fails fast with a clear error if the `pulumi` binary isn't present after extraction.

**Full changelog:** https://github.com/pulumi/esc-action/pull/47
