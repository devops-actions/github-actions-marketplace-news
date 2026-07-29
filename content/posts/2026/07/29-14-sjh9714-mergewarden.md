---
title: MergeWarden for AI PRs
date: 2026-07-29 14:57:36 +00:00
tags:
  - sjh9714
  - GitHub Actions
draft: false
repo: https://github.com/sjh9714/mergewarden
marketplace: https://github.com/marketplace/actions/mergewarden-for-ai-prs
version: v0.8.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  MergeWarden automates change control for AI-generated pull requests, ensuring they stay within predefined scopes and do not modify critical files or introduce risky behaviors. It checks PRs against boundaries defined by the repository owner, identifies permission escalations, unpinned supply-chain references, and suspicious package scripts, providing clear evidence for each decision. MergeWarden gates its own pull requests in a live demonstration.
---


Version updated for **https://github.com/sjh9714/mergewarden** to version **v0.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mergewarden-for-ai-prs) to find the latest changes.

## Action Summary

MergeWarden automates change control for AI-generated pull requests, ensuring they stay within predefined scopes and do not modify critical files or introduce risky behaviors. It checks PRs against boundaries defined by the repository owner, identifies permission escalations, unpinned supply-chain references, and suspicious package scripts, providing clear evidence for each decision. MergeWarden gates its own pull requests in a live demonstration.

## What's Changed

**GitHub's own review guidance opens with a red flag we covered least. This closes it.**

> Any change that weakens CI is a blocker. Full stop. […] Confirm workflow still runs on forks and pull requests.
> — [Agent pull requests are everywhere. Here's how to review them](https://github.blog/ai-and-ml/generative-ai/agent-pull-requests-are-everywhere-heres-how-to-review-them/)

We checked workflow **permissions** exhaustively and workflow **coverage** not at all. A pull request that removed `pull_request` from a workflow silently disabled the check that would have gated it, and we said nothing.

## `workflow/trigger-removed`

Compares the `on:` block at the base commit against the head and names every event that stopped firing, reading all three shapes Actions accepts:

> `.github/workflows/ci.yml` no longer triggers on pull_request; this workflow no longer runs on pull requests, **including the one removing it**.

It found a real case in our own fixture zoo on the first run — the composite fixture switches a release workflow from `push` to `issue_comment`, and we were reporting the dangerous *addition* while missing the safe *removal*.

Defaults to `warn`. GitHub says blocker, but that is aimed at a human judging one case; consolidating workflows and retiring a `schedule` are ordinary. Set `github_actions.checks.trigger_removed: error` to enforce it.

## New: GitHub's five red flags, mapped

[`docs/github-review-guidance.md`](https://github.com/sjh9714/mergewarden/blob/main/docs/github-review-guidance.md) maps each red flag to whether it is decidable from the pull request, which rule covers it, and the rate we measured across 2,204 agent PRs.

| Red flag | Decidable? | Measured |
|---|---|---|
| CI gaming | Partly | — |
| Code reuse blindness | **No** | — |
| Hallucinated correctness | **No** | — |
| Agentic ghosting | Partly | 0 of 2,204 declared a scope |
| Untrusted input in workflows | **Yes** | 12.9% escalated, 17.5% unpinned |

**Two of the five are not mechanically decidable, and the page says so** — along with the three CI-gaming checks that are decidable and still unimplemented. GitHub's post gives no frequency data for four of its five flags; this supplies it where we measured it.

## Breaking

No API breaks. A new check is on by default at `warn`, so workflows that drop a trigger now produce a `needs-review` in the default mode. `github_actions.checks.trigger_removed: off` disables it.

Published from signed tag `v0.8.0` (`verified=true`) with npm provenance.
