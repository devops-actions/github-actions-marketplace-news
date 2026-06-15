---
title: Miso PR Review
date: 2026-06-15 23:28:34 +00:00
tags:
  - misospace
  - GitHub Actions
draft: false
repo: https://github.com/misospace/pr-reviewer-action
marketplace: https://github.com/marketplace/actions/miso-pr-review
version: v1.3.1
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/misospace/pr-reviewer-action** to version **v1.3.1**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miso-pr-review) to find the latest changes.

## What's Changed

## v1.3.1 — Routing fix: the primary model gets its full tool budget

A bug-fix release for `review_routing_mode: auto`. The auto router was sending low-risk PRs (e.g. a renovate dependency bump) to a shallow lane that capped the loop's tool budget — starving exactly the multi-hop chains (read the changed config → search → fetch the compatibility matrix → cite) that the v1.3.0 native loop was built to run. All changes are backward-compatible via deprecated aliases.

### Fixes
- **The primary route gets the full configured tool budget.** Removed the route-based shallow cap — the loop self-limits, so the cap only ever starved chain-needing PRs. The route now selects the *model*, not the budget (#278).
- **The smart tier only escalates when explicitly configured.** `ai_smart_*` no longer falls back to `ai_fallback_*`: with no `ai_smart_model` set, a review stays on the primary model instead of silently escalating to the fallback. The fallback model is for availability, not quality escalation (#278).

### Rename (backward-compatible)
- The `fast` route is now **`primary`** — a capable primary model shouldn't be rationed like a "fast/dumb" lane. Inputs `ai_fast_*` → **`ai_primary_*`**, with `ai_fast_*` retained as **deprecated aliases**, so no workflow changes are needed to upgrade. The `review_route` output and engine annotation now read `primary`; the per-route artifact is `ai-output.primary.json` (#278).

