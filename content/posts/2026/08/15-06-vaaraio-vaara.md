---
title: Vaara Policy Check
date: 2026-08-15 06:38:02 +00:00
tags:
  - vaaraio
  - GitHub Actions
draft: false
repo: https://github.com/vaaraio/vaara
marketplace: https://github.com/marketplace/actions/vaara-policy-check
version: v1.67.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of tracking and recording verifiable receipts for autonomous actions across various environments such as Python CLI, macOS applications, and Node.js clients. It ensures that all actions are risk-scored against predefined policies before execution, providing a tamper-evident record that can be verified offline by anyone.
---


Version updated for **https://github.com/vaaraio/vaara** to version **v1.67.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vaara-policy-check) to find the latest changes.

## Action Summary

This GitHub Action automates the process of tracking and recording verifiable receipts for autonomous actions across various environments such as Python CLI, macOS applications, and Node.js clients. It ensures that all actions are risk-scored against predefined policies before execution, providing a tamper-evident record that can be verified offline by anyone.

## What's Changed

## [1.67.1] - 2026-08-14

Everything here was found by opening the pages and looking at them.

### Fixed

- **The dashboard called itself read-only in three places and is not.**
  The startup banner, the command docstring and the `--help` line all said so,
  while `/api/config` writes the `config.json` the gate reads and `/api/policy`
  writes the escalate and deny thresholds. Those thresholds decide whether an
  agent is stopped, so an operator was told the wrong thing about the part that
  matters most. The banner now states that settings and thresholds are writable
  and that writes need the per-run token served only in that page.
- **The theme toggle did nothing.** An explicit light choice removed the
  `data-theme` attribute and fell through to the operating system rule, so
  choosing light on a dark machine changed nothing.
- **The Resin and the dashboard applied the stored theme after first paint**,
  so both rendered in the operating system colourway and then snapped to the
  saved choice when the body script ran. Only the homepage did this correctly.
- **Both pages fetched the wordmark from raw.githubusercontent.com.** That was
  the only third-party request either page made, on a page whose central claim
  is that nothing leaves your tab and that it works with the network off. With
  the network off the mark was the one thing that did not render. The marks now
  ship in `webpage/` and load from the same origin, and
  `tests/test_webpage_assets.py` fails if any `src` on either page ever points
  off-origin again.
- The Resin asked for a receipt file before showing anything, and its wording
  read like an upload on a page that uploads nothing.
- The dashboard wordmark was `min(58vw,300px)` against `min(60vw,440px)` on the
  other two surfaces, so the mark changed size depending on which one you
  opened.

### Added

- **Search the Resin by public key.** Paste a public key and the log returns
  every head published with it. No account and no sign-in, because the key is
  the identity, and the answer comes from the log rather than from us. A pasted
  private key is refused outright with a warning.
- **A log entry renders in the page's own layout** instead of sending the
  reader to the log's raw API response: log index, integrated time, entry type,
  data digest, log id, tree size at inclusion, root hash, inclusion proof path
  length, checkpoint and signed entry timestamp. The raw response stays one
  click away, because that is the authority and this is a render of it.
- **The dashboard reads and writes the policy thresholds** through the same
  validator the pipeline uses, backing the file up first and refusing any edit
  the validator rejects.
- The search moved into its own card at the top of the Resin, favicons, and a
  corner link from the dashboard to the Resin marked as outbound because it is
  the only thing on that page that leaves the machine.

### Changed

- **`Resin` standing alone now reads `Vaara Resin` wherever it stood in for the
  brand**: the homepage call to action, the verify page's section headings and
  opening sentence, and the dashboard's corner link. The sentence explaining
  where the name comes from keeps the common noun.
- The demo receipt states that `agent-decision/v0.1` is Vaara's own open
  proposal on in-toto/attestation#554 rather than a registered in-toto
  predicate. Reading the URL alone, in-toto looked like it had endorsed it.
- `docs/PRIOR_ART.md` carries the v1.67.0 rows, now that the release date is
  public and checkable against GitHub and PyPI.


