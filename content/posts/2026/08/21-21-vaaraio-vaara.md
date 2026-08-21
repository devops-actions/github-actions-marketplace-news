---
title: Vaara Policy Check
date: 2026-08-21 21:52:38 +00:00
tags:
  - vaaraio
  - GitHub Actions
draft: false
repo: https://github.com/vaaraio/vaara
marketplace: https://github.com/marketplace/actions/vaara-policy-check
version: v1.74.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of logging and verifying autonomous actions in software systems. It provides a verifiable record of every action taken, including its risk score, decision, call, and outcome, which can be checked offline by anyone. The tool ensures that only authorized actions are executed based on predefined policies, maintaining accountability for all transactions in a tamper-evident manner.
---


Version updated for **https://github.com/vaaraio/vaara** to version **v1.74.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vaara-policy-check) to find the latest changes.

## Action Summary

This GitHub Action automates the process of logging and verifying autonomous actions in software systems. It provides a verifiable record of every action taken, including its risk score, decision, call, and outcome, which can be checked offline by anyone. The tool ensures that only authorized actions are executed based on predefined policies, maintaining accountability for all transactions in a tamper-evident manner.

## What's Changed

## [1.74.0] - 2026-08-21

### Added

- Blinded time anchors, methods `rfc3161-blinded` and `rfc3161-eidas-qualified-blinded`. An unblinded anchor sends the timestamping authority exactly the value the receipt then publishes as `anchoredDigest`. An authority keeps a request log, every entry in it sits behind a customer account, and a log that is sold, breached or produced under compulsion lets whoever holds it match its entries against any corpus of published receipts. That reveals which receipts a named customer anchored and when, and no signature has to break for it to work.

  A blinded anchor sends `sha256("vaara/anchor-blind/v1" || salt || anchoredDigest)` instead and carries the 32-byte salt as `anchorSalt`. `anchoredDigest` still names the Section 2.1 signed payload, so the receipt binding does not move and the attested time is untouched.

- `blinded_anchor_digest()` and `new_anchor_salt()` in `vaara.audit.timeanchor`, and a `blind` keyword on `SelfHostedTSA.anchor_receipt` and `QualifiedTSA.anchor_receipt`. `salt` can be pinned so a generator reproduces an anchor byte for byte; production leaves it unset, because two anchors under one salt are linkable to each other.

- `VAARA_ANCHOR_BLIND=1` turns blinding on for the server's qualified anchorer. Off by default, since it changes the anchor's `method` and a consumer pinned to `rfc3161-eidas-qualified` should not start seeing a new one without the operator asking.

- SPEC.md Section 4.1 states the rule and its limit. A verifier must recompute the imprint from `anchoredDigest` and `anchorSalt`, must reject a blinded anchor whose salt is absent or is not 32 bytes of hex, and must reject an unblinded method that carries a salt, because a verifier that ignores the member would read a blinded anchor as a plain one.

  The limit is stated rather than left to be inferred. Blinding stops a party holding only the authority's log from matching that log against receipts it was not given. It does not make the anchor unlinkable to anyone holding the receipt, since the salt travels with the receipt so a holder can verify. It does not hide the fact, timing or volume of anchoring from the authority, which sees each request as it happens.

### Changed

- The receipt evidence page renders `rfc3161-eidas-qualified-blinded` through the same path as `rfc3161-eidas-qualified`. Without that, a blinded qualified anchor dropped to the generic branch and stopped reading as qualified on the page a relying party is shown.


