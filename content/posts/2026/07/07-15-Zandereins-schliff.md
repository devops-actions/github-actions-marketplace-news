---
title: AGENTS.md Lint (Schliff)
date: 2026-07-07 15:14:44 +00:00
tags:
  - Zandereins
  - GitHub Actions
draft: false
repo: https://github.com/Zandereins/schliff
marketplace: https://github.com/marketplace/actions/agents-md-lint-schliff
version: v8.5.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/Zandereins/schliff** to version **v8.5.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-md-lint-schliff) to find the latest changes.

## What's Changed

## Fixed
- **`verify` scores under the detected format profile** (#102, closes #101): `schliff verify AGENTS.md` no longer fails spuriously (was 27.7/F under the SKILL profile on a file `score` grades 91.6/A). SKILL.md verdicts unchanged.
- **Positional negation in `operational_coverage`** (#96): contrastive sentences ("run X, never Y directly") keep the recommended command.
- **Dead-marker detector matches marker tokens, not English prose** (#97, closes #93). Corpus goldens re-derived.

## Security
- Runtime scorer prompt nonce-hardened (#99) — defense-in-depth, dimension remains opt-in.

## Added
- Theme-aware README hero + social-preview asset (#106); star-notify workflow (#98); grouped Dependabot action bumps (#107).

## Docs
- README redesigned (#100): AGENTS.md-first, every number ground-truthed against the released engine, honesty-hardened.

Full changelog: https://github.com/Zandereins/schliff/blob/main/CHANGELOG.md
