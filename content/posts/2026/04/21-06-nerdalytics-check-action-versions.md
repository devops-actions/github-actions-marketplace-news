---
title: Check Action Versions
date: 2026-04-21 06:28:31 +00:00
tags:
  - nerdalytics
  - GitHub Actions
draft: false
repo: https://github.com/nerdalytics/check-action-versions
marketplace: https://github.com/marketplace/actions/check-action-versions
version: v1.0.3
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/nerdalytics/check-action-versions** to version **v1.0.3**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/check-action-versions) to find the latest changes.

## Action Summary

The "Check Action Versions" GitHub Action automates the process of auditing and updating actions referenced in workflow files to ensure they use the latest strict-semver releases. It scans workflows, identifies outdated actions, and creates a tracking issue and pull request to update `uses:` references with the latest commit SHAs, ensuring compliance with SHA-pinning requirements. This action simplifies maintaining up-to-date dependencies and enhances workflow security and reliability.

## What's Changed

### Docs

Full README overhaul. No behavior changes.

- **Quickstart** now SHA-pins the action itself, matching the form this action writes for every other entry in consumer workflow files and satisfying any repo or organization enforcing SHA-pinning on `uses:` references.
- **Updating the pin**: new dedicated section explaining how to resolve the commit SHA for the latest release (GitHub UI and `gh` CLI one-liner).
- **GPG setup**: complete caller-side YAML example. Notes that the GPG path is implemented but not yet validated end-to-end in production.
- **Troubleshooting**: headings now match real log output. New entry for the org-policy error (*"Actions must be pinned to a full-length commit SHA"*).
- **Versioning**: simplified to exact semver releases. The floating `v1` tag has been retired; consumers should pin by commit SHA as described in Quickstart.
- Removed the "Security design notes" section (the framing was confusing; the useful content is implicit elsewhere).
- Brand-voice pass throughout: shorter sentences, fewer em dashes, less marketing cadence.

### Consumer impact

For repos already pinned to v1.0.2's SHA: the next scheduled run of this action opens a PR rewriting the pin to v1.0.3's SHA and comment. No manual action needed.

For new consumers: see [Quickstart](https://github.com/nerdalytics/check-action-versions#quickstart) in the new README.
