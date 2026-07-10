---
title: vibecheck-ai-slop
date: 2026-07-10 22:39:45 +00:00
tags:
  - yuvrajangadsingh
  - GitHub Actions
draft: false
repo: https://github.com/yuvrajangadsingh/vibecheck
marketplace: https://github.com/marketplace/actions/vibecheck-ai-slop
version: v1.12.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/yuvrajangadsingh/vibecheck** to version **v1.12.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibecheck-ai-slop) to find the latest changes.

## What's Changed

CI ergonomics and CLI polish. Everything here makes vibecheck easier to wire into pipelines that are not GitHub Actions, and nicer to read when they are.

**New flags**
- `--fail-on <error|warn|info|never>`: pick the severity that fails the run (default error, same as before)
- `--max-warnings <n>`: fail when warnings exceed a budget
- `--format <pretty|compact|json|quiet|gh>`: `compact` prints one clickable `path:line:col` line per finding; `gh` emits GitHub Actions annotations so you get PR annotations from a plain `run:` step, no marketplace action needed
- `--diff-stdin`: scan any piped unified diff, e.g. `gh pr diff 42 | vibecheck --diff-stdin .`
- `--statistics`: per-rule finding counts (ruff-style), also in JSON output
- `vibecheck rules`: list all 39 rules with severity, category, languages, and fixability (`--json` for machines)

**Output**
- the offending line now shows under each finding
- `N info findings hidden (run with --severity info)` note so the AI-tell tier is discoverable
- `N findings fixable with --fix` hint
- exit codes are now disciplined: 0 clean, 1 findings, 2 usage or runtime error (usage errors no longer collide with findings)
- `-v` works as a version alias; invalid `--severity` values are rejected instead of silently coerced

**Diff parser hardening** (found in an adversarial review of this release)
- CRLF diffs, git-quoted filenames (`\"`), and octal-escaped non-ASCII filenames now parse correctly; all three previously made `--diff`/`--diff-stdin` silently scan nothing
- `--diff-stdin` resolves repo-root-relative diff paths against the scan root, so scanning a subdirectory of a monorepo works

213 tests. Exit-code matrix, gh escaping, and the diff-parser fixes were all verified end to end on the built CLI before release.
