---
title: Nodo code map
date: 2026-06-19 07:00:32 +00:00
tags:
  - shivae372
  - GitHub Actions
draft: false
repo: https://github.com/shivae372/nodo
marketplace: https://github.com/marketplace/actions/nodo-code-map
version: v1.2.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/shivae372/nodo** to version **v1.2.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nodo-code-map) to find the latest changes.

## What's Changed

## v1.2.2

Reliability and trust release. Everything here came out of a detailed heavy-user
review: nodo now survives a Windows console, tells you how confident it is (and
when it's guessing), and its self-heal loop actually completes. Zero new
dependencies, no breaking changes — drop-in over 1.2.1.

### 🐞 Fixed

- **Windows cp1252 crash on first run.** A scan would build the entire graph and
  then die on the final summary line because a default Windows console can't
  encode characters like `→`, `↔`, or `✔` (`UnicodeEncodeError`). nodo now forces
  UTF-8 console output at startup, so `--deep`, `--self-check`, and every other
  command run cleanly out of the box — no `PYTHONUTF8=1` workaround needed.
- **False "imported symbol not exported" on multi-dot modules.** Imports like
  `./auth.store` were mis-resolved to a sibling `auth.ts`, producing a confident
  but wrong finding. Module specifiers with dotted names (`*.store`, `*.config`,
  `*.model`) now resolve correctly.

### ✨ Improved

- **`nodo ask` is honest about how it routes.**
  - Multi-part questions ("where is X *and* how does Y work") are split and each
    part answered with its own route, instead of being forced into a single
    symbol lookup.
  - Symbol answers are labelled with confidence. For an ambiguous word like
    `worker`, nodo leads with the concept search and offers the symbol match as a
    clearly-labelled, low-confidence alternate — no more confidently-wrong answers.
- **Confidence now means what it says.** Import-contract findings are only marked
  `high` when the import resolved exactly; alias (`@/`, `~`) and multi-dot imports
  report `medium` ("a spot to verify"), so `high` is reserved for high precision.
- **The self-check nudge points straight at the fix.** When one unknown file type
  dominates a scan, nodo names it and the next step, e.g.
  `self-check: 18 .vue file(s) nodo can't parse yet — run \`nodo . --self-check\` to
  auto-draft a .vue lesson, then \`--teach\` it`.
- **Clearer `--help` for `--deep` vs `--ast`** — what deep adds (call graph +
  knowledge graph) and when it pays off.

### 🩹 Self-heal loop completed (resolver hints)

Teaching a `resolver_hint` now actually heals:
- **Importer-aware, scoped hints.** A key of the form `"<dir>::<import>"` lets the
  *same* relative import (e.g. `./App`) resolve to different files in different
  base dirs — something a literal-string key couldn't express. Plain global keys
  still work.
- **Flexible hint values.** The target needn't be the exact stored path; nodo
  re-resolves it for the importing file.
- **`--self-check` consults hints.** Previously a taught hint fixed the edge but
  the self-check kept reporting the import as unresolved forever. Now the loop
  completes: teach → `No blind spots detected ✔`.

### 🧰 Compatibility

- No new runtime dependencies — still pure standard library.
- Fully backward compatible: existing `.nodo/lessons.json` files (including plain
  `resolver_hints`) work unchanged; scoped `"dir::import"` keys are an optional
  addition.
- Tested across both parser modes (zero-dependency regex **and** tree-sitter AST):
  full suite green, with new regression coverage for every fix above.
