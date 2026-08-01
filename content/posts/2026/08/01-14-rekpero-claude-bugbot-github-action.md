---
title: Claude BugBot
date: 2026-08-01 14:07:46 +00:00
tags:
  - rekpero
  - GitHub Actions
draft: false
repo: https://github.com/rekpero/claude-bugbot-github-action
marketplace: https://github.com/marketplace/actions/claude-bugbot
version: v1.0.14
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of finding bugs in pull requests using Claude Code, a free alternative to Cursor BugBot. It analyzes PR diffs for various issues like logic errors, security vulnerabilities, and null dereferences and posts inline review comments on affected lines directly. The action is available for free with any Claude Pro or Max subscription by generating a setup token.
---


Version updated for **https://github.com/rekpero/claude-bugbot-github-action** to version **v1.0.14**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-bugbot) to find the latest changes.

## Action Summary

This GitHub Action automates the process of finding bugs in pull requests using Claude Code, a free alternative to Cursor BugBot. It analyzes PR diffs for various issues like logic errors, security vulnerabilities, and null dereferences and posts inline review comments on affected lines directly. The action is available for free with any Claude Pro or Max subscription by generating a setup token.

## What's Changed

### Added

- **Multi-lens review pass** — A single scan of a diff only finds the class of bug that scan was looking for. `buildPrompt` now carries a `REVIEW LENSES` block instructing four sequential passes, each hunting a different defect class: (1) a direct scan of the changed lines with no extra context; (2) project rules — read the root `CLAUDE.md`/`AGENTS.md` and any in directories the diff touches, flagging a violation only when the file explicitly calls out that specific thing, with the rule quoted in the description; (3) code comments in and around the modified code, including untouched ones, since a comment often states the invariant or ordering requirement the change breaks; (4) git history, reading `git log`/`git blame` on the modified lines to catch a change that silently undoes an earlier bug fix. Adapted from the multi-agent `/code-review` command, which fans five reviewers out over separate perspectives — BugBot is one CLI invocation producing one JSON answer, so the perspectives become sequential passes.

  > The history lens is guarded: it checks `git rev-parse --is-shallow-repository` first and skips itself on a shallow clone rather than guessing from a single commit. `actions/checkout@v4` defaults to `fetch-depth: 1`, so this lens stays inert unless the user opts in — `example-workflow.yml` now carries a commented-out `fetch-depth: 0` for that.

- **Confidence scoring with an 80-point reporting threshold** — Surviving candidates are now scored 0–100 against an explicit five-point rubric (0 = false positive or pre-existing; 25 = unverifiable; 50 = real but a nitpick; 75 = double-checked and hit in practice; 100 = certain and frequent), and anything below 80 is dropped silently — not downgraded to a lower severity, not mentioned as a minor note, not folded into the summary. This is the `/code-review` command's second-pass scoring filter collapsed into a self-check. Scores stay internal reasoning, so `jsonSchema`, `reformatToJson`, `parseResponse`, and every downstream comment formatter are unchanged.

### Changed

- **`DO NOT report` extended with a false-positive catalog** — Added the exclusions the `/code-review` command enumerates and this prompt previously left implicit: pre-existing issues and real issues on lines the PR didn't modify; anything a linter, typechecker, or compiler catches on its own (with an explicit instruction not to run or reason about build steps, since CI runs them separately); issues deliberately silenced by a lint-ignore or explanatory comment; behaviour changes that are clearly intentional or part of the PR's broader change; and pedantic nitpicks a senior engineer wouldn't raise.

- **`IMPORTANT` lookup scope reconciled with the new lenses** — The instruction read "Only look up what is directly referenced by the changed lines", which directly contradicted the lenses telling Claude to read CLAUDE.md files, surrounding comments, and git history. It now reads "what the changed lines directly reference, plus what the REVIEW LENSES below explicitly call for", leaving the ban on broad codebase scanning intact. Contradictory instructions degrade behaviour on both sides of the contradiction, so this is a correctness fix rather than wording.
