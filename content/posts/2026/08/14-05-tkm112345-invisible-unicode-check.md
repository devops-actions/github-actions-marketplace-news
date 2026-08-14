---
title: Invisible Unicode Check
date: 2026-08-14 05:59:24 +00:00
tags:
  - tkm112345
  - GitHub Actions
draft: false
repo: https://github.com/tkm112345/invisible-unicode-check
marketplace: https://github.com/marketplace/actions/invisible-unicode-check
version: v1.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Invisible Unicode Check GitHub Action detects invisible Unicode used to smuggle malicious code into source files and blocks the pull request from being merged. It scans commit changes against a specified base commit (defaulting to the base commit of a pull request) and supports excluding specific files or directories from scanning, as well as silencing specific rules for certain paths.
---


Version updated for **https://github.com/tkm112345/invisible-unicode-check** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/invisible-unicode-check) to find the latest changes.

## Action Summary

The Invisible Unicode Check GitHub Action detects invisible Unicode used to smuggle malicious code into source files and blocks the pull request from being merged. It scans commit changes against a specified base commit (defaulting to the base commit of a pull request) and supports excluding specific files or directories from scanning, as well as silencing specific rules for certain paths.

## What's Changed

## New: `ignore-rules`

Disable **specific rules** for **specific paths**, without taking the file out of the scan.

```yaml
- uses: tkm112345/invisible-unicode-check@v1
  with:
    ignore-rules: |
      # Arabic and Hebrew resources legitimately use directional markers
      locales/**:IUC005,IUC010
      # this vendored file mixes Greek symbols into identifiers
      src/vendor/mathjax-shim.js:IUC012
```

`exclude` removes a file from the scan completely. `ignore-rules` keeps every other rule active and silences only the ones named — so a bidi override planted in `locales/ar/app.json` is still caught while `IUC005` is silenced there.

- A glob with no wildcard matches one file exactly, so `src/vendor/thing.js:IUC005` is a per-file switch.
- Rule ids are case insensitive and `#` starts a comment.
- An unknown rule id is reported as a warning instead of being silently accepted: a typo like `IUC0012` will not quietly disable anything.
- Silencing a **critical** rule is allowed, but never silent. The run log states which blocking rule was disabled for which path, and the summary reports how many findings were suppressed:

```
::warning::ignore-rules disables blocking rule(s) IUC001 for 'locales/**'
Scanned 2 file(s): 0 critical, 1 warning(s), 1 suppressed by ignore-rules.
```

33 tests.
