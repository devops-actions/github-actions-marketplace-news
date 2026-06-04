---
title: Remyx Outrider
date: 2026-06-04 22:46:43 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.3.5
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.3.5**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## v1.3.5 — Selection: out-of-pool external picks via broadening-search

The selection pass can now return a candidate it finds outside the recommendation pool (via `remyxai search query`) when in-pool verification fails AND the broader catalog surfaces a paper that satisfies one of the three integration shapes. Closes a gap where the selection pass would correctly identify a substitution opportunity but had no schema-permitted way to return it.

### What's new

**Extended output schema** — `chosen_index` accepts a new value:

- `0..N-1` — in-pool pick (unchanged)
- `-1` — reject all (unchanged)
- **`-2`** — out-of-pool pick surfaced via broadening-search

When `chosen_index = -2`, three new fields are required:

- `external_arxiv_id` — arxiv_id of the out-of-pool paper
- `external_title` — title from the search result
- `external_query_used` — the `remyxai search query` argument that surfaced it

`integration_shape`, `contract_match`, `migration_cost` requirements are unchanged.

### Verification bar for external picks is stricter

The agent must:
- Confirm in-pool verification failed first (default to picking from the pool when one fits)
- Run `remyxai search query` and find a paper that explicitly matches the contract the maintainer thread or search context asks for — not merely thematically related
- Provide the same contract-match and migration-cost analysis as for in-pool replacement / simplification
- Fall back to `chosen_index: -1` if the search returns nothing that satisfies the bar

### Routing

External picks route to **`issue_opened_substitution`** (same status as in-pool replacement / simplification) — out-of-pool picks always need dependency changes the PR guardrails block. The Issue body distinguishes external picks (`"surfaced via remyxai search query"`) from in-pool substitutions and includes the contract analysis + migration cost.

### Backward compatibility

- No breaking changes to `action.yml` inputs or outputs
- Existing customer workflows continue to run without modification
- The `issue_opened_substitution` status now covers both in-pool substitutions (shipped in v1.3.4) and out-of-pool external picks (new in v1.3.5) — same outcome from the customer's perspective
- In-pool addition / replacement / simplification picks behave identically to v1.3.4

