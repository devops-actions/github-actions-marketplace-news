---
title: AGENTS.md Lint (Schliff)
date: 2026-07-28 14:40:44 +00:00
tags:
  - Zandereins
  - GitHub Actions
draft: false
repo: https://github.com/Zandereins/schliff
marketplace: https://github.com/marketplace/actions/agents-md-lint-schliff
version: v8.8.0
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  **Schliff scores `AGENTS.md` files and ensures consistent quality across different environments. It automates the process of evaluating and improving AI instruction files by providing a deterministic scoring system based on a versioned rubric, ensuring that AI tools are not impacted by minor changes to these files.**
---


Version updated for **https://github.com/Zandereins/schliff** to version **v8.8.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-md-lint-schliff) to find the latest changes.

## Action Summary

**Schliff scores `AGENTS.md` files and ensures consistent quality across different environments. It automates the process of evaluating and improving AI instruction files by providing a deterministic scoring system based on a versioned rubric, ensuring that AI tools are not impacted by minor changes to these files.**

## What's Changed

Ships the #133 scoring fix.

## Changed

**An unrecognised `<runner> run <target>` no longer counts as a build command (#133).**

`operational_coverage` credited the `build` category whenever a `run`/`r`/`exec`/`dlx`
keyword had been consumed — without ever inspecting the target. `npm run wibble` scored a
build; `npm run test-unit` scored a build rather than a test; and the identical script
written as `yarn test-unit`, with no keyword to consume, was dropped entirely. The engine
reported "real build command resolved" about a target it had not looked at.

Such commands now carry the family `unclassified`: real and runnable, family undetermined.
This mirrors the doctrine `check-commands` already follows — claim `dangling` only when
provable, otherwise `unknown`.

`pylint` joined the intrinsic test tools, where the 16 other linters already sat, so
`uv run pylint` is classified `test` instead of losing its family along with the fallback.

### Impact

`unclassified` credits no category, so files that documented no build step stop being scored
as if they did. Over the 30-file AGENTS.md corpus **exactly one file moves** (80.6 → 72.6);
mean 61.79 → 61.53, median/min/max unchanged.

**`check-commands` is unaffected** — proven set-identical over 259 real instruction files
(409 command/status tuples, zero difference, zero new `dangling` claims).

`make test-unit` and friends remain outside the vocabulary by design: loosening that prose
guard was measured to buy 2 genuine commands at the cost of 14 non-commands, including a
literal "Make sure" inside a bash fence.

### Output contract

`schliff check-commands --json` may now emit `"family": "unclassified"`. `status` is
unchanged and no existing value was removed, but consumers switching on `family` should
treat it as an open set.

---

Full detail: [CHANGELOG](https://github.com/Zandereins/schliff/blob/main/CHANGELOG.md#880---2026-07-28) ·
spec `docs/specs/2026-07-27-runner-target-classification.md`

```bash
pip install schliff==8.8.0
```

