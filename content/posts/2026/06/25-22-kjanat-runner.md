---
title: Setup runner cli
date: 2026-06-25 22:27:55 +00:00
tags:
  - kjanat
  - GitHub Actions
draft: false
repo: https://github.com/kjanat/runner
marketplace: https://github.com/marketplace/actions/setup-runner-cli
version: v0.14.2
dependentsNumber: "8"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/kjanat/runner** to version **v0.14.2**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-runner-cli) to find the latest changes.

## What's Changed

### Added

- `runner config` subcommand to manage `runner.toml`: `init` scaffolds a
  fully-commented starter file (`--force` to overwrite), `show` prints the
  effective config (`--json` for machine output), `validate` parses and
  checks it (exit 2 on error), and `path` prints the resolved file path. The
  scaffold's line 1 is a `#:schema` directive pointing at the committed JSON
  Schema, so tombi/taplo give autocompletion in any project with no setup.
- `runner.toml` is now documented in the README with a `## Configuration`
  section covering every section and the override precedence chain.

### Changed

- `config validate` rejects a `[chain]` that sets both `keep_going` and
  `kill_on_fail` true — the resolver already errored on this combination at
  dispatch time; validation now catches it statically against the file
  alone.
- JSON Schema URLs rehosted from `https://kjanat.github.io/schemas/…` to
  `https://kjanat.github.io/runner/schemas/…`. Changes the `$id` of every
  committed schema and the `$schema` field emitted by `doctor`/`list`/`why`
  `--json`. The base is now sourced from `[package.metadata].schema-base`.

**Full Changelog**: https://github.com/kjanat/runner/compare/v0.14.1...v0.14.2

