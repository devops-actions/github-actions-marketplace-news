---
title: darnlink — self-healing Markdown links
date: 2026-08-17 13:38:03 +00:00
tags:
  - txemi
  - GitHub Actions
draft: false
repo: https://github.com/txemi/darnlink
marketplace: https://github.com/marketplace/actions/darnlink-self-healing-markdown-links
version: v0.24.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The `darnlink` GitHub Action automatically fixes broken links in Markdown files by repairing the paths of existing links or creating new ones with UUIDs if the targets have none. It supports cross-repo web links and is built to handle large trees of Markdown files efficiently. Users can use it directly from a repository without installation, making it easy to maintain documentation that evolves over time.
---


Version updated for **https://github.com/txemi/darnlink** to version **v0.24.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/darnlink-self-healing-markdown-links) to find the latest changes.

## Action Summary

The `darnlink` GitHub Action automatically fixes broken links in Markdown files by repairing the paths of existing links or creating new ones with UUIDs if the targets have none. It supports cross-repo web links and is built to handle large trees of Markdown files efficiently. Users can use it directly from a repository without installation, making it easy to maintain documentation that evolves over time.

## What's Changed

D1-D3 of the v0.24.0 block. Five PRs, each with its own adversarial review round (Copilot out of
quota for all of them — REGLA CERO). Every fix in this release verified with `git tag --contains`
before writing the notes — the exact check that was missing when `v0.22.0` credited two fixes it
didn't actually ship.

## What a consumer sees

**1. A dry-run's `+uuid X` no longer shows a value you can copy.** A freshly-minted uuid (no
existing frontmatter) now reads `+uuid <will be generated on write>`; a reused uuid is unaffected.
`--write` still writes the real, correct, matching uuid.

**2. `check --json`'s output comes from ONE tree read instead of two.** Byte-for-byte identical to
`v0.23.0` — verified, not assumed, with two side-by-side worktrees — only faster (~2.1× measured on
a large repo in the fleet).

Nothing else changes behaviour for a consumer.

## Fixed

- **An anchor comment no longer separates a link from its pandoc attribute block** (#65). Plus a
  follow-up hardening found by adversarial review: a `}` inside a *quoted* attribute value was
  cutting the match short, and on `--write` that spliced the anchor comment into the attribute text
  itself — worse than #65's own bug. A second, independently-drifted copy of the same regex (in
  `ROBUST_LINK_RE`) was silently making `repair` report zero findings for an already-anchored link
  whose target had moved; both now share one pattern.

- **A trailing space in a link's destination no longer turns a file link into an unhealable
  CONFLICT** (#67). Fixed at the one shared primitive; `resolve_href` stays untouched on purpose
  (the general whitespace question is `#74`'s), so the side effect is the stray space gets cleaned
  up when the link heals, not just stop being misdiagnosed.

- **A freshly-minted dry-run uuid is no longer printed as if it were final** (#41). Also covers
  `--create-readme`'s own uuid-minting path, found by adversarial review as a second route to the
  same symptom.

- **`check` runs both its axes off ONE tree read instead of two** (#87). `plan_repairs`/
  `plan_robustify` gain an optional `prescanned` parameter (`None` by default — zero change for
  every other caller). Adversarial review found `--only` was silently ignored when combined with
  `prescanned` — a real gap, fixed with dedicated coverage before merge.

## Security / hardening

- **`write_text_keep_newlines` now refuses a symlink path**, as a live assertion. Verified first:
  every path reaching this function is already resolved by `iter_markdown_files`
  (`Path.resolve(strict=True)`), so the check is unreachable in current use — it protects a future
  caller that bypasses that resolution, converting a silent alias-write into an immediate crash.

## Known issues (filed, not fixed here)

- **A hardlink to an indexed `.md` is indexed twice** — same symptom as `#85`, different mechanism
  (`Path.resolve()` doesn't collapse hardlinks). Verified live with `os.link()`. **#91**.

## Verified before release

- `uv run pytest -q` → **427 passed**
- `check --json`, byte-for-byte identical between `v0.23.0` and this release on the same tree
- Every one of the 5 commits confirmed inside this tag via `git tag --contains`

Full detail in [CHANGELOG.md](https://github.com/txemi/darnlink/blob/v0.24.0/CHANGELOG.md).
