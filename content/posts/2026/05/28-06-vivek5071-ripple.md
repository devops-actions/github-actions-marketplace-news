---
title: PR Ripple
date: 2026-05-28 06:42:35 +00:00
tags:
  - vivek5071
  - GitHub Actions
draft: false
repo: https://github.com/vivek5071/ripple
marketplace: https://github.com/marketplace/actions/pr-ripple
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vivek5071/ripple** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-ripple) to find the latest changes.

## Action Summary

Ripple is a GitHub Action designed to automate the process of identifying downstream impacts of code changes in a pull request (PR) and notifying the appropriate file owners for review. By analyzing PR diffs, detecting changes to key contract files or exported symbols, and mapping affected areas to owners via a configurable `.ripple.yml` file, Ripple ensures that the right stakeholders are alerted. It streamlines code review workflows, prevents unintended breakages, and can operate in an advisory mode (providing reports) or gate mode (enforcing required reviews).

## What's Changed

## Ripple v1.0.0

First public release.

### What Ripple does
- Detects downstream-impacted files on every PR (contract files, exported symbols)
- Maps impacted files to GitHub handles via `.ripple.yml` → git blame → GitHub Search API
- Posts a grouped report comment; in gate mode, requests reviews from every owner
- Auto-upgrades bot PRs (Dependabot, Copilot, Devin, etc.) to gate mode
- Optional AI Review: calls any OpenAI-compatible LLM to catch logical errors, security issues, and missing error handling

### Get started
```yaml
- uses: vivek5071/ripple@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    mode: advisory
```

See the [README](https://github.com/vivek5071/ripple#readme) for full configuration.
