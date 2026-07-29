---
title: AGENTS.md Lint (Schliff)
date: 2026-07-29 14:47:37 +00:00
tags:
  - Zandereins
  - GitHub Actions
draft: false
repo: https://github.com/Zandereins/schliff
marketplace: https://github.com/marketplace/actions/agents-md-lint-schliff
version: v8.8.1
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  **Schliff scores `AGENTS.md` to determine the quality of AI instruction files, ensuring consistent output across different machines and tools. It provides a deterministic rubric for scoring these files, eliminating ambiguity in tool performance degradation and improving reproducibility.**
---


Version updated for **https://github.com/Zandereins/schliff** to version **v8.8.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-md-lint-schliff) to find the latest changes.

## Action Summary

**Schliff scores `AGENTS.md` to determine the quality of AI instruction files, ensuring consistent output across different machines and tools. It provides a deterministic rubric for scoring these files, eliminating ambiguity in tool performance degradation and improving reproducibility.**

## What's Changed

Patch release: four precision fixes to the security scorer, found by field-testing the shipped engine against 670 real SKILL.md files from 134 public community hubs.

That scan produced 144 security matches and, after hand-adjudication by two independent blind passes, **zero** true positives. Four pattern defects accounted for most of the noise:

- **`_RE_SEC_DATA_EXFIL` had no word boundary** — the short `nc` alternative matched the tail of any word ending in "nc": `async ops`, `sync primitives`, `CNC tool-path`, `BenchmarkMyFunc`.
- **`_RE_SEC_DATA_EXFIL` read markdown as shell** — a bare `|` (markdown table cell separator) or any backtick span (inline code) counted as a pipe or command substitution. One skill was flagged on a passage *warning its users not to pipe curl into bash*. A pipe now counts only when it pipes into something that executes or transmits.
- **`_RE_SEC_DANGEROUS_CMD` treated `rm -rf /` as a prefix** — so it flagged the canonical Docker layer cleanup `rm -rf /var/lib/apt/lists/*` as a root wipe.
- **`_RE_SEC_ENV_LEAK` had the same missing anchor** (`cat`/`log` are the tails of `concat`/`catalog`/`changelog`). Latent rather than observed, fixed for consistency.

**Measured effect on the same corpus:** security matches 144 → 44 (−69%). Files scoring a perfect 100 on security: 598 → 650. Files tripping the advisory gate (`SECURITY_GATE = 70`) — every one a false alarm — **27 → 6**, and of the six that remain one is a genuinely malicious test fixture and one an openly declared red-team skill.

**Narrowed, not disarmed.** The four genuinely hostile files in the corpus keep every real detection byte-identical. Each false-positive regression test is paired with a guard asserting the genuine attack shape still matches.

**No published number moved.** The README hero score (95.6/S), the case-study numbers (28.7 / 84.5 / 94.6) and the leaderboard seed dimensions were all re-verified against the post-fix engine before release. Security scores for external files can only rise — the change removes penalties, it never adds them.

Full detail in [CHANGELOG.md](https://github.com/Zandereins/schliff/blob/main/CHANGELOG.md#881---2026-07-29).

