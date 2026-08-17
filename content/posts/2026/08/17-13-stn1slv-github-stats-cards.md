---
title: GitHub Stats Cards
date: 2026-08-17 13:41:31 +00:00
tags:
  - stn1slv
  - GitHub Actions
draft: false
repo: https://github.com/stn1slv/github-stats-cards
marketplace: https://github.com/marketplace/actions/github-stats-cards
version: v1.2.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action generates beautiful, high-quality SVG statistics cards for your GitHub profile README using Python. It automates the process of updating and displaying various metrics such as stars, commits, pull requests, issues, reviews, and contribution data. Key capabilities include 50+ themes, smart weighting for language stats, and local generation without external service dependencies.
---


Version updated for **https://github.com/stn1slv/github-stats-cards** to version **v1.2.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-stats-cards) to find the latest changes.

## Action Summary

This GitHub Action generates beautiful, high-quality SVG statistics cards for your GitHub profile README using Python. It automates the process of updating and displaying various metrics such as stars, commits, pull requests, issues, reviews, and contribution data. Key capabilities include 50+ themes, smart weighting for language stats, and local generation without external service dependencies.

## What's Changed

> [!WARNING]
> **v1.2.0 is broken and should not be used.** It produced no card at all, and did so silently. If you pinned `@v1.2.0`, move to `@v1.2.1`.

## What went wrong in 1.2.0

1.2.0 set out to fix a real bug: the action checked out its own repository with no `ref`, so a pinned tag ran whatever was on `main`. The fix used `${{ github.action_repository }}` and `${{ github.action_ref }}`.

Inside a composite action those contexts resolve to the **innermost** action, not the outer one. So the step checked out `actions/checkout@v4` into the install directory, then exited without installing the CLI or generating anything.

The failure was invisible. Workflows using `continue-on-error: true` on their card steps, which is the pattern in this project's own example workflow, went green while quietly regenerating nothing. The only symptom was images that stopped updating.

## The fix

The action no longer checks itself out. It installs from `$GITHUB_ACTION_PATH`, where the runner has already placed this repository at exactly the ref the caller pinned:

```yaml
run: uv pip install --system -e "$GITHUB_ACTION_PATH"
```

This removes the class of problem rather than patching an instance of it: there is no second resolution step left that can disagree with the pin. A test now rejects any self-checkout returning, under any spelling.

## Who is affected

| Version pinned | Status |
|---|---|
| `@v1.2.0` | **Broken.** No cards generated, no error reported. Move to `@v1.2.1`. |
| `@v1.2.1` | Correct, and the first release where your pin is genuinely honoured. |
| `@v1.1.10` and earlier | Unaffected by this bug, but they still ignore the pin and run `main`. |

Everything else in [v1.2.0](https://github.com/stn1slv/github-stats-cards/releases/tag/v1.2.0) is unchanged and still applies.

**Full changelog:** https://github.com/stn1slv/github-stats-cards/compare/v1.2.0...v1.2.1

