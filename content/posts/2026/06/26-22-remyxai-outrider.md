---
title: Remyx Outrider
date: 2026-06-26 22:29:23 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.6.17
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.6.17**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## Highlights

**Issue-route convention pass** (#70 / REMYX-146)

The PR-route Phase B body rewrite shipped in v1.6.15 folded Outrider's draft scaffolding into the target repo's PR-body convention. This release extends that to the Issue route — when recommend mode opens an Issue (preflight downgrade, self-review orphan, substitution, etc.), the inline chain now also folds the Issue body to match the target repo's `.github/ISSUE_TEMPLATE/` shape.

- Walks `.github/ISSUE_TEMPLATE/` directory — accepts `.md` (legacy markdown frontmatter), `.yml`, and `.yaml` (modern Issue Forms). Skips `config.yml`.
- Classifies each template (`bug | new_model | feature | question | other`) and filters out `bug` + `question` kinds — so paper-pitch Issues don't get rewritten as bug reports on repos with bug-only sets (e.g. lerobot's).
- Single Claude one-shot picks the best-fitting template and rewrites the Issue body. Uses **delimited section markers** (`===TEMPLATE_ID===` / `===RATIONALE===` / `===UPDATED_BODY===` / `===END===`) instead of JSON envelope — long markdown bodies don't break parsing on unescaped quotes.
- Folds Outrider scaffolding into the template's sections; relegates non-mapping content to a single collapsed `<details><summary>Discovery context</summary>` block; compresses attribution to one italicized line; preserves arxiv link.
- New label `outrider:issue-convention-done`. New action input `issue-number`. New mode `issue-convention` for standalone runs.

## Operator notes

- Forks pinned to `@v1` pick this up automatically (`v1` now points at this release).
- The PR-route Phase B path is unchanged.
- Issue-route trial (NeMo-Curator Issue #5, 2026-06-26) validated all three code paths end-to-end: aligned, no-fitting-template, and no-templates.

## Three terminal statuses

| Status | Meaning |
|---|---|
| `issue_convention_aligned` | Picked a template + rewrote body |
| `issue_convention_aligned_no_fitting_template` | Templates exist but all are bug/question (lerobot case) |
| `issue_convention_skipped_no_templates` | No `.github/ISSUE_TEMPLATE/` directory at all |
