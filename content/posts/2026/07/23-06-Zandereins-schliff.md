---
title: AGENTS.md Lint (Schliff)
date: 2026-07-23 06:07:35 +00:00
tags:
  - Zandereins
  - GitHub Actions
draft: false
repo: https://github.com/Zandereins/schliff
marketplace: https://github.com/marketplace/actions/agents-md-lint-schliff
version: v8.7.0
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action automates the scoring of `AGENTS.md` files using the Schliff tool. It ensures that AI instruction files remain consistent across different systems by providing deterministic quality scores based on a versioned rubric. The action helps detect and prevent issues in instruction files that could degrade LLMs, ensuring better reliability in AI development workflows.
---


Version updated for **https://github.com/Zandereins/schliff** to version **v8.7.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-md-lint-schliff) to find the latest changes.

## Action Summary

This GitHub Action automates the scoring of `AGENTS.md` files using the Schliff tool. It ensures that AI instruction files remain consistent across different systems by providing deterministic quality scores based on a versioned rubric. The action helps detect and prevent issues in instruction files that could degrade LLMs, ensuring better reliability in AI development workflows.

## What's Changed

Pre-launch audit batch A + C.

## Changed
- **`structure` is now reproducible — a pure function of the file's bytes (#10).**
  It previously depended on the file's on-disk neighbourhood (a sibling
  `references/` directory + whether declared references resolved on disk), so the
  same file scored ~15 points higher in its real directory than in isolation — the
  public badge disagreed with the author's own CLI, worst on AGENTS.md. Now
  progressive disclosure is credited from content disclosure-links (not an on-disk
  dir), references from the declaration (with a traversal/stuffing guard), and
  dangling detection is a non-scoring lint issue emitted only from a provable
  location. Also corrects a long-standing under-crediting of AGENTS.md/CLAUDE.md/
  `.cursorrules` (always temp-scored). Scores for files that link detail move
  upward and now match in-repo and in isolation. Golden rebaselined with
  documented values; field-validated over 115 real skills; a new
  isolation-equivalence test pins location-independence.

## Fixed
- The terminal no longer silently drops score warnings — the calibrated-weights
  "not comparable" notice and "no weighted dimensions" warning now render (#22).
- `compare` no longer leaks the `-1` sentinel for unmeasured dimensions (#21).

**Note for CI users:** this is a scoring-model change; scores shift upward for
files that link detail. Pin `schliff-version: '8.7.0'` if you gate on an exact number.

