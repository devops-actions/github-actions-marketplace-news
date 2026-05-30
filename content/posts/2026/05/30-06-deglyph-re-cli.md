---
title: deglyph scan
date: 2026-05-30 06:32:47 +00:00
tags:
  - deglyph-re
  - GitHub Actions
draft: false
repo: https://github.com/deglyph-re/cli
marketplace: https://github.com/marketplace/actions/deglyph-scan
version: v1.2.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/deglyph-re/cli** to version **v1.2.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deglyph-scan) to find the latest changes.

## Action Summary

The `deglyph` GitHub Action is a binary analysis tool designed to load and analyze PE, ELF, and Mach-O files, even when they lack exports or symbols. It automates tasks such as function recovery, disassembly annotation, call graph navigation, and heuristic detection of structures like constants and call arguments, providing insights into binary behavior without requiring a decompiler or binary execution. Key capabilities include an interactive interface for exploring disassembly, an AI assistant for function explanations, and support for CI pipelines to audit binaries for security and integrity issues.

## What's Changed

- **Fat (universal) Mach-O support.** A multi-arch Mach-O (e.g. `x86_64` + `arm64e`) now loads correctly. Earlier builds read only the first slice and, worse, landed in the fat header's zero padding, so disassembly came back as a wall of `add byte ptr [rax], al`. deglyph now parses the fat container, picks a slice, and folds each slice's file offset into every section read, which also fixes string extraction, search, and scanning on these binaries.
- **Live scan badge.** `deglyph scan --format badge` emits a shields.io endpoint object summarizing the run (clean / N errors / N warnings, colored by the worst level), ready to publish as a README badge. The GitHub Action gained a `badge` input that writes the file on every run, even when the gate fails.
- **Whole-file content map.** The TUI renders a colorized map of the entire file's regions, complementing the per-function disassembly and hexdump.

## New features

### Fat Mach-O slices
- `load_image` resolves a fat binary, chooses a slice (explicit `--slice N` -> requested `--arch` -> host arch -> first), and corrects section offsets so reads land in the chosen slice.
- CLI: `--slice N` selects a slice; the chosen slice and the full list are reported.
- TUI: a per-slice picker under Binary, with reload on switch.

### Scan badge output
- `--format badge` produces a shields.io endpoint-badge JSON (`schemaVersion`, `label`, `message`, `color`).
- A clean scan reads `clean` in green; otherwise the message counts findings worst-first and the color follows the worst level (note = blue, warning = yellow, error = red).
- The GitHub Action's `badge` input writes the same file from a workflow.

### TUI content map
- A whole-file region map rendered as Rich Text, alongside the existing disassembly and hexdump views.

## Fixes

- Markdown scan reports use an ASCII separator, so the `$GITHUB_STEP_SUMMARY` append no longer mangles on Windows runners that decode it as cp1252.

## Documentation and tooling

- CLAUDE.md restructured via progressive disclosure: the 18 architecture invariants, the full Common Mistakes table, and the extension how-tos moved verbatim into `doc/claude/`, leaving the main file at every-session essentials plus a sub-documentation table.
- New help entries for badges and the updated output formats; README and help use a logo-enhanced badge.
- The tone/style verifier (`scripts/verify.py`) treats `doc/claude/` as developer docs, exempt from the ASCII-only rule like CLAUDE.md.
- Action usage examples pinned to `v1.2.0`.

## Upgrading

The GitHub Action examples reference `deglyph-re/cli@v1.2.0`. Create and push the `v1.2.0` tag for that reference to resolve.

