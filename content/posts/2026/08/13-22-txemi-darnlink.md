---
title: darnlink — self-healing Markdown links
date: 2026-08-13 22:09:58 +00:00
tags:
  - txemi
  - GitHub Actions
draft: false
repo: https://github.com/txemi/darnlink
marketplace: https://github.com/marketplace/actions/darnlink-self-healing-markdown-links
version: v0.21.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The darnlink GitHub Action automates the process of healing Markdown links in a documentation tree by automatically updating links' paths and UUIDs when files are moved or refactored. It works with both local and cross-repo web links, providing deterministic self-healing capabilities for Markdown documents over time. The action is available on PyPI and can be easily integrated into workflows using `uv` tool to run it without installation.
---


Version updated for **https://github.com/txemi/darnlink** to version **v0.21.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/darnlink-self-healing-markdown-links) to find the latest changes.

## Action Summary

The darnlink GitHub Action automates the process of healing Markdown links in a documentation tree by automatically updating links' paths and UUIDs when files are moved or refactored. It works with both local and cross-repo web links, providing deterministic self-healing capabilities for Markdown documents over time. The action is available on PyPI and can be easily integrated into workflows using `uv` tool to run it without installation.

## What's Changed

The web axis is forgiving by design: a destination that fetches 200 without a `uuid` is `web_unverifiable` and the run still exits 0, because the file lives in **someone else's** repository and cannot be fixed from here.

That is right for a third party and **wrong for a destination you own**: there it is not an external limitation, it is a missing two-line edit in a repo you control — and nothing ever told you so. This release closes that blind spot.

### Added

- **`--own OWNER`** (repeatable, stripped and case-folded) names the owners you control. **`--own-from-origin`** adds this repository's `origin` owner — a separate flag rather than a magic `--own auto`, so an owner literally called `auto` stays expressible. If it cannot resolve, the run is a **usage error**, even when explicit owners were given: it is a request, not a fallback.
- **`web_own_no_uuid`** at exit **4**, not 3. Exit 3 promises "re-run with `--write`", and darnlink cannot fix this one — the edit belongs to the destination repository. The message names owner, repo and path, and never suggests `--write`.
- **`--own-max N`** budgets it, so a repository can adopt the rule before reaching zero. The budget silences the *verdict*, never the *finding*, and never shields another exit-4 cause. The report says where the count stands in all four cases — including **over** budget, because a budget that goes silent exactly when it is exceeded is the one moment its number is worth reading.
- **`<!-- darnlink-own-exempt -->`** for a destination that is machine-regenerated, where a `uuid` is futile: the next refresh wipes it and the anchor points at nothing. It exempts from the new finding, from anchoring, and from `web_mismatch` — a regenerating destination is precisely one whose uuid drifts. Honoured **with or without an owner set**: it states a property of the link, not of the run.

Two exclusions, both textual and offline: a destination that is not `.md` can never carry frontmatter, and one pinned to a **commit SHA** can never be given one retroactively. **Tags are deliberately not excluded** — a tag is textually indistinguishable from a branch of the same name, so honouring it would need the network *and* would exclude a maintenance branch for *looking* like a tag, which is a false green.

### Compatibility

**Opt-in throughout.** With no owner set, behaviour is byte-identical in the text report, the exit code and the files on disk — measured across 13,500 cases — with two departures the specification names: the exemption marker, and three keys `--json` gains unconditionally so a consumer can tell both that the axis ran and under what budget.

### Upgrading

Bump your pinned ref to `v0.21.0`. Nothing changes until you pass `--own`.
