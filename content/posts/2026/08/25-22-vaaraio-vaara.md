---
title: Vaara Policy Check
date: 2026-08-25 22:37:14 +00:00
tags:
  - vaaraio
  - GitHub Actions
draft: false
repo: https://github.com/vaaraio/vaara
marketplace: https://github.com/marketplace/actions/vaara-policy-check
version: v1.77.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  **Vaara Action Summary:**
  Vaara is a GitHub Action designed to automate the creation and verification of verifiable receipts for autonomous actions, ensuring accountability and traceability. It automates the process of generating and verifying receipts for transactions, logs, and events, providing a tamper-evident audit trail that can be used to prove actions and decisions in various contexts such as audits, regulators, or incident handling.
---


Version updated for **https://github.com/vaaraio/vaara** to version **v1.77.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vaara-policy-check) to find the latest changes.

## Action Summary

**Vaara Action Summary:**
Vaara is a GitHub Action designed to automate the creation and verification of verifiable receipts for autonomous actions, ensuring accountability and traceability. It automates the process of generating and verifying receipts for transactions, logs, and events, providing a tamper-evident audit trail that can be used to prove actions and decisions in various contexts such as audits, regulators, or incident handling.

## What's Changed

## [1.77.0] - 2026-08-25

### Added

- A fourth kind of run for the conformance register. Tiago Pinto reproduced a published class digest from the prose describing it, without running the author's verifier and without writing a second implementation, and said on the SCITT list that it fitted none of the three kinds the register offered. He was right.

  `construction_reproduction` sits second, above `reproduction` and below an independent implementation. A reproduction asks whether the artefact runs somewhere other than the author's machine. A construction reproduction asks whether the description was sufficient to derive the published value at all, which is a question about the text and is answerable with no code on either side. Filed as a reproduction it would have recorded a claim about prose as a claim about an artefact, in a row nobody can edit afterwards.

  The unstated-kind rule is untouched. A row with no kind still reads as the weakest, and rows listed before the field existed are still never edited to add one.

### Fixed

- Nothing bound the conformance issue form's dropdown to the register's own table of kinds. A kind added to the table had no way to be chosen, and a reworded option would have parsed as the weakest kind, filing a quieter claim than the submitter picked. Both failed silently, in a row that cannot be edited afterwards. A test now binds the two one to one and in order, and reads the form without PyYAML, which ships in the `yaml` extra, so the guard runs on every job instead of skipping wherever that extra is absent.

- `parse_kind` matched the `reproduction` prefix before anything else, so the fourth kind's wording, which carries that word, would have fallen through to the weakest kind. The construction prefix is now checked first and a test pins the ordering.


