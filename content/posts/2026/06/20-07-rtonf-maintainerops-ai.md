---
title: MaintainerOps AI
date: 2026-06-20 07:09:54 +00:00
tags:
  - rtonf
  - GitHub Actions
draft: false
repo: https://github.com/rtonf/maintainerops-ai
marketplace: https://github.com/marketplace/actions/maintainerops-ai
version: v0.1.7
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rtonf/maintainerops-ai** to version **v0.1.7**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/maintainerops-ai) to find the latest changes.

## What's Changed

# v0.1.7 Release Candidate

Date: 2026-06-18

## Summary

This release candidate publishes the post-`v0.1.6` maintenance fixes that are currently on `main`.

The primary goal is to keep npm, GitHub Marketplace, and the public evidence trail aligned after the Issue #6 false-positive review packet.

## Changes

- Refine offline issue triage so external feedback requests that mention security or release evidence do not receive `security-review` or `release-notes` unless they describe an actionable vulnerability or release task.
- Add a feedback-specific comment draft for external tester requests.
- Extend deterministic evals with forbidden-label checks.
- Update the Issue #6 feedback path and public evidence wording so published channels and source release candidates are clearly separated.
- Record the 2026-06-18 maintenance review, verification, and release alignment status.

## Verification

- `npm run verify`
- `npm audit --audit-level=moderate`
- `npm exec --yes --package maintainerops-ai@latest -- maintainerops --help`
- Secret and local-path pattern check against the public repository tree

## Publication Checklist

- Publish npm `maintainerops-ai@0.1.7` after maintainer OTP confirmation.
- Create GitHub Release `v0.1.7`.
- Publish `v0.1.7` to GitHub Marketplace from the Release UI.
- Refresh Issue #6 after Marketplace displays `v0.1.7` as Latest.

