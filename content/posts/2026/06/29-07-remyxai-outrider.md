---
title: Remyx Outrider
date: 2026-06-29 07:08:11 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.6.18
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.6.18**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## Highlights

**`pin-method` action input** (#72 / REMYX-148)

A new input that accepts either a free-text method query (e.g. `"knowledge distillation"`) or a literal arxiv_id, and pins Outrider to the resolved paper — bypassing both the interest's candidate pool and the LLM selection pass.

- An arxiv-id-shaped input goes through direct asset lookup (`_remyx_get_asset`) — faster and immune to keyword-search retrieval gaps
- A free-text input goes through `_remyx_search_assets` and takes the top-1 hit
- Either way, the resolved asset becomes the sole candidate; the existing pin_arxiv pinning logic at §4 selects it naturally

`pin-method` is a strict superset of the existing `pin-arxiv`: it also works on arxiv_ids that aren't in the candidate pool. The two are mutually exclusive — setting both exits with code 2.

## Operator notes

- Forks pinned to `@v1` pick this up automatically (`v1` now points at this release)
- Workflows that want to use `pin-method` via `workflow_dispatch` must declare it under `on.workflow_dispatch.inputs` and forward it to the action's `with:` block (the `remyxai outrider trigger` CLI command added in remyxai-cli wraps that for you)
- New `skipped_no_method_match` status when the resolution returns no asset

## End-to-end validation

Dogfooded on smellslikeml/ag2 with `--pin-method 2606.26924v1` (A Deterministic Control Plane for LLM Coding Agents). Outrider correctly diagnosed that most of the paper's mechanisms don't fit AG2's surface, surfaced the one applicable concept (pre-invocation tiered permission enforcement), and proposed it as a policy in `autogen/beta/policies/` — [Issue #5](https://github.com/smellslikeml/ag2/issues/5), `outrider:issue-convention-done` label.
