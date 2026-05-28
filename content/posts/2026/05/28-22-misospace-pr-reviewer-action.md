---
title: Miso PR Review
date: 2026-05-28 22:58:06 +00:00
tags:
  - misospace
  - GitHub Actions
draft: false
repo: https://github.com/misospace/pr-reviewer-action
marketplace: https://github.com/marketplace/actions/miso-pr-review
version: v1.0.18
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/misospace/pr-reviewer-action** to version **v1.0.18**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miso-pr-review) to find the latest changes.

## Action Summary

The **pr-reviewer-action** is a GitHub Action that automates the review of pull requests using AI models compatible with OpenAI or Anthropic APIs. It analyzes pull requests by gathering metadata, diffs, linked issue contexts, repository history, and custom standards, then generates structured verdicts and review comments. This action streamlines code review workflows, enhances PR evaluations, and optionally publishes reviews directly as comments or approval requests.

## What's Changed

## What's Changed

### Features
* **feat: add configurable model request timeouts** — set `ai_request_timeout` to control model API timeout (#31)
* **feat: add review_comment publish mode and document all three modes** — new `review_comment` mode alongside `managed_comment` and `native_review` (#65)
* **feat: add guarded approval controls for review_verdict mode** — enforce strict approve/request_changes verdicts via the enforcement module (#40)

### Fixes
* **fix: route all enforcement through pr_reviewer.enforcement** — unified verdict enforcement, fixing duplicate logic (#77)
* **fix: honor ai_max_tokens for OpenAI-compatible requests** — respect max tokens setting for non-Anthropic models (#38)
* **fix: strip internal metadata markers from model output** — removes `<!-- ai-pr-review-*:... -->` markers before publishing (#33)
* **fix: include prompt/config/rules hashes in review skip fingerprint** — improves diff-unchanged detection when config changes (#47)
* **fix: handle repos/ prefix in gh_api endpoint parsing** — tool harness now correctly parses `repos/` prefixed endpoints (#61)
* **fix: correct tool harness status path for fail-closed accounting** — proper status tracking when guardrails block commands (#53)
* **fix: decode subprocess output bytes to string before redaction** — prevents encoding errors in evidence provider output (#62)
* **fix: narrow tool_allowed_gh_api_repos to explicit repo** — tighter security for tool harness API access (#86)
* **fix: restore direct planning model call for smoke test compatibility** — ensures smoke tests work with direct planning mode (#45)
* **fix: apply shared secret redaction to evidence provider output** — secrets are now redacted from evidence provider results (#44)
* **fix: escape YAML quotes in new input descriptions** — prevents YAML parsing issues for newly added inputs (#43)
* **fix: align standards file defaults with action.yml and README** — defaults now match documented behavior (#46)
* **fix: use pytest tmp_path fixture properly in test_round_trip** — fixes temp path handling in tests (#67)
* **fix: add clear error messages when native review publishing fails** — better diagnostics for native review errors (#42)

### Refactors
* **refactor: extract SSE, enforcement, and github_context from run_review.sh** — modularizes shell script into standalone Python modules (sse_reassembler.py, enforcement.py, github_context.py) (#68)
* **refactor: extract response_parser from run_review.sh** — separates model response parsing into its own module (response_parser.py) (#64)

### Tests & CI
* **Unify CI: run all 215 Python tests via single pytest discovery** — consolidated test suites into one pytest run (#88)
* **test: add unit tests for sse_reassembler, enforcement, and github_context modules** — full coverage for extracted modules (#76)
* **test: combine evidence providers tests + tool harness enforcement + CI updates** — expanded regression test coverage (#59)
* **test: add fixture coverage for model parsing and SSE reassembly** — improves test reliability (#45)

### Documentation
* **docs: document permissions for native PR review publishing** — clarifies required GITHUB_TOKEN permissions (#70)
* **docs: canonicalize repo namespace and document streaming inputs** — consistent `@mimospace/pr-reviewer-action` references throughout (#72)
* **docs: document reserved metadata marker behavior** — explains `<!-- ai-pr-review-*:... -->` markers (#51)
* **docs: remove remaining joryirving references** — fully migrated to misospace namespace (#73)

### Chores
* **chore: add .gitignore with sane defaults** — includes Python artifacts, node_modules, env files, and more (#84)

**Full Changelog**: https://github.com/misospace/pr-reviewer-action/compare/v1.0.17...v1.0.18

