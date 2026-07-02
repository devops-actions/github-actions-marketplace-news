---
title: semvertag
date: 2026-07-02 06:43:39 +00:00
tags:
  - modern-python
  - GitHub Actions
draft: false
repo: https://github.com/modern-python/semvertag
marketplace: https://github.com/marketplace/actions/semvertag
version: 0.8.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/modern-python/semvertag** to version **0.8.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semvertag) to find the latest changes.

## What's Changed

# semvertag 0.8.2 — release pipeline on PyPI Trusted Publishing

No library changes. The package is identical to 0.8.1; this release exercises the new publish path end-to-end.

## CI

- Releases now authenticate to PyPI via **Trusted Publishing (OIDC)** instead of a long-lived `PYPI_TOKEN` secret. `uv publish` auto-detects the GitHub Actions id-token; the release job runs under a `pypi` environment that scopes the trusted publisher (#46).

## Downstream

No action required. Nothing about the installed package changes.

