---
title: SlopLock
date: 2026-08-26 06:22:05 +00:00
tags:
  - theinfosecguy
  - GitHub Actions
draft: false
repo: https://github.com/theinfosecguy/sloplock
marketplace: https://github.com/marketplace/actions/sloplock
version: v2.1.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  The SlopLock GitHub Action automates the process of identifying and blocking AI-hallucinated, nonexistent, and too-new dependencies before they are installed or merged into a project. It helps prevent security vulnerabilities by ensuring that only verified package names are used. The action scans dependencies across eight public registries and provides detailed reports to help developers and maintainers validate package names.
---


Version updated for **https://github.com/theinfosecguy/sloplock** to version **v2.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sloplock) to find the latest changes.

## Action Summary

The SlopLock GitHub Action automates the process of identifying and blocking AI-hallucinated, nonexistent, and too-new dependencies before they are installed or merged into a project. It helps prevent security vulnerabilities by ensuring that only verified package names are used. The action scans dependencies across eight public registries and provides detailed reports to help developers and maintainers validate package names.

## What's Changed

# SlopLock v2.1.0

This minor release adds a pre-execution dependency guard for Claude Code. It
checks package names in install commands before a package manager downloads or
executes anything, using the same registry and cooldown policies as the CLI and
GitHub Action.

## Install Hook

- Adds `sloplock hook`, a JSON hook entry point for `PreToolUse` Bash events.
- Distributes the hook as a self-contained plugin backed by the committed
  `dist/hook/index.cjs` bundle.
- Denies findings at or above `failOn`, asks for confirmation below the
  threshold, and leaves the normal permission flow unchanged when no finding is
  present.
- Fails open with a visible message when a public registry cannot be reached.

## Install Command Coverage

- Recognizes npm, pnpm, Yarn, Bun, npx, pip, uv, pipx, Poetry, PDM, Cargo, Go,
  RubyGems, Bundler, Composer, and dotnet package-install commands.
- Finds installs in command chains, conditionals, loops, subshells, and command
  substitutions, including expanding heredocs.
- Normalizes package and module names before registry checks and ignores local,
  workspace, path, URL, git, and other non-registry sources.

## Registry Safety

- Skips commands that explicitly use private or alternate registries instead of
  treating public-registry absence as a package finding.
- Recognizes public registry URLs supplied through command flags or environment
  variables, so explicit public configuration does not disable checks.
- Applies `GOPRIVATE` and `GONOPROXY` per Go module path and respects `unset`
  when environment overrides are removed inside a command.
- Keeps registry failures distinct from nonexistent-package findings.

## Distribution

- Adds the repository plugin manifest and marketplace catalog for installation
  through `theinfosecguy/sloplock`.
- Publishes the bundled hook in the npm package and repository release.
- Updates the CLI, Action, and generated artifacts to version 2.1.0.

See `docs/hook.md` for installation, supported commands, configuration, and
known parser limitations.

