---
title: Vaara Policy Check
date: 2026-08-20 22:29:53 +00:00
tags:
  - vaaraio
  - GitHub Actions
draft: false
repo: https://github.com/vaaraio/vaara
marketplace: https://github.com/marketplace/actions/vaara-policy-check
version: v1.71.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The action automates the process of verifying and auditing autonomous actions to ensure accountability and transparency. It provides a tamper-evident record that anyone can verify offline, including regulators, auditors, and customers after incidents. The action helps in ensuring that every call to a governed function is risk-scored and decided against the policy before it runs, ensuring the integrity of transactions and decisions.
---


Version updated for **https://github.com/vaaraio/vaara** to version **v1.71.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vaara-policy-check) to find the latest changes.

## Action Summary

The action automates the process of verifying and auditing autonomous actions to ensure accountability and transparency. It provides a tamper-evident record that anyone can verify offline, including regulators, auditors, and customers after incidents. The action helps in ensuring that every call to a governed function is risk-scored and decided against the policy before it runs, ensuring the integrity of transactions and decisions.

## What's Changed

## [1.71.0] - 2026-08-21

### Added

- `vaara.settlement.release`: a release condition holds value against a signed statement of what must be proved before it moves, and a Vaara receipt proving the authorised action happened is what releases it. Everything in the tree until now ran one direction, a payment gating access with the settlement evidence landing inside a receipt, which is the x402 gate and SPEC.md Section 5.2. Here the receipt gates the payment. The module holds no key belonging to a payer, signs no transaction, and reaches no chain or custodian. It answers one question about bytes, a settlement agent acts on the answer, and the verifier sits in the settlement path holding nothing.

- `vaara.release-condition/v0`, a signed, content-addressed, JCS-canonical document carrying what is held, an exact `requires` block, and an inclusive `notAfter`. The signature is Ed25519 over the document with its own `signature` field removed, the same rule the receipt envelope uses, so it adds no cryptography and no dependency. `requires` is matched exactly rather than approximately: the action digest, the grant fingerprint that authorised it, the accepted receipt issuer, and the fingerprint of the one key whose receipts count, taken over the SubjectPublicKeyInfo DER so PEM formatting cannot move it.

- `evaluate(condition, bundle)` returns one of four states, each carrying a reason from a closed set: `released`, `held`, `expired`, `refused`. A verifier that proved nothing must not read as green, and must not read as the same false as a genuine failure. `held` because no receipt has arrived and `refused` because a receipt was tampered with are different facts, and one boolean for both discards the difference between "not yet" and "no". The reason space is partitioned in `REASON_STATE`, as data rather than as control flow, so no code path can file a forgery under a hold. The distinction came out of a SCITT list thread on 2026-08-19.

  The axis is soundness, then sufficiency. A broken condition signature, a receipt under a key the condition does not pin, a broken receipt signature, or evidence that does not resolve to the digest the receipt signed all fail as evidence and refuse. A missing receipt, a receipt for another action, another authorization, another issuer, or one that soundly proves a refusal are sound and insufficient, and hold. Soundness runs before the clock, so an expired window cannot swallow a tampering finding, and the clock runs before sufficiency, so a closed window is reported as the reason the value is not moving.

- `vaara release-check` decides the same question at the command line, taking a presented bundle or the three documents separately. Exit 0 when the value releases and 1 when it does not, because a settlement agent acts on held, expired and refused the same way. The distinction lives in the printed reason. Without `--condition-key` nothing releases and the answer is `refused`, not `held`: a document cannot vouch for the key that signed it, so an unverifiable condition never sits in the same state as one still awaiting proof.

- `tests/vectors/release_condition_v0/`, the 44th conformance suite, with eight cases and a checker that imports no Vaara and recomputes every verdict from the case bytes. All four states appear in the shipped cases, including a receipt that soundly proves the action was blocked, a condition whose window has closed, a receipt tampered one second after signing, and a receipt signed under a key the condition never pinned. The checker also asserts the reason-to-state mapping is a partition covering all four states, because a corpus of only the positive case would still pass with two of them merged into one. SPEC.md Section 5.7 and `docs/conformance-profile.md` carry the profile and the suite count.

- `mint_authorization_receipt` and `mint_for_signer` accept `iat`, pinning the issuer block's issued-at instant instead of taking the wall clock. Production leaves it alone. A vector generator sets it so regenerating a corpus changes only the signature and not the record it signs.

### Fixed

- Rendering the conformance page no longer deletes the badges it does not own. `write_badges` swept the whole badge directory against the reproduction rows, while `badge_drift` exempted the corpus shield and the badges named in `UNMANAGED_BADGES`. The two disagreed, so a render removed the DOI badge the README links to and the `--check` pass then reported the page current, which would have carried a broken image to the site with nothing failing.

- `check_no_private_keys.py --tree` scans tracked files from the working tree instead of reading each one back from `HEAD`. It raised on the first path `git ls-files` reports that `HEAD` does not carry, so the scan died on any newly staged file. CI never hit it, because a fresh checkout has every tracked file at both. Running it by hand before a commit did, which is exactly when it is wanted: a new vector suite carrying a key is the case it exists to catch.

- The 1.69.0 and 1.70.0 entries were in the wrong order, with 1.69.0 above `## [Unreleased]` and 1.70.0 below it. The releases themselves were correct and the tags are unaffected; only the file read out of sequence. `ship-guard` reads the first versioned heading to decide whether a declared version is missing its tag, so the stranded ordering also left it grading 1.69.0 on every turn instead of the newest entry.


