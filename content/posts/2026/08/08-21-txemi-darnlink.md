---
title: darnlink — self-healing Markdown links
date: 2026-08-08 21:53:15 +00:00
tags:
  - txemi
  - GitHub Actions
draft: false
repo: https://github.com/txemi/darnlink
marketplace: https://github.com/marketplace/actions/darnlink-self-healing-markdown-links
version: v0.19.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The `darnlink` GitHub Action automates the process of updating Markdown links after reorganization, ensuring they remain valid and self-healing. It automatically replaces stale paths with updated ones based on a file's UUID, thus preventing broken links from occurring due to file movement or renaming. The action supports cross-repo web links for verifying and anchoring links across different repositories.
---


Version updated for **https://github.com/txemi/darnlink** to version **v0.19.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/darnlink-self-healing-markdown-links) to find the latest changes.

## Action Summary

The `darnlink` GitHub Action automates the process of updating Markdown links after reorganization, ensuring they remain valid and self-healing. It automatically replaces stale paths with updated ones based on a file's UUID, thus preventing broken links from occurring due to file movement or renaming. The action supports cross-repo web links for verifying and anchoring links across different repositories.

## What's Changed

### Fixed
- **`web-check`: the text report no longer prints one line per `web_unverifiable` finding.** It lists
  the first `UNVERIFIABLE_PREVIEW` (20) and then a `... and N more` line. `web_unverifiable` is
  informational — it never fails the exit — so on a documentation repo whose Markdown holds a few
  thousand ordinary external links (docs sites, videos, intranet URLs: anything that is not a GitHub
  blob/raw URL) the old report emitted thousands of lines. Two consequences, both fixed: the
  actionable `web_mismatch` / `web_not_found` lines were buried in the noise, and a caller reading
  the output through a pipe could be flooded — in a `pre-push` git hook, whose stdio is a
  non-blocking pipe, the run died with `BlockingIOError: write could not complete without blocking`,
  so a phase that had found **nothing wrong** (`exit 0` when run standalone) blocked every push in
  the repo until `--no-verify` was used. Nothing is silenced (Constitution II): the full total stays
  in the summary line and `--json` still carries every finding. `web_mismatch`, `web_not_found` and
  `web_anchor` are still listed in full — they are actionable and they do fail the exit. Tests in
  `tests/test_weblinks.py`.
