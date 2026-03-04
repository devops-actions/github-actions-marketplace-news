---
title: Setup Anyzig
date: 2026-03-04 05:42:19 +00:00
tags:
  - mattneel
  - GitHub Actions
draft: false
repo: https://github.com/mattneel/setup-anyzig
marketplace: https://github.com/marketplace/actions/setup-anyzig
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mattneel/setup-anyzig** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-anyzig) to find the latest changes.

## Action Summary

The `setup-anyzig` GitHub Action installs the `anyzig` tool, which dynamically resolves and downloads the appropriate Zig compiler version based on your project's `build.zig.zon` configuration. This ensures that the Zig compiler version aligns with your project's requirements, eliminating version mismatches and simplifying project setup. It also supports caching for improved performance and is compatible with Mach projects.

## Release notes

Install [anyzig](https://github.com/marler8997/anyzig) as your `zig` binary in GitHub Actions workflows.

Unlike `mlugg/setup-zig`, this doesn't download a specific Zig version — anyzig automatically resolves the correct compiler from your project's `build.zig.zon` (`minimum_zig_version`, `.zig_version`, or `.mach_zig_version`).

## Usage
```yaml
- uses: actions/checkout@v4
- uses: mattneel/setup-anyzig@v1
- run: zig build test
```

## Inputs

| Input | Default | Description |
|-------|---------|-------------|
| `version` | `latest` | Anyzig release tag to install |
| `use-cache` | `true` | Cache compiler downloads between runs |
| `cache-key` | `""` | Extra suffix for matrix cache disambiguation |

## Supported Platforms

- `ubuntu-latest` (x86_64, ARM64)
- `macos-latest` (ARM64 only — no Intel Mac support)
- `windows-latest` (x86_64, ARM64)
