---
title: Dazbos Gemini Review & Triage
date: 2026-07-12 19:22:40 +00:00
tags:
  - derailed-dash
  - GitHub Actions
draft: false
repo: https://github.com/derailed-dash/gemini-review-action
marketplace: https://github.com/marketplace/actions/dazbo-s-gemini-review-triage
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/derailed-dash/gemini-review-action** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dazbo-s-gemini-review-triage) to find the latest changes.

## What's Changed

### Changes

* Add class docstrings to all structured Pydantic models.
* Add authentication logging showing which credentials are used for both GitHub API and Google GenAI.
* Support configurable request timeout via a new `timeout` action input (defaults to 60s).
* Clean up legacy `typing.List` usage to conform to PEP 585 (Python 3.12+).
