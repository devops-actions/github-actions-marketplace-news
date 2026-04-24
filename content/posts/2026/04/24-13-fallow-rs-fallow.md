---
title: Fallow - Codebase Intelligence
date: 2026-04-24 13:58:37 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.48.1
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.48.1**.

- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

Fallow is a Rust-native, zero-configuration GitHub Action and CLI tool for static analysis of TypeScript and JavaScript codebases. It identifies and reports unused code, duplication, complexity, and architectural issues, helping developers clean up, streamline, and maintain healthier code. Additionally, it offers optional runtime intelligence to analyze code execution in production, enabling data-driven decisions and facilitating faster reviews of AI-generated changes.

## What's Changed

## Bug fixes

**`fallow setup-hooks` now blocks stale-binary bypass of the Claude Code gate.** A `fallow` older than v2.46.0 on your `PATH` silently passed audits that newer fallow would correctly fail (pre-dates the uncommitted-changes inclusion fix in `aabb8e1b`). The generated `.claude/hooks/fallow-gate.sh` now enforces a `FALLOW_GATE_MIN_VERSION` floor (default `2.46.0`) and blocks with a copy-pasteable upgrade hint when the resolved binary is below the floor. Every verdict=fail block also prepends `fallow-gate: blocked by fallow <version> at <binary>` to stderr, so the responsible binary is identifiable without re-diagnosis; the installed script stamps `# Installer version: <semver>` in its header for forensics (substituted at install time from setup-hooks's own version).

Override the floor with `FALLOW_GATE_MIN_VERSION=<semver>`; disable with an empty string. Existing installs pick up the new gate on the next `fallow setup-hooks` run. See [version floor](https://docs.fallow.tools/integrations/claude-hooks#version-floor).

## Internal

Unit-size refactors with byte-identical output across all formats (same fingerprints, same severities, same issue ordering): `find_unused_members` inheritance propagation and three report builders (`build_human_lines`, `build_sarif`, `build_codeclimate`) split into per-section helpers; CodeClimate pkg-path dep sections collapsed behind a `NamedPkgDep` trait.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.48.0...v2.48.1

