---
title: Vaara Policy Check
date: 2026-08-22 13:52:52 +00:00
tags:
  - vaaraio
  - GitHub Actions
draft: false
repo: https://github.com/vaaraio/vaara
marketplace: https://github.com/marketplace/actions/vaara-policy-check
version: v1.75.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Vaara is an autonomous action auditing tool designed to provide verifiable receipts for every autonomous action. It helps in automating tasks such as fund transfers, file writing, and calling tools while ensuring that these actions are risk-scored and authorized against predefined policies. Vaara provides features like a CLI, macOS menu-bar app, TypeScript client, and a Python interface to manage and verify autonomous actions.
---


Version updated for **https://github.com/vaaraio/vaara** to version **v1.75.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vaara-policy-check) to find the latest changes.

## Action Summary

Vaara is an autonomous action auditing tool designed to provide verifiable receipts for every autonomous action. It helps in automating tasks such as fund transfers, file writing, and calling tools while ensuring that these actions are risk-scored and authorized against predefined policies. Vaara provides features like a CLI, macOS menu-bar app, TypeScript client, and a Python interface to manage and verify autonomous actions.

## What's Changed

## [1.75.0] - 2026-08-22

### Fixed

- The Vaara Conformance Results terms said the maintainer cannot remove a row because rows are chained. A chain makes a break detectable to someone holding an earlier head. It does not make removal impossible when one operator controls both the file and the published page, who could rewrite the chain and republish it consistently. The claim was wrong, and it sat in the consent form a party agrees through, which is worse than sitting in marketing. Iman Schrock raised it on the SCITT list on 2026-08-21 before filing a row, and he was right to hold it.

  The wording on the page, in `conformance/reproductions.json` and in the issue form now says what a chain gives, and states the residual: a row added after the last witnessing carries only the chain until the next head is published. `terms_version` is bumped to `2026-08-21`; the row already listed keeps the terms it agreed to.

- A Windows clone made the SEP-2828 conformance corpus read as a disagreement with the spec. Git for Windows installs with `core.autocrlf=true`, which rewrites LF to CRLF on checkout. The corpus is pinned byte for byte, so all 32 file digests and the `corpusDigest` fail while no content changes at all. `vaara conformance-statement` called that NON-CONFORMING, and the `conformance_statement_v0` suite reported 0 of 5 scenarios matching, which reads as the implementation contradicting the published corpus. It is a checkout artefact and says nothing about conformance. Emek Can Dogru found it on 2026-08-21, before it reached a row.

  Corpus integrity is now graded as the precondition it is. It asks whether the published byte set is present, not whether an implementation agrees with SEP-2828, so a corpus that does not verify grades `unproved` rather than `false`. It still gates: only `proved` yields CONFORMS, so a corpus that does not verify can never produce a pass. A mismatched file is re-hashed with the line-ending translation undone, which proves whether its content is the published content, and the cause is named instead of printing 32 bare digest mismatches. The `conformance_statement_v0` suite exits 77 (SKIP) with that reason rather than failing, because it cannot compare goldens against a corpus that is not the published one. Only a difference that is provably newlines-only goes quiet; real tampering still fails loudly.

  Statement `schemaVersion` is 3, adding `corpus.lineEndingMismatches` and `corpus.lineEndingsOnly`. The verdict for a byte-exact corpus is unchanged.

- The conformance desk went red on every rejected submission. A rejection leaves the row output empty, and Actions expands a step's `env` block before it applies the step's `if`, so `fromJSON('')` failed the whole workflow template. The submitter still got their comment, which is posted earlier, but the run failed and the steps after it never ran. Emek Can Dogru's issue #612 is the one that surfaced it.

### Added

- Every conformance row now names what kind of run it was. What a run establishes is a property of who wrote the verifier and who wrote the vectors, not of how well it went, and the three kinds are not degrees of one another. A reproduction is the author's checkers over the author's vectors, and establishes that the artefact runs and is byte-stable somewhere other than the author's machine. An independent implementation from the text, run against the author's vectors, establishes something about the text, because a second reader had to decide what the sentences meant. An independent implementation run against independently constructed vectors establishes something about both.

  A row that does not name its kind reads as the first, because that is the weakest claim available. Rows listed before the field existed carry no kind and are never edited to add one, so the page states the rule rather than backfilling them. The row stores a stable key rather than the form's prose, so rewording the dropdown cannot restate what a published row claimed. `terms_version` is bumped to `2026-08-22`; rows already listed keep the terms they agreed to.

  Joel Hillier proposed this on the SCITT list on 2026-08-21, after Iman Schrock scoped his own row that way with nobody asking him to and Emek Can Dogru filed one carrying it. The loss it prevents happens where a result gets filed: a row outlives the message that explains it, and a register that cannot tell a reproduction from an independent implementation gets cited for the second while holding the first, by someone who is not lying.

- A root `.gitattributes`. The byte-pinned corpus and its goldens are checked out verbatim on every platform, and the rest of the tree normalises to LF, so a fresh clone on Windows holds the published bytes.

- `scripts/vcr_publish_head.py` records the current chain head in a public transparency log the maintainer does not operate, so a rewritten chain reaches a head that matches no witnessed entry. It publishes one digest and a signature over it, nothing else, and prints what leaves the machine before it does anything.

- `scripts/vcr_chain.py --check-witness` fetches those entries and confirms each witnessed head is one this file actually reaches. It still imports no Vaara code, so it checks the maintainer as readily as anyone else.

- `scripts/vcr_chain.py` reports `tailPinned` on every run, and `--json` carries it, so nothing downstream can read *verified* as *verified to be complete*. `--expect-count` and `--expect-last-hash` let a reader who retained a head pin the tail, and a mismatch exits the same way a break in the middle does, because a chain that is not the chain you pinned is not the chain you pinned.

  This closes a hole the first version left open. A chain says nothing about rows removed from the end, because what remains is a valid shorter chain, so the checker printed "chain intact" and exited 0 on a file whose rows had all been deleted. Emek Can Dogru described the failure and the fix on the SCITT list on 2026-08-21, from having hit it himself; the shape here is his.

- A term stating what an outside suggestion can change. Wording changes when it is shown to be false, and anyone may show that, including a party that competes with Vaara. A case, an expected verdict or a checker changes only on evidence that the current one is wrong, never on request and never to make a party pass, and every such change is a commit anyone can diff.


