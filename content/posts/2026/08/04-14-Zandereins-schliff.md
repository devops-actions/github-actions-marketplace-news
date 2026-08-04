---
title: AGENTS.md Lint (Schliff)
date: 2026-08-04 14:41:11 +00:00
tags:
  - Zandereins
  - GitHub Actions
draft: false
repo: https://github.com/Zandereins/schliff
marketplace: https://github.com/marketplace/actions/agents-md-lint-schliff
version: v8.10.0
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  Schliff scores AGENTS.md against an explicit, versioned rubric to ensure deterministic quality scores for AI instruction files, preventing the degradation of tools like Cursor, Codex, Copilot, and Claude Code due to rotting files. It provides a rule engine that can be read, pinned, and gated CI on.
---


Version updated for **https://github.com/Zandereins/schliff** to version **v8.10.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-md-lint-schliff) to find the latest changes.

## Action Summary

Schliff scores AGENTS.md against an explicit, versioned rubric to ensure deterministic quality scores for AI instruction files, preventing the degradation of tools like Cursor, Codex, Copilot, and Claude Code due to rotting files. It provides a rule engine that can be read, pinned, and gated CI on.

## What's Changed

Four correctness fixes in the same place: a value that describes *how* a file was measured, reported wrongly. Two had been sitting on `main` unreleased since 2026-07-31; the other two were found while verifying them.

**This is a minor, not a patch, because one fix lowers scores.** `schliff score --format skill` on a file without YAML frontmatter now agrees with `--format skill.md` — which means it reports the lower, un-normalized number. Auto-detection, every other command, and the playground are unaffected.

## Fixed

### `--format skill` and `--format skill.md` scored the same file differently (#173)

```
schliff score AGENTS.md --format skill     → composite 39.3
schliff score AGENTS.md --format skill.md  → composite 34.5
```

Across the 29 tracked instruction files in this repo, **exactly the 8 that carry no YAML frontmatter** diverged, by **4.7–5.5 composite points** — two of them real files in the project's own benchmark corpus.

`shared.build_scores` branched on a raw string compare (`fmt != "skill.md"`), so the public `skill` alias entered a normalization branch that its canonical twin skips. For a file without frontmatter that branch invents a name and description from the body and scores the wrapped copy:

```
--format skill     structure 80, issues: [no_real_examples]
--format skill.md  structure 50, issues: [no_frontmatter, no_real_examples]
```

The alias was hiding the exact defect the structure dimension exists to report.

Two spellings of one format agreeing is not a judgment call for a deterministic scorer; which side they agree on is. Normalization exists so formats that *legitimately* carry no frontmatter (CLAUDE.md, AGENTS.md, `.cursorrules`) are scorable at all — and a SKILL.md is defined by its frontmatter. So the un-normalized number is the measurement, and 39.3 was the flattered one.

**Nothing that pins a format in CI can change verdict:** a stated format reaches the engine only through `score`, never through `verify`.

### `--format system-prompt` silently dropped the security dimension (#168)

The same file, the same version, scored `49.4` with 7 dimensions when the format was detected and `36.8` with 6 and no `security` when it was stated through the public hyphenated alias — a spread of 5.9 to 15.0 points across five files (as recorded in the fix's spec). The user who pins the format explicitly, the more careful thing to do in CI, got the wrong number.

`security` is a **core** headline dimension for `system_prompt` (weight 0.15), not the opt-in side signal it is for the skill.md family. Dispatch now resolves through a single `registry.resolve_format()`.

### `schliff doctor <typo>` exited 0 (#169)

A named directory that does not exist rendered "No skills found. Check skill directories." and exited successfully — indistinguishable from an empty directory, so no CI gate could catch the typo. The report then listed the *default* scan directories, which it had not scanned, as if those were the ones that came up empty. `verify` had always errored on a missing file; `doctor` disagreed with it.

Validation sits at the CLI boundary, so library callers are untouched, and only paths you *name* are checked — the built-in defaults stay optional, because `.claude/skills` legitimately does not exist in most repos.

### The version stamped into every score described the installed package, not the running engine (#172)

`_resolve_version()` read `importlib.metadata` — the installed dist-info — while its docstring promised the value "can never drift from pyproject.toml". In a source or editable checkout those are different things.

Measured in this repo before the fix: all three gated version sources said `8.9.0`, `schliff version` said `8.1.0`, and the console script was loading the 8.9.0 working tree the whole time.

Not cosmetic — `score --json` stamps this value as `version`, so it propagated into benchmark JSONL and leaderboard entries, attributing measurements to an engine version that never produced them. **A `pip install` user was never affected**; their metadata matches their code.

## Also

- The reported format now uses canonical names instead of echoing the `--format` alias. A genuine SKILL.md scored with `--format skill` used to print `Format: skill (normalized)`, where neither half was true. (#173)
- Repaired a stale `CHANGELOG.md` footer: `[Unreleased]` still compared against `v8.8.2`, skipping `v8.9.0`.
- GitHub Actions bumps: `codeql-action` v4.37.4, `gh-action-pypi-publish` v1.14.2. (#171)

## Verification

- **1939 tests collected**, green on 3.10 / 3.11 / 3.12 / 3.13 and macOS (1934 passed + 5 corpus-gated skips in CI); `ruff==0.15.8` and markdownlint clean
- Two-sided gate for #173: 29 files × 12 format values, comparing the composite *and* every per-dimension score — **340/348 cells byte-identical**, and the 8 that moved are exactly the accused set, each now equal to its canonical twin
- `python -m build` + `twine check`: both artifacts PASSED
- The built wheel, installed into a clean non-editable venv, reports `schliff 8.10.0`, and all four fixes hold in the shipped artifact

**Full changelog:** https://github.com/Zandereins/schliff/compare/v8.9.0...v8.10.0

