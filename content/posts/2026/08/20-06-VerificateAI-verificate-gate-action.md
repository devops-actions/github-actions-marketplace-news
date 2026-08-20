---
title: Verificate Gate
date: 2026-08-20 06:16:59 +00:00
tags:
  - VerificateAI
  - GitHub Actions
draft: false
repo: https://github.com/VerificateAI/verificate-gate-action
marketplace: https://github.com/marketplace/actions/verificate-gate
version: v1.1.1
dependentsNumber: "8"
actionType: Composite
actionSummary: |
  Verificate Gate is an AI-powered CI gate for GitHub that automatically reviews and checks every pull request for security, reliability, performance efficiency, and maintainability. It detects invented APIs, placeholder code, tests written to pass rather than test, and quality problems in ISO 5055 areas before a human sees the changes. The tool uses GitHub-hosted runners with the `id-token: write` permission to utilize the repository's own free quota, ensuring reliable checks on pull requests without affecting other repositories' quotas.
---


Version updated for **https://github.com/VerificateAI/verificate-gate-action** to version **v1.1.1**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verificate-gate) to find the latest changes.

## Action Summary

Verificate Gate is an AI-powered CI gate for GitHub that automatically reviews and checks every pull request for security, reliability, performance efficiency, and maintainability. It detects invented APIs, placeholder code, tests written to pass rather than test, and quality problems in ISO 5055 areas before a human sees the changes. The tool uses GitHub-hosted runners with the `id-token: write` permission to utilize the repository's own free quota, ensuring reliable checks on pull requests without affecting other repositories' quotas.

## What's Changed

Fixes from a team field test of the action.

**Blocking is now honest.** `fail-on: reject` (the default) exits non-zero on a **REJECTED** verdict, not only on a deterministic veto — so a rejected change actually turns the check red and blocks the merge, matching the docs.

**Org migration cleanup.** The PR-comment footer and README benchmark links now point at `VerificateAI/...` (were stale `Verificate-Dev/...`). Use `uses: VerificateAI/verificate-gate-action@v1`.

**Large PRs no longer silently under-reviewed.** When a PR exceeds `max-files`, the extra files are flagged in the PR comment and a workflow warning, instead of being dropped quietly.

**Docs.** Documented that the gate reviews pull requests (direct pushes to `main` are not gated — protect the branch), corrected the required-check name (`Verificate Gate / verificate-gate`), and made the `max-files` behaviour explicit.

`v1` has been moved to this commit.
