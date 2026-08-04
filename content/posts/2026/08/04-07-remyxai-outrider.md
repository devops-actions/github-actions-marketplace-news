---
title: Remyx Outrider
date: 2026-08-04 07:19:42 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.48
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  Outrider is a GitHub Action that automates the validation and comparison of new machine learning methods against existing codebases, helping teams measure changes against metrics they already track. It uses ephemeral runners to prevent context pollution and supports multiple model backends, including Anthropic Opus and z.ai GLM-5.2, allowing for efficient exploration and selection of methods.
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.48**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## Action Summary

Outrider is a GitHub Action that automates the validation and comparison of new machine learning methods against existing codebases, helping teams measure changes against metrics they already track. It uses ephemeral runners to prevent context pollution and supports multiple model backends, including Anthropic Opus and z.ai GLM-5.2, allowing for efficient exploration and selection of methods.

## What's Changed

## Feature

**`mode=brief`** — a paper-less companion to the recommend flow. A design brief (via `INPUT_LEAD_CONTENT`) is the sole spec; no ranker call, no arXiv anchor. Composes the same leaf helpers as the paper-anchored path so downstream gates (path allowlist, integration, stub density) and telemetry (step summary, run cost) work identically.

Same PR-vs-Issue routing, same self-review discipline. The `INVOCATION.md` variant drops the Mode 1/2/3 paper-porting framing but keeps the scope + honesty rules intact.

## Details

- License enrichment for briefs: every cited GitHub / HF-model / HF-dataset URL (capped at 5) gets its license fetched best-effort and rendered as a compact multi-entry block in the PR body. `user-attachments/raw/blob` GitHub paths and HF dataset URLs (`huggingface.co/datasets/…`) surface correctly.
- `Refs: #N` auto-link when the brief cites GitHub issue numbers or URLs.
- Brief-mode invocation carries the same "do not run git commands during your session" guard the paper-anchored path uses, so `commit_and_push`'s HEAD-matches-origin sanity check holds.
- `publish=branch` honored: pushes the drafter branch, no PR object.

## Trigger

```bash
gh workflow run outrider.yml --repo <target> \
  -f mode=brief \
  -f lead-content="$(cat design-brief.md)" \
  -f publish=pr \
  -f provider=zai \
  -f model=glm-5.2
```

Customer workflow templates need `mode` + `lead-content` inputs declared for this to reach the composite action. Existing installs can re-run `outrider init` (or hand-edit) to expose them.

## Compatibility

Composite action, no breaking changes. Pinned callers on `@v1` pick up brief mode + the parser fix (v1.7.47) automatically. Paper-anchored `mode=recommend` behavior is unchanged.

## Validation

1165 tests pass. Live-tested against `remyxai/VQASynth` on issues #28, #30, #31, #33, #41, #47, #48, #51, #53 — each brief-mode dispatch produced a scoped implementation the convention pass could further refine.
