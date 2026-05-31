---
title: Move Doctor
date: 2026-05-31 06:32:51 +00:00
tags:
  - notmatical
  - GitHub Actions
draft: false
repo: https://github.com/notmatical/move-doctor
marketplace: https://github.com/marketplace/actions/move-doctor
version: move-doctor0.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/notmatical/move-doctor** to version **move-doctor@0.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/move-doctor) to find the latest changes.

## Action Summary

Move Doctor is a deterministic linter designed specifically for Sui Move codebases to automate code quality checks. It identifies issues related to conventions, testing, security, and more, providing a comprehensive health score (0–100) and actionable insights based on canonical sources like the Move Book and Sui-specific best practices. This tool streamlines code reviews, helps enforce standards, and can be integrated into CI workflows to ensure consistent quality across projects.

## What's Changed

### Minor Changes

-   [#9](https://github.com/notmatical/move-doctor/pull/9) [`24edc5d`](https://github.com/notmatical/move-doctor/commit/24edc5d25a8b0b3af4e18cc03da76382b36a3cea) Thanks [@notmatical](https://github.com/notmatical)! - Rebuild the interactive CLI on [@clack/prompts](https://github.com/bombshell-dev/clack), elevate the scan report, and harden the CLI surface.

    -   **Prompts**: the install wizard is now a cohesive clack flow (`intro`/`spinner`/`log`/`outro`); `select`/`multiselect` are clack-backed and the unmaintained `prompts` package is dropped.
    -   **Monorepo scope**: running inside a sub-package of a multi-package workspace now asks whether to scan just that package or the whole workspace (defaulting to focus; non-interactive runs stay focused and surface an `--all` hint).
    -   **Scoring**: info findings are now capped low per rule (5 vs 25), so an error-free but advisory-heavy codebase is no longer dragged to 0/100 — errors and warnings still bite.
    -   **Redesigned report**: a rounded "diagnosis" card frames the labelled score, a full-width severity-composition bar + percentage legend, and the metadata strip (title on the top border, hyperlinked `move.doctor` wordmark on the bottom). Severity is encoded by colour _and_ fill density (`█` errors → `▓` warnings → `▒` info → `░` empty) so bars read as a gradient and survive no-colour terminals. Below the card, a "by area" breakdown (single) and "by package" breakdown (workspace) give every row its own magnitude+composition bar, so hot spots surface by both size and redness. Verbose drills into bucket → rule → location. Clean code shows a solid green bar + "clean bill of health". Covers single, workspace, verbose, and non-verbose consistently.
    -   **Polish**: the detection line no longer duplicates the header's name/packages/Sui; the score is now explicitly labelled (`score 23 / 100`, per-package `33/100` under a "score out of 100" header); and the `move.doctor` wordmark is an OSC-8 hyperlink to <https://move.doctor/> on capable terminals.
    -   **Cleanup**: shared rendering helpers hoisted into `render-common.ts`; a single `BAR_WIDTH` constant (in `constants.ts`) replaces the duplicated bar widths; centralized terminal glyphs and suggested commands (standardized on `npx move-doctor@latest …`); removed dead code (`install.ts`, unused options); memoized `sui --version` detection.
    -   Glyphs fall back to ASCII on legacy Windows consoles; `--json`/`--score`/CI output is unchanged.

### Patch Changes

-   [#11](https://github.com/notmatical/move-doctor/pull/11) [`d0feceb`](https://github.com/notmatical/move-doctor/commit/d0fecebd4f9a07984a014e1c64625aec8d78e7de) Thanks [@notmatical](https://github.com/notmatical)! - The agent skill no longer fetches per-rule recipes from `move.doctor/prompts/rules/*`. Every finding already carries its own `fixHint` and `citation` in `--json`, so the `/movedoctor` flow fixes straight from the diagnostic — one less network dependency and no per-rule doc tree to keep in sync.

-   [#9](https://github.com/notmatical/move-doctor/pull/9) [`24edc5d`](https://github.com/notmatical/move-doctor/commit/24edc5d25a8b0b3af4e18cc03da76382b36a3cea) Thanks [@notmatical](https://github.com/notmatical)! - Fix CLI version drift and misleading workspace output:

    -   The branded header and `--version` now report the real package version (injected from `package.json` at build time) instead of a hardcoded `0.1.0`.
    -   In a monorepo, scanning a single focused package no longer prints a misleading `(1 of N)` count — it now matches the standalone-package line.
    -   Removed the "Full rule catalog" link to `move.doctor/docs/rules`, which doesn't exist yet.

