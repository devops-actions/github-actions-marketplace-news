---
title: KindLM Test
date: 2026-06-03 06:51:09 +00:00
tags:
  - petrkindlmann
  - GitHub Actions
draft: false
repo: https://github.com/petrkindlmann/kindlm
marketplace: https://github.com/marketplace/actions/kindlm-test
version: v2.3.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/petrkindlmann/kindlm** to version **v2.3.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kindlm-test) to find the latest changes.

## What's Changed

Aggregate release for the 2.3.2 line. Both packages published to npm at 2.3.2 (`@kindlm/cli`, `@kindlm/core`, and the `kindlm` alias).

Honesty + safety remediation (audit-driven), no breaking changes. See [`@kindlm/cli@2.3.2`](../../releases/tag/%40kindlm%2Fcli%402.3.2) for the full notes.

Highlights: cost gates fail on unknown cost instead of passing at $0; baseline set→compare works end-to-end; PII `enabled:false` honored; judge cost counted; compliance report reframed as a draft with disclaimers; `engines.node>=20`; corrected core dep pin.
