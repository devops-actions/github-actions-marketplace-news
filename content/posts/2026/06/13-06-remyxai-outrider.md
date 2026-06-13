---
title: Remyx Outrider
date: 2026-06-13 06:43:18 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.5.5
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.5.5**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## Weekly summary: lifecycle events + newly-viable recommendations

Adds two new sections to the weekly Discussion digest (`mode: weekly-summary`), both layered on the existing flow with no new workflow input and no external state store.

PR: #36

### Recent activity on Outrider Issues/PRs

State-change events on Outrider-authored Issues/PRs in the trailing 7 days — merged or closed artifacts, newly opened ones, and new maintainer comments. Bot follow-ups are filtered out so the section only carries human engagement.

Surfaces the kind of mid-thread maintainer work the digest used to miss — for example, a maintainer's licensing audit or reference-implementation drop posted as a comment on an Outrider Issue is now mentioned in the next digest instead of being invisible to subscribers.

### Newly viable recommendations

Watches previously-blocked Outrider Issues — those where the recommendation was gated at the license / code-availability check — and surfaces them when the upstream has since published a permissive `LICENSE`.

State at recommendation time lives in the Issue body (where the existing license-section template writes the snapshot). Each weekly run re-fetches the current license state via the existing license-classification helpers and compares against the body-stored snapshot. The transition gate fires only on `missing` / `no-code-link` → `permissive` (a strict upgrade). Copyleft-into-permissive does NOT fire — that case stays a yellow flag that warrants human judgment.

### Fallback chain for older-format Issues

The structured License section in Issue bodies post-dates earlier Outrider releases. For Issues that pre-date it:

1. **Body-scan fallback** — extracts upstream GitHub / HuggingFace URLs directly from the body text, synthesizes a `no-enrichment` snapshot at compat 0.30, and re-checks against the current license state.
2. **Comment-scan fallback** — when the body has no URLs at all (some maintainer-comment-heavy Issues), reads the Issue's comments and discovers the upstream URL there. Filters out Remyx-self URLs so references to the orchestrator's own discussion links don't false-positive.

Together these mean the watch can re-check the canonical motivating Issues — including ones opened before structured license sections existed — without requiring a one-off backfill.

### Rendering

Sections are inserted between the drafted narrative and the open-items checklist:

```
Header + stats
Patterns (drafted)
Research-stream trends (drafted)
🔁 Recent activity on Outrider Issues/PRs    ← lifecycle events
🟢 Newly viable recommendations               ← license transitions
📥 Awaiting your review                       ← open items
🔍 Selection-pass verdicts
```

Each new section is omitted entirely when empty — no "nothing happened" noise.

### Tests

401 passed (354 pre-existing + 47 new across `tests/test_lifecycle_events.py` and `tests/test_license_watch.py`). Run with:

```bash
pytest tests/ -q
```

### Operational notes

- Per-artifact API fan-out is bounded by the number of Outrider artifacts on a target repo (typically < 20), well within rate limits.
- License re-check uses the existing `_fetch_repo_license` / `_fetch_hf_license` / `_classify_license` / `_license_compat_score` helpers — no new license-detection code.
- License-target class is currently hard-coded to `permissive` for the transition gate. Per-target license-target configuration is a follow-up consideration if a target repo has a copyleft license itself.

---

**Full change list:** [v1.5.4...v1.5.5](https://github.com/remyxai/outrider/compare/v1.5.4...v1.5.5)
