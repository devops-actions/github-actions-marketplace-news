---
title: Remyx Outrider
date: 2026-07-04 21:54:03 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.10
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.10**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

Reorders the two attribution gates in `_retry_license_via_arxiv_html` so the stronger evidence (README references the paper's arxiv id or ≥2 title words) runs first, with title-overlap demoted to a tie-breaker among survivors. Fixes silent `license_class=no-code-link` classifications on acronym-named repos whose acronym isn't literally in the paper title.

**Concrete regression case:** [smellslikeml/trl#6](https://github.com/smellslikeml/trl/issues/6) — arXiv:2607.02490 (VRRL) resolved to `no-code-link` despite [fc2869/VRRL](https://github.com/fc2869/VRRL) being the paper's own Apache-2.0 repo, discoverable via the arxiv HTML surface.
