---
title: GitHub-Script (by PSModule)
date: 2026-05-16 21:26:43 +00:00
tags:
  - PSModule
  - GitHub Actions
draft: false
repo: https://github.com/PSModule/GitHub-Script
marketplace: https://github.com/marketplace/actions/github-script-by-psmodule
version: v1.8.0
dependentsNumber: "26"
actionType: Composite
---


Version updated for **https://github.com/PSModule/GitHub-Script** to version **v1.8.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **26** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-script-by-psmodule) to find the latest changes.

## Action Summary

The **GitHub-Script** action allows users to run PowerShell scripts seamlessly within GitHub Actions using the GitHub PowerShell module. It automates tasks such as interacting with the GitHub API or managing repositories by enabling scripts to be executed directly in workflows. Key capabilities include support for inline or file-based scripts, integration with GitHub authentication methods, and options for debugging, verbose output, and API rate limit monitoring.

## What's Changed

# 🚀 [Minor]: GitHub API rate limit details now available in action logs (#89)

GitHub API rate limit consumption is now visible directly in the action logs. When enabled, rate limit details - including remaining quota, limit, used count, and reset time for all resource categories - are displayed before and after the user script runs, making it easy to see exactly how many API calls a workflow step consumed.

- Fixes #88

## New: Rate limit visibility in action logs

A new `ShowRateLimit` input (default: `'false'`) controls whether rate limit information appears in the logs. When set to `'true'`, a **Rate Limits** LogGroup appears inside the Info fence before the user script, and another **Rate Limits** LogGroup appears inside the Outputs fence after it.

```yaml
- uses: PSModule/GitHub-Script@v1
  with:
    ShowRateLimit: 'true'
    Script: |
      Get-GitHubRepository -Owner PSModule -Name GitHub-Script
```

The output includes a formatted table of all resource categories returned by `Get-GitHubRateLimit` (core, search, graphql, etc.), each showing `Limit`, `Used`, `Remaining`, `ResetsAt`, and `ResetsIn`.

When the input is omitted or set to `'false'` (the default), no rate limit output appears.

If `ShowRateLimit` is enabled but `ShowInfo` or `ShowOutput` is off, the corresponding fence still renders with just the rate limit content inside. For auth types that do not support `Get-GitHubRateLimit` (for example GitHub App contexts), a warning is shown instead of failing.

## Technical Details

- Added `ShowRateLimit` input to `action.yml` with `required: false` and `default: 'false'`.
- Added `PSMODULE_GITHUB_SCRIPT_INPUT_ShowRateLimit` environment variable to the composite step.
- Created `src/ratelimit.ps1` as a helper script (no fence borders) that checks the guard and renders a single `Rate Limits` LogGroup.
- `src/ratelimit.ps1` now calls `Get-GitHubRateLimit -ErrorAction Stop` so non-terminating errors are caught reliably in unsupported auth contexts.
- `src/ratelimit.ps1` explicitly selects `Name`, `Limit`, `Used`, `Remaining`, `ResetsAt`, and `ResetsIn` before formatting to keep columns deterministic.
- Modified `src/info.ps1`: adjusted the early-return guard to also consider `ShowRateLimit`, wrapped existing LogGroups in `if ($showInfo)`, and calls `ratelimit.ps1` before the fence close.
- Modified `src/outputs.ps1`: adjusted the early-return guard to also consider `ShowRateLimit`, wrapped existing output LogGroups in `if ($result)`, and calls `ratelimit.ps1` before the fence close.
- The `action.yml` run block remains in the same flow, while `info.ps1` and `outputs.ps1` invoke the helper internally.
- Enabled `ShowRateLimit: true` across all Action-Test scenarios in `.github/workflows/TestWorkflow.yml`, including Basic, WithScript path variants, Commands + Outputs, Matrix Creator, WithoutToken, WithPAT, WithUserFGPAT, WithOrgFGPAT, GitHubAppEnt, GitHubAppOrg + quoted inputs, WithKeyVaultKeyReference, WithKeyVaultKeyReferenceLatest, and PreserveCredentials False.

