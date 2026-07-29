---
title: AGENTS.md Lint (Schliff)
date: 2026-07-29 22:46:17 +00:00
tags:
  - Zandereins
  - GitHub Actions
draft: false
repo: https://github.com/Zandereins/schliff
marketplace: https://github.com/marketplace/actions/agents-md-lint-schliff
version: v8.8.2
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  Schliff is an open-source tool that scores AI instruction files (`AGENTS.md`, `SKILL.md`, `CLAUDE.md`) against a specified rubric to ensure consistency and quality across different environments. It provides deterministic scores without relying on external models, ensuring reproducibility and reliability.
---


Version updated for **https://github.com/Zandereins/schliff** to version **v8.8.2**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-md-lint-schliff) to find the latest changes.

## Action Summary

Schliff is an open-source tool that scores AI instruction files (`AGENTS.md`, `SKILL.md`, `CLAUDE.md`) against a specified rubric to ensure consistency and quality across different environments. It provides deterministic scores without relying on external models, ensuring reproducibility and reliability.

## What's Changed

Patch release that closes a detection regression **8.8.1 introduced itself**.

8.8.1 narrowed the data-exfiltration sink so a pipe only counts when it pipes into something that executes or transmits — a real precision win, but it required the interpreter token *flush against the pipe*. Anything wrapping it walked straight through, and `curl … | sudo bash` is more dangerous than the form that was caught, not less.

Verified against the 8.8.0 source read from its tag:

| shape | 8.8.0 | 8.8.1 | 8.8.2 |
| --- | --- | --- | --- |
| `curl … \| sudo bash`, `\| sudo -E sh`, `\| env FOO=1 bash` | caught | missed | **caught** |
| `curl … \| /bin/bash`, `\| /usr/bin/env sh` | caught | missed | **caught** |
| `curl … \| iex`, `\| pwsh`, `\| powershell`, `\| php`, `\| fish`, `\| dd` | caught | missed | **caught** |
| `curl … \|& bash`, `\| "bash"`, `\| $SHELL`, `\| busybox sh` | caught | missed | **caught** |

8.8.0 caught these incidentally, through the same bare-pipe sink that produced all its noise — but the outcome stands: for this class, 8.8.1 detected less than its predecessor.

**Enumerated, not guessed.** The evasion set comes from differencing all 164 verb × sink combinations against the 8.8.0 pattern and keeping only the genuine losses. That also separates real evasions from intended narrowing: `| jq`, `| grep`, `| less`, `| column -t` and `| head` no longer match, which is the entire point of the change. Every remaining difference against 8.8.0 is now either caught or deliberately benign.

**No precision was traded away.** Re-scanning the frozen 670-skill / 134-hub field corpus after each widening gives byte-identical stock counts — 44 total, every category ±0 — so the recovered detections cost nothing measurable. ReDoS re-verified linear after each change; this pattern has a documented ReDoS history and every quantifier stays bounded.

**No published number moved.** The README hero score (95.6/S, 1,065 tokens), the case-study numbers (28.7 / 84.5 / 94.6) and the leaderboard seed dimensions were all re-verified against the post-fix engine before the version was bumped.

Full detail in [CHANGELOG.md](https://github.com/Zandereins/schliff/blob/main/CHANGELOG.md#882---2026-07-29).

