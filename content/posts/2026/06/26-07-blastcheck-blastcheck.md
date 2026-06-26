---
title: blastcheck
date: 2026-06-26 07:27:00 +00:00
tags:
  - blastcheck
  - GitHub Actions
draft: false
repo: https://github.com/blastcheck/blastcheck
marketplace: https://github.com/marketplace/actions/blastcheck
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/blastcheck/blastcheck** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/blastcheck) to find the latest changes.

## What's Changed

Cuts **0.3.0** from `main` — 10 commits past the published 0.2.0, shipping the whole **verdict-surfacing v2** epic (Signal-vs-Report Surfacing for Claude Code) plus a new pull command.

## Highlights

- **`blastcheck show` (FR7)** — render the last `.blastcheck/scorecard.json` in human-readable form to **stdout**, instead of `cat`-ing the JSON. It's a *pull* command, so the render is the payload; no scorecard yet (or an unreadable one) prints a short notice to stderr and still exits `0` — it never crashes.
- **State-dedup (1.1)** — no-op `Stop` turns stay silent; the verdict isn't re-surfaced when nothing changed (NFR1).
- **Severity-aware verdict text + calm tiering (1.2)** — `pass` is quiet, `warn` shows a visible line, `fail` adds a desktop alert; the wording is severity-aware.
- **Push-on-gate-fail + reliability chain (1.3)** — a gate-fail (denied-files / required-checks) emits a default push even with `block` off, with an injection-safe reason (FR6 reliability chain).

## Notes

- The published npm `latest` is now `blastcheck@0.3.0` (`npm i -g blastcheck` / `npx blastcheck`).
- The floating `v1` tag now points at this release, so `uses: blastcheck/blastcheck@v1` tracks 0.3.0.
- lint + typecheck clean, 474/474 tests pass.

**Full changelog:** https://github.com/blastcheck/blastcheck/compare/v0.2.0...v0.3.0
