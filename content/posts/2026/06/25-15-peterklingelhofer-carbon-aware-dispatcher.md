---
title: Carbon-Aware Dispatcher
date: 2026-06-25 15:18:35 +00:00
tags:
  - peterklingelhofer
  - GitHub Actions
draft: false
repo: https://github.com/peterklingelhofer/carbon-aware-dispatcher
marketplace: https://github.com/marketplace/actions/carbon-aware-dispatcher
version: v1.9.3
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/peterklingelhofer/carbon-aware-dispatcher** to version **v1.9.3**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/carbon-aware-dispatcher) to find the latest changes.

## What's Changed

# v1.9.3

A maintenance release: improved missing-key warnings across all providers. No behavior, output, or API changes.

## Improvements

- Missing or demo API key warnings now include platform-specific instructions for where to add the secret, detected from CI environment variables (GitHub Actions, GitLab CI, CircleCI, Bitbucket Pipelines, Azure Pipelines, Travis CI, Jenkins). Falls back to a generic message on unknown runners or local dev.
- Affected providers: EIA (US), Electricity Maps, ENTSO-E (two call sites), and the pre-flight zone notices in the main dispatcher.
- The per-provider lookup table in `providers/eia.py` has been replaced with a shared `ci_secret_hint(secret_name)` helper in `providers/base.py`, used by all providers.
- ENTSO-E messages replaced Unicode arrow with ASCII `->` per project style.

## Upgrade notes

- No breaking changes. Nothing to do on upgrade.
