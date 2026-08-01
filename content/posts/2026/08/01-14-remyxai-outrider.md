---
title: Remyx Outrider
date: 2026-08-01 14:06:13 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.45
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action automates the validation and comparison of new methods against existing codebases, helping teams measure changes using metrics already tracked. It provides a fresh runner for each dispatch, eliminates context pollution, and supports multiple model backends for different use cases. The action can be triggered via schedule or manually by specifying paper pins or search terms, supporting both draft PRs and branch-only mode.
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.45**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## Action Summary

This GitHub Action automates the validation and comparison of new methods against existing codebases, helping teams measure changes using metrics already tracked. It provides a fresh runner for each dispatch, eliminates context pollution, and supports multiple model backends for different use cases. The action can be triggered via schedule or manually by specifying paper pins or search terms, supporting both draft PRs and branch-only mode.

## What's Changed

## Self-hosted / on-prem endpoint override

Add ``base-url`` as a ``workflow_dispatch`` input on this repo's own runner and thread it into the composite action's ``model-base-url``. Explicit override wins; otherwise the per-provider default applies.

Same input landing in the CLI-generated customer template (``remyxai outrider init``) in parallel — customers with a self-hosted model behind a litellm proxy, vLLM Anthropic shim, on-prem gateway, or Cloudflare Access can now pass a URL through workflow_dispatch instead of forking the template.

## Compatibility

Composite action, no breaking changes. Pinned callers on ``@v1`` pick this up automatically.
