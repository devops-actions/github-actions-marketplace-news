---
title: runward gate
date: 2026-07-31 22:21:47 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.29.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Runward automates and verifies engineering decisions made through AI-assisted software development, ensuring that load-bearing choices are documented and verified deterministically, without relying on an LLM's interpretation of the process. It provides a way for coding agents to work through a full engineering mission from framing to handover while verifying compliance with strict requirements.
---


Version updated for **https://github.com/stranxik/runward** to version **v0.29.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

Runward automates and verifies engineering decisions made through AI-assisted software development, ensuring that load-bearing choices are documented and verified deterministically, without relying on an LLM's interpretation of the process. It provides a way for coding agents to work through a full engineering mission from framing to handover while verifying compliance with strict requirements.

## What's Changed

First field use of [v0.28.0](https://github.com/stranxik/runward/releases/tag/v0.28.0)'s territory map, by the mission that asked for it, one afternoon later. Two defects — both of the same species: **a mechanism that is correct and unreachable is not a mechanism.**

**The map required `## Territory` exactly.** They titled theirs `# Territory` and it was silently voided. The diagnostic existed and said the right thing, at line 16 of a 28-line output nobody scrolls. A map its author believes is active and runward ignores is *precisely* the state v0.28.0's "every refused row is named with its line" rule exists to prevent — counting `#` reintroduced it one level up, at the file instead of the row. Any heading level is now accepted, and a heading of any level still ends the section, so a following `# Notes` table is never eaten. A map that could not be read now says so **first**, above every match:

```
This map was not read
─────────────────────────────
  ✗ runward/territory.md: no `Territory` heading — the map needs a `## Territory` section (any heading level) above its table
  Everything below is derivation only — your declarations had no effect.
```

**`Territory coverage` moves from `characterize` to `status`.** v0.28.0 put the anti-rot instrument in the one command a governed mission has no reason to run: `characterize` announces it targets ungoverned repositories, and writes a `characterization.md` that is not a mission deliverable — the reporting mission deleted the file after reading it. `runward status` is the governed-mission read, at the same groom cadence, and it writes nothing.

```
Territory coverage
──────────────────────────
  1 of 109 walked file(s) carry a category · background-work 1 · scheduled-work 1 · secret-boundary 1
  runward/territory.md: 1 row(s) declared.
```

The walk moves with it — still bounded and `SKIP_DIRS`-pruned, still reading no ignore file, so the [ADR-0039](https://github.com/stranxik/runward/blob/main/docs/adr/ADR-0039-the-cli-reads-your-mission-repo-never-your-behavior.md) line that killed `check --changed <base>` holds. **What this costs, stated:** an ungoverned repository no longer gets the measure. That is correct rather than regrettable — with no `runward/` there is no map and nothing to be inert.

[ADR-0043](https://github.com/stranxik/runward/blob/main/docs/adr/ADR-0043-territory-is-declared-in-two-parts.md) amended with both corrections and the cost. 154 unit tests, self-gate `--strict` green.

Full changelog: [CHANGELOG.md](https://github.com/stranxik/runward/blob/main/CHANGELOG.md)

