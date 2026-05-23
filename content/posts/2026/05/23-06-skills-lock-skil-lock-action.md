---
title: SkilLock CI
date: 2026-05-23 06:13:38 +00:00
tags:
  - skills-lock
  - GitHub Actions
draft: false
repo: https://github.com/skills-lock/skil-lock-action
marketplace: https://github.com/marketplace/actions/skillock-ci
version: v0.1.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/skills-lock/skil-lock-action** to version **v0.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skillock-ci) to find the latest changes.

## Action Summary

The **skil-lock-action** GitHub Action is a wrapper for the `skil-lock` tool, designed to automatically validate and enforce AI skill behavior policies during CI workflows. It prevents unapproved changes in AI capabilities by analyzing and reporting deltas in shell commands, network URLs, and file operations specified in the repository's configuration files, and can block changes that exceed predefined severity thresholds. Additionally, it supports integration with GitHub Code Scanning to provide detailed security insights.

## What's Changed

## v0.1.2 — PR comment now renders cleanly

Bug-fix release. The Action's PR-comment step now posts the actual capability-delta markdown body instead of a literal file path. SARIF upload (the v0.1.1 feature) is unchanged and was verified live on a real PR ([skills-lock/example-claude-code-skills#1](https://github.com/skills-lock/example-claude-code-skills/pull/1)).

## Upgrade

```yaml
- uses: skills-lock/skil-lock-action@v0.1.2
  with:
    pin-binary: v0.1.1
    sarif: true   # optional; requires security-events: write
```

`pin-binary` stays at `v0.1.1` — the CLI binary itself did not change. Workflows currently using `@v0.1.0` or `@v0.1.1` should bump to `@v0.1.2`.

## Notes

- No breaking changes.
- No new inputs.

## Details (for the curious)

The PR-comment upsert step was passing `gh api -f body=@$BODY`, relying on a `curl`-style file-reference syntax that `gh` CLI does not implement. As a result, comments posted by `v0.1.0` and `v0.1.1` contained the literal string `@/home/runner/work/_temp/skil-lock-pr-comment.md` instead of the markdown body.

Fix: the body file is round-tripped through `jq -Rs '{body: .}'` and piped to `gh api --input -`. `jq` is preinstalled on the only platforms the composite supports.

Test coverage for the PR-comment path is tracked at [#3](https://github.com/skills-lock/skil-lock-action/issues/3).

## Changes

- #2 — fix: PR comment body posted as literal '@/path' instead of file contents

