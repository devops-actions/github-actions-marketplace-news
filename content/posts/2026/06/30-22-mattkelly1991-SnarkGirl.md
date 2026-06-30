---
title: SnarkGirl
date: 2026-06-30 22:52:20 +00:00
tags:
  - mattkelly1991
  - GitHub Actions
draft: false
repo: https://github.com/mattkelly1991/SnarkGirl
marketplace: https://github.com/marketplace/actions/snarkgirl
version: v1.15.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mattkelly1991/SnarkGirl** to version **v1.15.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/snarkgirl) to find the latest changes.

## What's Changed

## SnarkGirl v1.15.2 — World Cup gets a glow-up ⚽💅

The World Cup tournament got a proper tactical rework.

### Changed
- **Teams are now people.** A club is the contributor — persistent and consistently named per handle. The **PR is the one-off opponent**, kept off the league table via `--away-ephemeral`. The home XI is named after your **agents**; the away XI after the **code units** (files / methods / assemblies).
- **Red cards no longer auto-lose.** A *code* red (committed secret / security hole) sends the unit off and adds a Critical to the scoreline; an *agent* red (a hallucinated or false-positive finding) benches the bot with **no** goal against the author. Results are now purely score-driven.
- Cards cut both ways — SnarkGirl can book her own agents for bogus findings, and asks the user when she is unsure.

### Fixed
- Corrected inverted `SIDE_NAMES` in `gm.py` (home = club, away = PR) and removed the obsolete `--red-loser` auto-loss flag.
- Stopped tracking compiled Python cache (`__pycache__/`, `*.pyc`) and added them to `.gitignore`.

**Full changelog:** https://github.com/mattkelly1991/SnarkGirl/blob/main/CHANGELOG.md

