---
title: SnarkGirl
date: 2026-07-02 06:45:52 +00:00
tags:
  - mattkelly1991
  - GitHub Actions
draft: false
repo: https://github.com/mattkelly1991/SnarkGirl
marketplace: https://github.com/marketplace/actions/snarkgirl
version: v1.15.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mattkelly1991/SnarkGirl** to version **v1.15.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/snarkgirl) to find the latest changes.

## What's Changed

## SnarkGirl v1.15.3 — The Wiki Ledger + a Living Pitch 📖⚽

The World Cup tournament got two big upgrades: it now lives in your repo's **Wiki**, and the pitch **actually plays**.

### The tournament moved to the repo Wiki
- Standings + match reports are now **human-readable, browsable wiki pages** organized as **World Cup → Season → Match**: a `Home` index of seasons, a `Season-{slug}` standings page each, and one `Season-{slug}-Match-{N}` report per PR. No more base64 tokens to shuttle around.
- Every page carries a keyed **HMAC signature footer** — change a win from 3 to 4 in the wiki editor and `wiki.py verify` flags it **INVALID**. Export a private `SGWC_SECRET` for a real barrier.
- Resuming a season is just "clone the wiki." The user names the season (and its duration) at kickoff.
- New helper `wiki.py` (render/verify/verify-all/load-season). Retired the old `token.py`.

### The live pitch is alive
- Players roam their formation and pass the ball, holding shape at each kickoff until someone takes it.
- A goal is scripted end-to-end: the ball is worked to the scorer, who drives at the net and buries it.
- A red card sets up a **penalty kick** — a code red is converted, an agent red is saved by the keeper.
- Sent-off players walk to a **bench** at the edge (home top-left, away top-right).
- The champion & awards now present on the **wiki season page** (the live arena ends on the standings).

**Full changelog:** https://github.com/mattkelly1991/SnarkGirl/blob/main/CHANGELOG.md

