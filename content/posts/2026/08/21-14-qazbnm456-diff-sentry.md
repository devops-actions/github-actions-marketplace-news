---
title: diff-sentry malicious change scan
date: 2026-08-21 14:06:41 +00:00
tags:
  - qazbnm456
  - GitHub Actions
draft: false
repo: https://github.com/qazbnm456/diff-sentry
marketplace: https://github.com/marketplace/actions/diff-sentry-malicious-change-scan
version: v0.4.2
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  diff-sentry is a GitHub Action designed to detect malicious pull requests by analyzing changes as untrusted data and identifying specific attack patterns such as obfuscation, execution, exfiltration, and provenance. It helps catch workflows that could potentially break the build or lead to security vulnerabilities before they are merged.
---


Version updated for **https://github.com/qazbnm456/diff-sentry** to version **v0.4.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/diff-sentry-malicious-change-scan) to find the latest changes.

## Action Summary

diff-sentry is a GitHub Action designed to detect malicious pull requests by analyzing changes as untrusted data and identifying specific attack patterns such as obfuscation, execution, exfiltration, and provenance. It helps catch workflows that could potentially break the build or lead to security vulnerabilities before they are merged.

## What's Changed

Scoping. Every fix here comes from the same root: the scan read a whole change as one string, so rules that need two signals could take them from two unrelated files.

### Fixed

- **The scan is scoped per file.** Most rules fire on a single match, so reading the whole diff as one blob was harmless for them — but two need a PAIR of signals (`pwn-request`: privileged trigger + PR-HEAD checkout; `detached-process-spawn`: detached spawn + `child_process`), and those could pair across files. A `workflow_run:` added to one workflow plus a `ref: ${{ … head.sha }}` sitting in a doc example, a test fixture, or the very workflow a change is *deleting*, composed into a `critical` that no single file contained. `scan_diff` splits a unified diff on its file headers and scans each segment alone; non-diff input falls through to the previous whole-text scan.
- **The host-side baseline is scoped too, via `scan_content`.** An event is not a unified diff — `raw_content` concatenates the title, every `(filename, patch)` and the body with no `diff --git` headers, so pointing the baseline at `scan_diff` would have scoped nothing at all. The false positive this removes is not hypothetical: a PR that adds a `workflow_run` workflow **and documents the trap in the same commit** — what a careful repo writes — came out `critical` when read as one blob, and is now a sub-floor `medium`.

### Added

- **`pwn-request` covers `allow-unsafe-pr-checkout: true`.** actions/checkout v5.1/v6.1/v7 refuse to check out a fork PR head under `pull_request_target` / `workflow_run` unless a workflow opts back in with that input. The opt-in is the same attack stated in words — no ref to trace, no dataflow to infer — so it joins the `ref:` value and the hand-rolled `git fetch` as the rule's third form, with its own title. It only counts under a privileged trigger; a *removed* opt-in does not fire, and neither does an explicit `false`.
- **Hits name the file they came from.** `location` used to be the name of the whole diff for every hit.
- **A hit id is stable between a whole-diff scan and a single-file scan**, so the baseline and an in-loop scan de-duplicate to one union member on read. Whole-blob scanning could not promise that — the snippet window moved with the byte offset.

### Changed

- **`astral-sh/setup-uv` → v10.0.1 and `actions/checkout` → v7**, both for the Node 24 runtime. The setup-uv bump covers `action.yml`, so it reaches every repo running this action, not just this one's CI. checkout v7 also blocks fork-PR checkout under `pull_request_target` / `workflow_run` — the `pwn-request` shape this project detects, now refused by the action itself.
- **`pypa/gh-action-pypi-publish` → v1.14.2**, which carries Twine 7 and accepts the core metadata 2.5 that `uv build` now emits.

