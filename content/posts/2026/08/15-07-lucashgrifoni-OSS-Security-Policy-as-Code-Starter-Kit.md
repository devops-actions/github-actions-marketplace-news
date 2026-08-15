---
title: OSS Security Policy as Code
date: 2026-08-15 07:01:41 +00:00
tags:
  - lucashgrifoni
  - GitHub Actions
draft: false
repo: https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit
marketplace: https://github.com/marketplace/actions/oss-security-policy-as-code
version: v10.0.15
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action evaluates OSS repositories against security policies using a policy library and generates reports in Markdown, JSON, and SARIF formats. It supports evidence files, waivers, and compliance frameworks like SLSA, OSPS, and SSDF. The action helps maintain code quality and ensures adherence to security standards by providing detailed reports on findings and control assessments.
---


Version updated for **https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit** to version **v10.0.15**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-security-policy-as-code) to find the latest changes.

## Action Summary

This GitHub Action evaluates OSS repositories against security policies using a policy library and generates reports in Markdown, JSON, and SARIF formats. It supports evidence files, waivers, and compliance frameworks like SLSA, OSPS, and SSDF. The action helps maintain code quality and ensures adherence to security standards by providing detailed reports on findings and control assessments.

## What's Changed

## OSS Security Policy as Code Starter Kit v10.0.15

One control starts enforcing a contract this kit has published since the day that control was written.

`GL-PIPE-011` reads `.oss-policy-kit/evidence/gitlab-mr-rules.json`. A JSON Schema for that file ships in the wheel, ships in `reports/schema/`, and is the file the control's own remediation message tells you to use. **Nothing loaded it.** Hand-rolled checks stood in its place, and they were more generous than the contract.

---

## Read this first: GL-PIPE-011 verdicts change

| Your `gitlab-mr-rules.json` | Before | Now |
|---|---|---|
| Untouched `scaffold-evidence` output, still containing `REPLACE_ME_…` | **PASS** | `not-evaluated`, naming the placeholders |
| Missing a required field (`schema_version`, `attested_at`, `attested_by`, `project`) | **PASS** | `manual-review-required`, naming the field |
| A `schema_version` other than `gitlab-mr-rules/v1` | **PASS** | `manual-review-required` |
| `min_approvers` that is not a whole number | **PASS** | `manual-review-required` |
| `min_approvers: 0` | *"No … evidence"* | **FAIL**, naming the count |
| Valid, `min_approvers` ≥ 1 | PASS | PASS — unchanged |

**If GL-PIPE-011 stops passing for you, the PASS was not earned.** The schema has always listed those fields as required; the kit simply never checked. The fix is to fill the file in — `oss-policy-kit scaffold-evidence` writes the skeleton, and `collect-evidence --platform gitlab` fills it from the GitLab API.

Nothing that was genuinely proven starts failing: a complete, filled-in file with at least one required approver passes exactly as before.

---

## Fixed

### An untouched template earned a PASS

`scaffold-evidence` writes `gitlab-mr-rules.json` with `min_approvers: 2` as an example value, alongside `attested_by: REPLACE_ME_GITLAB_USER`. The control read the `2` and reported *"MR rule evidence documents min_approvers=2"* — **the template passing on the strength of its own placeholder**, with the unfilled fields sitting right there in the same document.

Placeholder detection is the step that was missing. Every sibling evidence control already ran it.

### Evidence that no approvals are required was reported as no evidence

`min_approvers: 0` says merge requests can be merged without an approval. That is a readable, complete, schema-valid statement that the protection is off — and it fell through to *"No `.oss-policy-kit/evidence/gitlab-mr-rules.json` evidence; MR approval enforcement cannot be verified from a clone."*

The kit hid a real finding behind a sentence denying the file existed, and sent the operator to create a file they had already written. It is a **FAIL** now, quoting the count and pointing at the file.

ADR-045 reserves `manual-review-required` for evidence that cannot be *read*. This reads perfectly. It just says something you would rather it did not.

### A document that ignored the contract still passed

A file with an unrecognised `schema_version`, or missing required fields, or with `min_approvers: 1.5` where the schema says integer — all reported PASS. The control now validates first and reports what failed, pointing at `reports/schema/evidence-gitlab-mr-rules.schema.json`.

---

## Also in this release

**The two shipped copies of every schema are now checked against each other.** One copy lives in the wheel, where controls validate against it; the other lives in `reports/schema/`, where remediation messages send you. They were identical, and nothing kept them that way — tolerable while the packaged copies were decorative, not tolerable now that a control enforces one. A drift would mean the kit rejecting a document the published contract calls valid, with no way for you to tell which copy was wrong. The check is derived from the directories, so a schema added to only one side fails too.

**The kit's own producers were verified against the contract before it was switched on.** A contract that a tool's own output violates is a contract that gets switched back off. Both the `scaffold-evidence` skeleton and the `collect-evidence` payload satisfy the schema, and the collector's shape is now pinned by a test.

---

## Notes

Full gate green: lint, formatting, type checking, **7149 tests**, **100.00% coverage** against a floor of 100.

Four mutations, four caught — including one that edits the schema **file** rather than the code, which is what distinguishes a contract the kit enforces from a document it ships.

