---
title: aria-reach — ARIA anti-pattern scan
date: 2026-06-21 14:58:18 +00:00
tags:
  - manichandra
  - GitHub Actions
draft: false
repo: https://github.com/manichandra/aria-reach
marketplace: https://github.com/marketplace/actions/aria-reach-aria-anti-pattern-scan
version: v0.1.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/manichandra/aria-reach** to version **v0.1.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aria-reach-aria-anti-pattern-scan) to find the latest changes.

## What's Changed

# aria-reach v0.1.1 — CI adoption and more precise findings

This release makes aria-reach easier to adopt in continuous integration and reduces false positives in real-world component-library scans.

## What’s new

- **GitHub Action:** run an ARIA anti-pattern scan directly in CI with `uses: manichandra/aria-reach@v0.1.2`. Choose the scan path, JSON output, and whether error-severity findings fail the job.
- **More precise listbox analysis:** projected options and custom option components are no longer reported as missing when static analysis cannot see their rendered semantics.
- **Better option-state guidance:** group labels, empty-state rows, chips, and similar non-selectable elements are excluded from the `option-missing-aria-selected` remediation.
- **Safer decorative-glyph handling:** glyphs inside buttons and links are no longer treated as decorative separators, avoiding advice that could remove a control’s accessible name.
- **Severity refinement:** decorative-separator findings now default to warning severity, reflecting the need for human validation.
- **Browser-extension polish:** complete Chrome extension icon set and updated Manifest V3 metadata.
- **Accurate store metadata:** the extension now describes runtime Classes I–III and labels component-library origins as heuristic DOM-fingerprint matches that require confirmation.
- **Safer repeated scans:** the popup reuses the installed scanner instead of reinjecting it and clears stale highlights and element markers before rescanning.
- **Keyboard accessibility:** class chips, origin chips, and finding cards now expose visible focus states; focused findings highlight their matching page elements.
- **Project metadata and verification:** Zenodo metadata, expanded tests, and scripts for validating ecosystem findings.

The release includes 9 passing automated tests and supports Node.js 18 and later.

```yaml
- uses: manichandra/aria-reach@v0.1.2
  with:
    path: src
```

Full changelog: https://github.com/manichandra/aria-reach/compare/v0.1.0...v0.1.1

