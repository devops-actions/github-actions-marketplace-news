---
title: Remyx Outrider
date: 2026-07-09 06:53:33 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.13
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.13**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

Follow-up to v1.7.12. The PDF-text discovery path shipped in v1.7.12 depended on `pdftotext`, which turned out not to be installed on `ubuntu-latest` runners as of mid-2026 — the fallback fired but silently returned empty. This release makes it actually work.

## Changes

- **`action.yml`** — `apt-get install poppler-utils` step before the run.py invocation (~5 s add to setup phase, runs once per dispatch).
- **`src/run.py`** — retry-path outcome logging: `_retry_license_via_arxiv_html` now emits an INFO line when it discovers slugs vs when it comes up empty vs when none pass README verification. Previously all three failure modes returned silently, making CI/CD triage harder.

## Verified

Re-dispatched arxiv:2606.30573v1 (SWE-Interact) against `remyxai/outrider`:

- Before: `candidate_enrichment: []`, `license_class: no-code-link`, `paper_license: ""`
- After: `candidate_enrichment: [{github: scaleapi/SWE-Interact, paper_license: Apache-2.0, license_source: arxiv_html_retry, license_class: permissive}]`

Full suite green (859/859).
