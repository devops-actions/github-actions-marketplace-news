---
title: GitHub-Script (by PSModule)
date: 2026-07-09 06:54:38 +00:00
tags:
  - PSModule
  - GitHub Actions
draft: false
repo: https://github.com/PSModule/GitHub-Script
marketplace: https://github.com/marketplace/actions/github-script-by-psmodule
version: v1.9.0
dependentsNumber: "28"
actionType: Composite
---


Version updated for **https://github.com/PSModule/GitHub-Script** to version **v1.9.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **28** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-script-by-psmodule) to find the latest changes.

## What's Changed

# 🚀 [Feature]: Version input accepts NuGet version ranges (#98)

The `Version` input now accepts a NuGet version range in addition to an exact version, so a workflow can pin a compatible window (for example `[1.2.0, 2.0.0)`) instead of a single build. Pinning an exact version keeps working exactly as before, and a version that is already installed and satisfies the request is no longer reinstalled on every run.

- Fixes #97

## New: NuGet version ranges for the `Version` input

`Version` accepts the same syntax as [`Install-PSResource`](https://learn.microsoft.com/powershell/module/microsoft.powershell.psresourceget/install-psresource):

| `Version` example | Meaning |
| --- | --- |
| `1.2.3` | Exactly `1.2.3` |
| `[1.2.3]` | Exactly `1.2.3` |
| `[1.2.0, ]` | `1.2.0` or newer |
| `(, 2.0.0)` | Any version lower than `2.0.0` |
| `[1.2.0, 2.0.0)` | `1.2.0` up to but not including `2.0.0` |

A bare version is treated as an *exact* version (not a minimum), so existing pins are unaffected. PSResourceGet resolves a range to the lowest satisfying version.

## Fixed: a satisfying version is reused instead of reinstalled

Previously, supplying anything other than an exact version caused the module to be reinstalled on every run: the already-installed check compared the raw input to installed versions with exact string equality, which never matches a range. The check now honors ranges, so an already-installed version that satisfies the request is reused.

## Technical Details

- `src/init.ps1`: the already-installed lookup now passes the value to `Get-InstalledPSResource -Name $Name -Version $Version` instead of piping to `Where-Object Version -EQ`. The redundant `Where-Object Prerelease -EQ` filter was removed — prerelease handling is governed by the `-Prerelease` switch passed to `Install-PSResource`. The retry loop (5 attempts, 10s delay) around `Install-PSResource` is unchanged.
- `action.yml` / `README.md`: the `Version` input is documented as accepting an exact version or a NuGet version range, with an examples table and a note that a bare version is exact.
- Tests (`.github/workflows/TestWorkflow.yml`): added `Version [Exact]`, `Version [Bounded range]`, `Version [Minimum range]`, and `Version [Already installed]` jobs (Linux; version resolution is OS-independent). Written test-first — the already-installed job failed on the unfixed code (two installed versions) and passes after the fix. Because these jobs use `Prerelease: ${{ inputs.Prerelease }}`, they also exercise the prerelease + range combination when run via `Action-Test-Prerelease.yml`.
- Implementation plan progress: all tasks in #97 are complete.

Backward compatibility: exact-version pins resolve identically; only the unnecessary-reinstall behavior changes.

