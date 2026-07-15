---
title: invAIriant audit gate
date: 2026-07-15 06:58:24 +00:00
tags:
  - mindicator
  - GitHub Actions
draft: false
repo: https://github.com/mindicator/invAIriant
marketplace: https://github.com/marketplace/actions/invairiant-audit-gate
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Summary:** invAIriant is a CI/CD tool designed to audit codebases for architectural invariants, providing evidence-based architecture audits. It helps gate merges based on real findings and prevents architectural drift by ensuring every candidate survives adversarial evidence checks before becoming a finding. The tool supports a set of review lenses that discover and verify issues before severity gates, making it useful for maintaining robust architectures during AI-assisted development.
---


Version updated for **https://github.com/mindicator/invAIriant** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/invairiant-audit-gate) to find the latest changes.

## Action Summary

**Summary:** invAIriant is a CI/CD tool designed to audit codebases for architectural invariants, providing evidence-based architecture audits. It helps gate merges based on real findings and prevents architectural drift by ensuring every candidate survives adversarial evidence checks before becoming a finding. The tool supports a set of review lenses that discover and verify issues before severity gates, making it useful for maintaining robust architectures during AI-assisted development.

## What's Changed

## v0.3.0 — evidence provenance & integrity

Ships the issue #2 provenance workstream: mechanical, judgment-free integrity checks that raise the trust floor without the CLI ever deciding whether a finding is real.

**Provenance & integrity**
- Bind **report ↔ bundle ↔ commit** — `collect` emits `commit_sha` / `scope_hash` / `bundle_hash`; the report carries them; `invairiant verify-provenance` (and the GitHub Action) check them.
- `validate-report --check-citations` — every `file_lines` citation must point at a real file whose line range exists.
- `verification` records `model` / `run` beside `verified_by` / `method`.
- Staged enforcement so existing reports don't break: `validate-report --strict`, `verify-provenance --require-exact-bundle`, and the Action's `require-provenance`.

**Also in this release**
- The CLI is now the `invairiant/` package (split for readability; `python3 cli/invairiant.py` and `python -m invairiant` both work).
- Typed scope models — `ScopeKind` enum + frozen `ResolvedScope`.
- `ci-gate` self-validates the report before gating; every `except` narrowed.

**Honest limit:** the CLI proves provenance and citation-existence, not that the agent *reasoned* correctly — and can't stop a determined hand-edit without signing the report at synthesis.

Full detail in [CHANGELOG](https://github.com/mindicator/invAIriant/blob/main/CHANGELOG.md#030--2026-07-14).

```
pip install -U invairiant
```

