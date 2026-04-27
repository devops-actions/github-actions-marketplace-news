---
title: Manki Review
date: 2026-04-27 06:37:20 +00:00
tags:
  - manki-review
  - GitHub Actions
draft: false
repo: https://github.com/manki-review/manki
marketplace: https://github.com/marketplace/actions/manki-review
version: v4.6.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/manki-review/manki** to version **v4.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/manki-review) to find the latest changes.

## Action Summary

Manki is a self-hosted AI-powered GitHub Action for automated code reviews, designed to adapt to your project's needs and team conventions. It automates the review process by assembling a dynamic team of AI reviewers based on pull request complexity, identifying and classifying issues, filtering noise, and learning from your team's feedback over time. Key features include multi-stage processing, adaptive team sizing, memory for team-specific conventions, conversational commands, and the ability to run securely on your own infrastructure without relying on external SaaS services.

## What's Changed

## Highlights

- **Judge intelligence**: cross-round suppression (ratchet + contradiction detectors), practical reachability check, own-proposal caveat rule, approval ceiling for dismissed suggestions
- **In-PR suppression**: findings matching already-resolved threads or author agree-replies are silently skipped on re-review
- **Severity tier rename** ⚠️ BREAKING: `required`/`suggestion`/`nit` → `blocker`/`warning`/`suggestion`/`nitpick`
- **Verdict behaviour** ⚠️ BREAKING: `suggestion` and `nitpick` findings now produce `APPROVE` rather than `REQUEST_CHANGES`
- **UX**: open-thread references as clickable GitHub links in judge prompt, traffic-light confidence dots (🔴🟠🟡), App-not-installed warning on PR

## Added

- Judge multi-round cross-round suppression: ratchet detector and contradiction detector ([#561](https://github.com/manki-review/manki/pull/561))
- Judge cross-round state infrastructure: fingerprints and author-reply parsing ([#555](https://github.com/manki-review/manki/pull/555))
- Judge practical-reachability check: caps hypothetical findings at `nitpick` ([#553](https://github.com/manki-review/manki/pull/553))
- Judge verdict approval ceiling for dismissed suggestions ([#562](https://github.com/manki-review/manki/pull/562))
- Judge own-proposal caveat rule ([#566](https://github.com/manki-review/manki/pull/566))
- Planner per-round summary for agent budget allocation ([#565](https://github.com/manki-review/manki/pull/565))
- Reviewer factual provenance note for prior-suggestion diff regions ([#594](https://github.com/manki-review/manki/pull/594))
- Open-thread references rendered as clickable GitHub links in judge prompt ([#610](https://github.com/manki-review/manki/pull/610))
- In-PR finding suppression for resolved threads and agree-replies ([#584](https://github.com/manki-review/manki/pull/584))
- Warning banner on PR when the GitHub App is not installed ([#541](https://github.com/manki-review/manki/pull/541))

## Changed (BREAKING)

- Severity tiers renamed: `required`→`blocker`, `nit`→`nitpick`; `suggestion` stays, new `warning` tier added ([#598](https://github.com/manki-review/manki/pull/598)). The `severity` field in `findings_json` and keys in `severity_counts` output use new values. Old values are migrated automatically on read.
- Confidence level now shown as traffic-light dot prefix (🔴 high, 🟠 medium, 🟡 low) instead of `<sub>[high confidence]</sub>` text ([#598](https://github.com/manki-review/manki/pull/598))
- `determineVerdict` only requests changes for `blocker`/`warning`; `suggestion`/`nitpick` produce `APPROVE` ([#604](https://github.com/manki-review/manki/pull/604), [#612](https://github.com/manki-review/manki/pull/612))

## Changed

- Default judge model updated to `claude-opus-4-7` ([#606](https://github.com/manki-review/manki/pull/606))

## Fixed

- Cancel in-progress review run when `@manki review` is re-requested ([#542](https://github.com/manki-review/manki/pull/542))
- Guard all-ignore prior rounds in judge prompt ([#591](https://github.com/manki-review/manki/pull/591))
- Restore review-in-progress tickbox for `@manki review` requests ([#601](https://github.com/manki-review/manki/pull/601))
- `contradictionMatch` now cites the most-recent agreeing round ([#618](https://github.com/manki-review/manki/pull/618))

**Full Changelog**: https://github.com/manki-review/manki/compare/v4.5.3...v4.6.0
