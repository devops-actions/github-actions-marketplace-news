---
title: Setup runner
date: 2026-05-14 14:37:51 +00:00
tags:
  - kjanat
  - GitHub Actions
draft: false
repo: https://github.com/kjanat/runner
marketplace: https://github.com/marketplace/actions/setup-runner
version: v0.10.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/kjanat/runner** to version **v0.10.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-runner) to find the latest changes.

## Action Summary

The GitHub Action "runner" is a universal task runner designed to streamline project workflows by auto-detecting toolchains and providing a unified command-line interface for managing tasks across various package managers and task sources. It simplifies task execution in monorepos and single projects by aggregating tasks from multiple sources (e.g., package manifests, Makefiles, turbo pipelines) and offers deterministic task routing, resilient detection, and safe defaults. This tool automates routine operations such as task execution, dependency installation, and workspace management, reducing complexity and ensuring consistency across diverse development environments.

## What's Changed

### Added

- mise task extraction and dispatch. `mise` was previously
  detection-only — `runner` listed it under "Task Runners" but its
  tasks were invisible to `runner list` and `runner run <task>`.
  New `TaskSource::MiseToml` makes mise a first-class source: tasks
  declared in `mise.toml` / `.mise.toml` (and the `*.local.toml`,
  `mise/config.toml`, `.config/mise.toml` companions in mise's
  documented precedence) appear in listings, participate in the
  selection priority, and dispatch via `mise run <task>`.
- Bacon-style two-tier extraction for mise. Primary path shells
  out to `mise tasks --json` — authoritative across mise's config
  layering and file-based tasks (`mise-tasks/*`); fallback parses
  the first project-local config when `mise` isn't on `$PATH`.
  Both paths exclude hidden tasks (`hide = true`),
  underscore-prefixed names, and tasks whose `source` lives
  outside the project root (so global / `~/.config/mise/*` tasks
  don't pollute the project's task list). Empty or
  whitespace-only `description = ""` values are treated as
  missing so the renderer falls through to the `run` body or
  `file` reference instead of showing a blank column. Aliases
  come through as separate entries pointing at their target,
  mirroring the justfile shape.

### Fixed

- Resolver no longer dispatches through a Node package manager in
  projects with no Node-ecosystem evidence ([#23]). `runner run
  <unknown-task>` in a Go-only repo with `bun` installed used to
  warn "no node signals matched" and then run `bun <task>` anyway;
  the `FallbackPolicy::Probe` PATH probe now requires a
  `package.json` (or equivalent manifest) somewhere upward of
  `ctx.root` before it considers the canonical Node order.
  Without that evidence the resolver returns the existing soft
  `NoSignalsFound` sentinel and `cmd::run::run_pm_exec_fallback`
  spawns the target directly on `$PATH` — no more wrong-ecosystem
  dispatch.

[#23]: https://github.com/kjanat/runner/issues/23

## What's Changed
* resolver: skip Node PATH probe in non-Node projects by @kjanat in https://github.com/kjanat/runner/pull/24


**Full Changelog**: https://github.com/kjanat/runner/compare/v0.9.0...v0.10.0
