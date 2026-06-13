---
title: Miso PR Review
date: 2026-06-13 06:46:39 +00:00
tags:
  - misospace
  - GitHub Actions
draft: false
repo: https://github.com/misospace/pr-reviewer-action
marketplace: https://github.com/marketplace/actions/miso-pr-review
version: v1.2.9
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/misospace/pr-reviewer-action** to version **v1.2.9**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miso-pr-review) to find the latest changes.

## What's Changed

Label-driven re-review: the on-demand re-review trigger is now an `ai-review` label, replacing the comment-command apparatus that earlier 1.2.x infrastructure (#232) anticipated. With no labels applied, output is byte-identical to v1.2.8.

## Features

- **Label-driven re-review** (#238, refs #231): adding the `ai-review` label to a PR forces a re-review even when the diff fingerprint is unchanged. Consumer change is one word — add `labeled` to the workflow's `pull_request` types. New **`rereview_label`** input (default `ai-review`); `check_review_needed.sh` reads the `labeled` event from `GITHUB_EVENT_PATH` and forces a review on a match (skipping unrelated labels); the action removes the label after publishing so re-adding it re-triggers. Maintainer-scoped natively (only `write`/`triage` can label) and rides the existing `pull_request` event, so there is no privileged checkout and no untrusted-checkout exposure.
- **`force_review` remains the underlying primitive** — the label path sets it automatically; it can still be driven directly from `workflow_dispatch`/`repository_dispatch`.

## Removed

- **`scripts/parse_review_command.sh`** and its test: the comment-triggered `/ai-review` authorization gate is gone. The label is self-authorizing (GitHub's label permissions are the gate), so the comment-command design — and the two-file relay split it required to stay CodeQL-clean — is no longer needed.

## Docs

- README "Forcing a re-review" now documents the label flow (#237, #238).

1.3.0 stays reserved for native tool calling (#197); 1.4.x for Forgejo (#229).

