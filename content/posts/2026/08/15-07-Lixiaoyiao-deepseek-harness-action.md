---
title: DeepSeek Harness for GitHub
date: 2026-08-15 07:03:01 +00:00
tags:
  - Lixiaoyiao
  - GitHub Actions
draft: false
repo: https://github.com/Lixiaoyiao/deepseek-harness-action
marketplace: https://github.com/marketplace/actions/deepseek-harness-for-github
version: v0.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the process of using DeepSeek Harness to review, diagnose, and fix issues in pull requests (PRs) and CI builds. It integrates with GitHub events to trigger coding agents, allowing for real-time feedback and automated code corrections. The action handles PR reviews, re-runs, diagnoses, fixes, and creates new PRs based on comments, providing a seamless integration of DeepSeek Harness into the GitHub workflow.
---


Version updated for **https://github.com/Lixiaoyiao/deepseek-harness-action** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deepseek-harness-for-github) to find the latest changes.

## Action Summary

This GitHub Action automates the process of using DeepSeek Harness to review, diagnose, and fix issues in pull requests (PRs) and CI builds. It integrates with GitHub events to trigger coding agents, allowing for real-time feedback and automated code corrections. The action handles PR reviews, re-runs, diagnoses, fixes, and creates new PRs based on comments, providing a seamless integration of DeepSeek Harness into the GitHub workflow.

## What's Changed

## Highlights

- Controller-owned sticky progress updates context preparation, DSH execution/structured-output validation, and publication or trusted write in one existing comment.
- `result-json` schema v1 is emitted on success, neutral, denied, timeout, validation-failure, and ordinary failure paths, with new backward-compatible scalar outputs.
- Stable, redacted failure codes now identify the phase, retryability, and an actionable next step. Controller validation distinguishes non-zero exits, timeouts, truncation, and setup/container failures.
- The trust model now separates actor authorization, untrusted repository/event input, isolated worker capabilities, and controller-owned GitHub side effects.

## Security and reliability

- Packaged DSH policy profiles resolve relative to the installed JavaScript action, so a caller workspace cannot substitute controller policy files.
- Progress begins only after authorization. The worker still receives neither `GITHUB_TOKEN` nor the DeepSeek API key, and model output never grants capabilities.
- Review publication and trusted writes remain fail closed. Real E2E runs confirmed malformed model output is rejected before GitHub side effects and surfaced through the same sticky comment.

## Compatibility

Existing v0.1.0 inputs, outputs, and v1 sticky markers remain supported. `progress-comment` defaults to `true`; no marker migration is required. The bundled DSH dependency remains pinned to `0.1.0-rc.6`.

For immutable workflow references, use:

```yaml
uses: Lixiaoyiao/deepseek-harness-action@50580590de152abcc3bd81c07b26dd632b76360b # v0.2.0
```

## Validation

- [PR #6](https://github.com/Lixiaoyiao/deepseek-harness-action/pull/6)
- [Final PR CI](https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/31849160466)
- [Merged main CI and Linux Docker smoke](https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/31849602272)
- [Real sticky/review/fix/validation/denied E2E](https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/31846230373)
- [Fail-closed malformed-output E2E](https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/31847649760)

**Full changelog:** https://github.com/Lixiaoyiao/deepseek-harness-action/compare/v0.1.0...v0.2.0
