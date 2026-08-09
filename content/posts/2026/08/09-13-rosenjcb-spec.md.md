---
title: spec.md check
date: 2026-08-09 13:52:24 +00:00
tags:
  - rosenjcb
  - GitHub Actions
draft: false
repo: https://github.com/rosenjcb/spec.md
marketplace: https://github.com/marketplace/actions/spec-md-check
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **spec-md** is a tool designed to create machine-readable specifications using Markdown. It allows developers to align their work by defining requirements and QA test cases in a structured format (`*.spec.md`). The action automates the process of linting specs, ensuring that every test case has a stable id (`TC-XXXX`) and failing CI when the spec differs from the implementation or tests. This helps maintain consistency across development and ensures high-quality software by reducing ambiguity and gaps in understanding.
---


Version updated for **https://github.com/rosenjcb/spec.md** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spec-md-check) to find the latest changes.

## Action Summary

**spec-md** is a tool designed to create machine-readable specifications using Markdown. It allows developers to align their work by defining requirements and QA test cases in a structured format (`*.spec.md`). The action automates the process of linting specs, ensuring that every test case has a stable id (`TC-XXXX`) and failing CI when the spec differs from the implementation or tests. This helps maintain consistency across development and ensures high-quality software by reducing ambiguity and gaps in understanding.

## What's Changed

## @rosenjcb/spec-md v0.4.0

### Minor Changes

- 46a7977: Replace sequential TC-N test-case ids with stable opaque TC-XXXX identifiers. lint validates format and uniqueness only (no contiguous order for TC); coverage matches [TC-XXXX] tags; new generates stable ids; add `spec-md id` and `spec-md migrate-ids` for allocation and one-shot migration of legacy tables.

  Brand the product as **spec-md** (hyphen) everywhere except the `*.spec.md` file extension and the existing GitHub repo path `rosenjcb/spec.md`, so skill/plugin ids stay regex-friendly.

  Drop the `[NEW]` / `[UPDATED]` / `[REMOVED]` row lifecycle convention. Specs are the current contract only; git and review records carry the delta. The CLI no longer special-cases those tags.

### Install

```bash
npm install --save-dev @rosenjcb/spec-md@0.4.0
npx @rosenjcb/spec-md check
```

```yaml
- uses: rosenjcb/spec.md@v0.4.0
```

> **GitHub Action Marketplace:** automated releases do not check "Publish to Marketplace".
> On the first release, open the release in GitHub and enable marketplace publishing manually.
> See [RELEASING.md](https://github.com/rosenjcb/spec.md/blob/main/RELEASING.md).


## What's Changed
* docs: make install flag commands runnable in sequence by @rosenjcb in https://github.com/rosenjcb/spec-md/pull/16
* Stable TC-XXXX test ids and spec-md rebrand by @rosenjcb in https://github.com/rosenjcb/spec-md/pull/18


**Full Changelog**: https://github.com/rosenjcb/spec-md/compare/v0.3.6...v0.4.0
