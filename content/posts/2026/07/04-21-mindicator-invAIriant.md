---
title: invAIriant audit gate
date: 2026-07-04 21:56:47 +00:00
tags:
  - mindicator
  - GitHub Actions
draft: false
repo: https://github.com/mindicator/invAIriant
marketplace: https://github.com/marketplace/actions/invairiant-audit-gate
version: v0.2.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mindicator/invAIriant** to version **v0.2.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/invairiant-audit-gate) to find the latest changes.

## What's Changed

Fixes the two public front doors and enables the first automated PyPI publish.

## PyPI page

`invairiant` 0.2.3's project page was immutable with the old `pip install -e .` text (the readme was fixed just after that release). 0.2.4 lands the corrected page: the CLI readme (the package's long_description) leads with **`pip install invairiant`** and uses absolute GitHub links so they resolve on pypi.org.

## GitHub Marketplace eligibility

`action.yml`'s description was 141 chars; the Marketplace limit is 125. Trimmed to 104 without losing meaning (validate → render to the job summary → gate on open S0/S1). Name/icon/color already passed — the Action can now be listed (pick a category on the release edit page).

## Automated publishing

This is the **first release published to PyPI automatically** over GitHub Trusted Publishing (OIDC, no stored token) via [`publish.yml`](.github/workflows/publish.yml) — cutting the release fired it. Guide: [`docs/publishing.md`](docs/publishing.md).

---

No new lenses, and **no code change to the CLI** — the packaged module and bundled framework are byte-identical to v0.2.3 (verified). Released only after CI went green on the tag (enforced by the local pre-push gate). **Full changelog:** [`CHANGELOG.md`](https://github.com/mindicator/invairiant/blob/v0.2.4/CHANGELOG.md).

