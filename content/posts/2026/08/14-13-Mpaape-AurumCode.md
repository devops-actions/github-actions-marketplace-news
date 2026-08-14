---
title: AurumCode Documentation Generator
date: 2026-08-14 13:51:35 +00:00
tags:
  - Mpaape
  - GitHub Actions
draft: false
repo: https://github.com/Mpaape/AurumCode
marketplace: https://github.com/marketplace/actions/aurumcode-documentation-generator
version: v1.0.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  AurumCode is a multi-language API documentation generator that can be used as a GitHub Action or locally. It scans a source tree, extracts documentation per detected language, and generates Jekyll-ready sites. The main purpose of AurumCode is to help developers generate and review documentation for their projects, with features such as local diff reviews and pull request reviews using LLM-powered security passes.
---


Version updated for **https://github.com/Mpaape/AurumCode** to version **v1.0.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aurumcode-documentation-generator) to find the latest changes.

## Action Summary

AurumCode is a multi-language API documentation generator that can be used as a GitHub Action or locally. It scans a source tree, extracts documentation per detected language, and generates Jekyll-ready sites. The main purpose of AurumCode is to help developers generate and review documentation for their projects, with features such as local diff reviews and pull request reviews using LLM-powered security passes.

## What's Changed

AurumCode reviews pull requests, generates documentation, and publishes it as a site. Three features, nothing else.

## Try it in two minutes, with no API key

The security pass is deterministic: it matches the lines a change **adds** against an embedded rule catalogue and calls no model.

```bash
git clone https://github.com/Mpaape/AurumCode && cd AurumCode
go build -o aurumcode ./cmd/aurumcode
cd /path/to/your/repo
aurumcode review -base HEAD~1 -seguranca
```

Add `-fail-on error` and the command exits 3 when a finding is severity `error` — that is how it blocks a merge in CI.

## In CI

Copy `.github/workflows/examples/code-review.yml` into your repository. It needs no secret for the security pass, and `pull-requests: write` is the only privilege it asks for.

A live demo runs at **[Mpaape/aurumcode-demo](https://github.com/Mpaape/aurumcode-demo)**: [pull request #1](https://github.com/Mpaape/aurumcode-demo/pull/1) opens with three planted vulnerabilities, the action finds all three with file and line, comments, and fails the check — then goes green on the commit that fixes them.

## What it does

**Code review.** Findings carry file, line, severity and the rule that produced them. Secrets are redacted before anything reaches a model. `--limite` caps what a run may spend, `--modelo` selects any OpenAI-compatible endpoint including one served locally, and `--pr` publishes findings as inline comments with a commit status that blocks the merge.

**Documentation.** Go, Rust and C# are parsed natively — no external toolchain to install.

**Pages.** A copyable workflow builds the site and deploys it.

## What it does not do yet, stated plainly

- Three of the eight security rules carry a matcher today: `sql-injection`, `command-injection` and `hardcoded-secret`. The command announces its own coverage on every run rather than implying it applied all eight.
- The review is scoped to the diff. A defect that already existed in the base branch is not reported, which surprises people testing it for the first time.
- Configuration lives in flags and environment variables; rules and prompts are embedded and not yet overridable from a file in your repository.

## Verifying this release

`v1` is the major-version alias example workflows reference; `v1.0.1` is the immutable tag it currently points at. If your policy requires immutable pins, use the commit SHA `v1` resolves to.

