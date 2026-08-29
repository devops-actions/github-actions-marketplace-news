---
title: UnityInFlow Spec Compliance
date: 2026-08-29 21:53:12 +00:00
tags:
  - UnityInFlow
  - GitHub Actions
draft: false
repo: https://github.com/UnityInFlow/spec-ci-plugin
marketplace: https://github.com/marketplace/actions/unityinflow-spec-compliance
version: v1.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  The spec-ci-plugin GitHub Action ensures that pull requests adhere to specified guidelines, automating tasks like validating specs, checking for security vulnerabilities, ensuring scope compliance, and verifying acceptance criteria. It posts a structured report as a PR comment when the checks are passed or fails them if there are issues. The action requires a GitHub token and specifies input parameters such as the spec file path and how to handle errors.
---


Version updated for **https://github.com/UnityInFlow/spec-ci-plugin** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unityinflow-spec-compliance) to find the latest changes.

## Action Summary

The spec-ci-plugin GitHub Action ensures that pull requests adhere to specified guidelines, automating tasks like validating specs, checking for security vulnerabilities, ensuring scope compliance, and verifying acceptance criteria. It posts a structured report as a PR comment when the checks are passed or fails them if there are issues. The action requires a GitHub token and specifies input parameters such as the spec file path and how to handle errors.

## What's Changed

Patch release whose purpose is to **move the `v1` tag** onto the injection-scanner `v0.1.0` default.

## What changed

Only the default value of the `injection-scanner-version` input: `v0.0.3` → `v0.1.0`. No input,
output, or behaviour of this Action changed.

## Why it matters

The scanner this Action runs got substantially better, and `@v1` consumers were not getting it.

| | injection-scanner v0.0.3 | injection-scanner v0.1.0 |
|---|---|---|
| Measured detection recall | **10/60** | **56/60** |

Four of the five attack categories were rewritten from lists of literal phrases into
verb × modifier × object matrices. Before, a paraphrased payload walked straight past — which made
this Action's PR gate substantially weaker than it looked. Recall is measured against a corpus
written from the threat model rather than derived from the scanner's own patterns, and is pinned
by tests upstream.

## Upgrading

Nothing to do if you pin `@v1` — this release moves that tag for you.

If you pin an immutable tag, move to `@v1.1.1`. If you pin `injection-scanner-version` explicitly,
set it to `v0.1.0` to pick up the detection work.

See [injection-scanner v0.1.0](https://github.com/UnityInFlow/injection-scanner/releases/tag/v0.1.0).
